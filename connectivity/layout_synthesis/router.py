from typing import List, Tuple
from xmlrpc.client import Boolean
from networkx.algorithms.shortest_paths.generic import shortest_path
import copy
import re
import networkx as nx
import random
from numpy.linalg import norm
from numpy import matrix
import sys

from backend import Backend
from vertex import GateDAGVertex, MeasureDAGVertex, DAGVertexType, DAGVertex
from circuit import Circuit
from node import Node

class Router:
    """Takes care of performing the routing for a quantum circuit having a specific NISQ device as the target of the 
    routing process.
        
    Note:    
        Routing means, starting from an initial mapping, dynamically modify this mapping(adding swap operations) in 
        order to satisfy all the connectivity contraints imposed by the target NISQ device.

        The quantum circuit in input is considered placed(the qubit ids are node ids) and the initial mapping used for 
        the placement must be passed in order to compute the final mapping. 

    Args:
        backend (Backend): the NISQ device target of the routing process(and previously target of the placement 
                           process).        
        
    Attributes:
        backend (Backend): the NISQ device target of the routing process(and previously target of the placement 
                           process).
        
    """

    def __init__(self, backend:Backend) -> None:

        # Initialize attributes:
        self.backend = backend 

        # Private variables:
        self._currMapping = [] # Stores the current mapping from logical qubits ids(the index of the list) to nodes(the
                               # values inside the list) for the quantum circuit under routing.

    def checkCircuitSatisfiesConnectivity(self, circuit) -> bool:
        """Checks that the quantum circuit satisfies all the connectivity contraints of the backend.

        Args:
            circuit (Circuit): the quantum circuit to check for respecting the connectivity contraints.
        
        Returns:
            bool: True if all the connectivity contraints are satisfied, False otherwise.
            
        """

        # TODO Check that there are no multi-qubit interactions
    
        for dagVertex in circuit.dag.nodes():
            if(dagVertex.type is DAGVertexType.Gate): # For all the quantum gates in the circuit:
                # Skip all the single-qubit gates:
                if(dagVertex.isSingleQubitGate==True):
                    continue
                
                # For all the two-qubit gates of the quantum circuit:             
                if(not self.checkGateSatisfiesConnectivity(dagVertex)):
                    return False 

        return True

    def checkGateSatisfiesConnectivity(self, gateDAGVertex) -> bool:
        """Checks that a two-qubit quantum gate vertex satisfies all the connectivity contraints of the backend.

        Args:
            gateDAGVertex (GateDAGVertex): the quantum gate to check for respecting the connectivity contraints.
        
        Returns:
            bool: True if the quantum gate vertex satisfies all the connectivity contraints(and thus also if it is a 
                  single-qubit gate), 
                  False if it is the connectivity contraints are not satisfied.
 
        """

        # Check if the quantum gate is a single-qubit gate:
        if(gateDAGVertex.isSingleQubitGate==True):
            return True

        # Extract the interacting nodes:
        controlNode = self.backend.nodes[gateDAGVertex.controlQubitId]
        targetNode = self.backend.nodes[gateDAGVertex.targetQubitId]

        # Compute the distance(shortest path length) in the backend coupling graph between the two interacting nodes:
        dist = self.backend.getDistance(controlNode, targetNode)
        
        if(dist != 1):
            return False # If the distance is different than 1, the two interacting nodes are not connected in the 
                         # backend coupling graph.

        return True # If the distance is 1, the two interacting nodes are connected in the backend coupling graph.

    def routeHardwareAwareRouting(self, circuit, initialMapping, heuristic="basic", lookaheadDepth=0.0, \
                                lookaheadWeight=0.0, swapNumberWeight=1.0, swapErrorWeight=0.0, swapTimeWeight=0.0,
                                technology="S", isRZvirtual=False) -> Tuple[Circuit, List[Node]]:
        """Paper-compliant implementation of the "Hardware-Aware Heuristic algorithm" adapted to work with both 
        Superconducting and NMR NISQ target devices.

        Note:
            Original paper: https://arxiv.org/abs/2010.03397

            The input quantum circuit is not modified during the routing process.

            During the routing all the Measures are added to the output(routed) quantum circuit DAG.

            The algorithm is suited for routing quantum circuits for Superconducting and NMR NISQ devices.

        Args:
            circuit (Circuit): the quantum circuit target of the routing step.
            initialMapping (List[Node]): the initial mapping from logical qubits to nodes used during the palcement.
            heuristic (str): the heuristic cost function to use to estimate the cost of a swap gate.
                             "basic": the basic heuristic cost function described in the paper.
                             "lookahead": the complete heuristic cost function described in the paper.
                             default: the basic heuristic is used.
            lookaheadDepth (int): the number of layers to use for the lookahead layer.
            lookaheadWeight (int): the weight parameter specifying the impact of the lookahead layer in the "lookahead"
                                   heuristic cost function.
            swapNumberWeight (float): the coefficient to be multiplied to the S matrix in the D matrix computation.
            swapErrorWeight (float): the coefficient to be multiplied to the E matrix in the D matrix computation.
            swapTimeWeight (float): the coefficient to be multiplied to the T matrix in the D matrix computation.
            technology (str): specifies the target technology. It changes how the distance D matrix is computed during 
                              the preprocessing.
                              "S"(default) for superconducting technology, "M" for NMR technology, "Q" for quantum
                              dot and "I" for ion trap.
            isRZvirtual (bool): True if the RZ gates are implemented virtually, False otherwise. It is used only for
                NMR and quantum dot technologies.
        
        Returns:
            Tuple[Circuit, List[Node]]: the first element is the routed quantum circuit, the second one is the final 
                                        mapping.
        
        """

        print("[Router]: starting the routing step using the Hardware-Aware algorithm.")

        # Check that the quantum circuit DAG does not contain any Measure(they will be added at the end of the routing):
        for dagVertex in circuit.dag.nodes():
            if(dagVertex.type is DAGVertexType.Measure):
                print("[Router]: error! the quantum circuit DAG must not contain any Measure since they will be \
                       added automatically after the routing step. Nothing was modified.")
                return None

        # Check if the device is fully-connected:
        if( self.backend.isFullyConnected() ):
            print("[Router]: Warning! The target NISQ device has a fully-connected topology! No modifications will "\
                     "be performed by the algorithm.")

        # The current mapping is equal to the initial mapping used during the placement:
        self._currMapping = initialMapping
  
        # Create a new quantum circuit that will be the routed one:
        routedCircuit = Circuit(nq=self.backend.n_nodes, nc=circuit.nc) 
        routedCircuit.meas = list(circuit.meas) # Insert the Measures lines in the routed circuit.
        # Create a copy of the placed quantum circuit to avoid modifying the original one:
        placedCircuit = copy.deepcopy(circuit) 

        # Pre-processing phase(S, E, T, D matrices computation):
        S, E, T, D = _computeDistanceMatricesHardwareAwareRouting(self.backend, swapNumberWeight, swapErrorWeight, 
                                                                  swapTimeWeight, technology, isRZvirtual)
        
        # My interpretation of the Hardware-Aware Heuristic algorithm:
        
        # While there are vertices in the placed circuit to be added to the routed one:
        while( len(placedCircuit.dag.nodes())>0 ):

            # Extract the layer 1 from the placed circuit:
            layer1 = placedCircuit.extractLayer1()

            exploredMapping = [] # Used to avoid adding a swap "going back" during the swap candidates computation.

            # While there is at least one vertex in layer 1 to be added to the routed one:
            while( len(layer1)>0 ):

                # Add all the single-qubit quantum gates of layer 1 to the routed circuit:
                for vertex in (vertex for vertex in list(layer1) if vertex.type is DAGVertexType.Gate 
                               and vertex.isSingleQubitGate):  # The iteration is done on a copy of layer 1 to be able
                                                               # to modify the list while iterating trough its copy.
                    routedCircuit.appendVertex(vertex)
                    # Remove the vertex from layer1 since it was added to the routed circuit:
                    layer1.remove(vertex)
                    exploredMapping = [] # Every time that a gate is routed, clear the explored mappings.

                # Add all the two-qubit quantum gates of layer 1 that satisfy the connectivity constraints of the 
                # backend:
                for vertex in (vertex for vertex in list(layer1) if vertex.type is DAGVertexType.Gate 
                               and not vertex.isSingleQubitGate): # The iteration is done on a copy of layer 1 to be 
                                                                  # able to modify it while iterating.
                    
                    if( self.checkGateSatisfiesConnectivity(vertex) ): # If the two-qubit gate satisfies the 
                                                                       # connectivity constraints of the backend:
                        routedCircuit.appendVertex(vertex)
                        # Remove the vertex from layer1 since it was added to the routed circuit:
                        layer1.remove(vertex)
                        exploredMapping = [] # Every time that a gate is routed, clear the explored mappings.

                # If there are still vertices in layer 1 it means that there is at least one two-qubit gate that does
                # not satisfy the connectivity contraints of the backend. For this reason a Swap gate must be added to
                # the routed circuit:
                if( len(layer1)>0 ):

                    # Compute the best swap gate that can be added to the routed circuit:
                    bestSWAP = self._getBestSwapHardwareAwareRouting(placedCircuit, layer1, D, heuristic, 
                                                                     lookaheadDepth, lookaheadWeight, exploredMapping)

                    # Choose if it is better to insert the best Swap gate or a Bridge gate(if possible):
                    insertBridge, newExecutableGate = self._isBetterBridgeHardwareAwareRouting(placedCircuit, layer1, S, 
                                                                                            D, lookaheadDepth, bestSWAP)
                                
                    if(insertBridge):
                        # Insert the Bridge gate that allows the execution of the 'newExecutableGate' without changing
                        # the current mapping:
                        self.Bridge(routedCircuit, layer1, newExecutableGate)
                    else:

                        exploredMapping.append( self._mappingToString(self._currMapping) )
                        # Add the best Swap gate to the routed quantum circuit:
                        self.Swap(placedCircuit, routedCircuit, layer1, bestSWAP)

        # Add the Measure vertices to the quantum circuit:
        #self._addMeasuresToRoutedCircuitDAG(routedCircuit)

        print("[Router]: the quantum circuit was correctly routed!")

        # Print the final mapping:
        print("[Router]: final mapping:")
        for node in self._currMapping:
            print( "logical qubit " + str(self._currMapping.index(node)) + " mapped to node " + str(node.id) )

        return (routedCircuit, self._currMapping)

    def _getBestSwapHardwareAwareRouting(self, placedCircuit, layer1, D, heuristic="basic", lookaheadDepth=0.0, 
                                         lookaheadWeight=0.0, exploredMappings=[]) -> Tuple[Node, Node]:
        """Used for finding the best candidate swap in the Hardware-Aware Heiristic algorithm.

        Args:
            placedCircuit (Circuit): the placed circuit from which the routed one is being generated.
            layer1 (List[DAGVertex]): current layer1 extracted from the placed circuit.
            D (numpy.matrix): the final distance matrix.
            heuristic (str): the heuristic cost function to use to estimate the cost of a swap gate.
                             "basic": the basic heuristic cost function described in the paper.
                             "lookahead": the complete heuristic cost function described in the paper.
                             default: the basic heuristic is used.
            lookaheadDepth (int): the number of layers to use for the lookahead layer.
            lookaheadWeight (int): the weight parameter specifying the impact of the lookahead layer in the "lookahead"
                                   heuristic cost function.

        Returns:
            Tuple[Node, Node]: the best swap is returned as a 'Tuple' containing the two 'Node' instances to be swapped.

        """

        # Compute the SWAP_candidate_list, that is, the list of all the Swaps associated with a node in 
        # layer 1:
        SWAP_candidate_list = [] # Each Swap is stored as a 'Tuple[Node, Node]'.
        for vertex in (vertex for vertex in layer1 if vertex.type is DAGVertexType.Gate 
                        and not vertex.isSingleQubitGate): # For all the two-qubit gates of layer 1:

            # Extract the nodes of the two-qubit gate:
            controlNode = self.backend.nodes[vertex.controlQubitId] # The id is the id of a node.
            targetNode = self.backend.nodes[vertex.targetQubitId] # This id is the id of a node.

            # For all the Swaps associated to the control or target node, if the Swap is stil not a 
            # candidate, add it as a candidate:
            swapsAssociated = self.backend.couplingGraph.edges([controlNode, targetNode])
            for swap in swapsAssociated:
                newMappingStr = self._mappingToString( self._getNewMapping(swap) )
                if( (not swap in SWAP_candidate_list) and (not newMappingStr in exploredMappings ) ):
                    SWAP_candidate_list.append(swap)

        # Assign a score to each candidate Swap:
        SWAP_score = []
        for swap in SWAP_candidate_list:
            if(heuristic=="lookahead"): # Using the "lookahead" heuristic cost function:
                
                # Get the relabeled layer 1 supposing that the current Swap is applied:
                relabeledLayer1 = [] # Contains all the relabeled vertices of layer 1
                for vertex in layer1:
                    relabeledVertex = self._relabelVertex(vertex, swap, False)
                    relabeledLayer1.append(relabeledVertex)
                
                # Compute the total sum of all the distances between nodes involved in a two-qubit gate in
                # the relabeled layer 1: 
                sumLayer1 = 0
                for vertex in relabeledLayer1:
                    node1 = self.backend.nodes[vertex.controlQubitId]
                    node2 = self.backend.nodes[vertex.targetQubitId]
                    sumLayer1 = sumLayer1 + D[node1.id][node2.id]
                
                # Get the relabeled lookaheadLayer supposing that the current Swap is applied:
                relabeledLookaheadLayer = [] # Contains all the relabeled vertices of the lookahead layer.
                for vertex in (vertex for vertex in placedCircuit.dag.nodes() if 
                                vertex.type is DAGVertexType.Gate  and not vertex.isSingleQubitGate and 
                                vertex.layer <= lookaheadDepth):
                    relabeledVertex = self._relabelVertex(vertex, swap, False)
                    relabeledLookaheadLayer.append(relabeledVertex)
                
                # Compute the total sum of all the distances between nodes involved in a two-qubit gate in
                # the relabeled lookahead layer: 
                sumLookaheadLayer = 0
                for vertex in relabeledLookaheadLayer:
                    node1 = self.backend.nodes[vertex.controlQubitId]
                    node2 = self.backend.nodes[vertex.targetQubitId]
                    sumLookaheadLayer = sumLookaheadLayer + D[node1.id][node2.id]

                # Compute the score for the current Swap:
                H = (1/len(relabeledLayer1)) * sumLayer1
                if( len(relabeledLookaheadLayer)>0 ):
                    H = H + (1/len(relabeledLookaheadLayer)) * lookaheadWeight * sumLookaheadLayer

                # Add the score of the current Swap to the score list:
                SWAP_score.append(H)

            else: # Using the "basic" heuristic cost function:

                # Get the relabeled layer 1 supposing that the current Swap is applied:
                relabeledLayer1 = [] # Contains all the relabeled vertices of layer 1
                for vertex in layer1:
                    relabeledVertex = self._relabelVertex(vertex, swap, False)
                    relabeledLayer1.append(relabeledVertex)

                # Compute the score for the current Swap:
                H = 0 # The cost of the current Swap.
                for vertex in relabeledLayer1: 
                    node1 = self.backend.nodes[vertex.controlQubitId]
                    node2 = self.backend.nodes[vertex.targetQubitId]
                    H = H + D[node1.id][node2.id]

                # Add the score of the current Swap to the score list:
                SWAP_score.append(H)
        
        # Pick the best candidate Swaps, that is, the ones that have the minimum score:
        minimumScore = min(SWAP_score)
        bestSWAPs = []
        for swap in SWAP_candidate_list:
            if(SWAP_score[SWAP_candidate_list.index(swap)] == minimumScore):
                bestSWAPs.append(swap)

        # If there are multiple candidate Swaps with the same minimum score, pick one randomly:
        bestSWAP = random.choice(bestSWAPs)

        return bestSWAP
    
    def _getNewMapping(self, swap):
    
        newMapping = list(self._currMapping)

        if( (not swap[0] in newMapping) and (swap[1] in newMapping) ):
            node2Index = newMapping.index(swap[1])
            newMapping[node2Index] = self.backend.nodes[swap[0].id]

        elif( (not swap[1] in newMapping) and (swap[0] in newMapping) ):
            node1Index = newMapping.index(swap[0])
            newMapping[node1Index] = self.backend.nodes[swap[1].id]

        elif( (swap[0] in newMapping) and (swap[1] in newMapping) ):
            node1Index = newMapping.index(swap[0])
            node2Index = newMapping.index(swap[1])
            newMapping[node1Index], newMapping[node2Index] = newMapping[node2Index], newMapping[node1Index]

        return newMapping

    def _mappingToString(self, mapping):

        s = ""

        for n in mapping:
            s = s + str(n.id) + ","

        return s

    def _isBetterBridgeHardwareAwareRouting(self, placedCircuit, layer1, S, D, lookaheadDepth, bestSWAP) \
                                                                                       -> Tuple[Boolean, GateDAGVertex]:
        """Used for computing if it is better to use a Bridge gate for implementing a CX gate instead of adding
        a Swap gate, for the Hardware-Aware Heiristic algorithm.

        Note:
            A bridge gate can only substitute a CX gate.

        Args:
            placedCircuit (Circuit): the placed circuit from which the routed one is being generated.
            layer1 (List[DAGVertex]): current layer1 extracted from the placed circuit.
            S (numpy.matrix): the S matrix used for the D distance matrix computation.
            D (numpy.matrix): the final distance matrix.
            lookaheadDepth (int): the number of layers to use for the lookahead layer.
            bestSWAP (Tuple[Node, Node]): the best swap is a 'Tuple' containing the two 'Node' instances to be swapped. 

         Returns:
            Tuple[Boolean, GateDAGVertex]: the first element is specifying if it is more convenient to insert a Bridge
                                           gate rather than the best Swap, the second element is the two-qubit gate to
                                           add in the routed circuit as a Bridge gate.   

        """

        # Find all the two-qubit gates in layer 1 that became executable by adding the best Swap to the routed circuit:
        newExecutableGates = []
        for vertex in layer1: # In layer1 there can be only two-qubit gates at this point.
            # Get the relabeled vertex, supposing that the best Swap gate is applied to the circuit:
            relabeledVertex = self._relabelVertex(vertex, bestSWAP, False)

            # Check if the relabeled vertex is now executable:
            if( self.checkGateSatisfiesConnectivity(relabeledVertex) ):
                # Add the non-relabeled vertex:
                newExecutableGates.append(vertex)
        
        # A Bridge gate can be optimal only if there is only one newly executable gate(after the best Swap is applied):
        newExecutableGate = None
        if( len(newExecutableGates)==1 ):
            newExecutableGate = newExecutableGates[0]

        # Choose if it is better to insert the best Swap gate or a Bridge gate(if possible):
        insertBridge = False # If True, insert a Bridge gate instead of a Swap gate.
        if(not newExecutableGate is None and newExecutableGate.gateName.lower()=="cx"): 
                                                         # If there is only one gate in layer 1 that becames executable,
                                                         # and that gate is a CX gate:
            controlNode = self.backend.nodes[newExecutableGate.controlQubitId]
            targetNode = self.backend.nodes[newExecutableGate.targetQubitId]

            if( S[controlNode.id][targetNode.id] == 2 ): # If the distance between the interacting nodes is 2:
                
                # Get lookaheadLayer and the relabeled lookaheadLayer supposing that the best Swap is 
                # applied:
                lookaheadLayer = [] # Contains all the vertices of the lookahead layer.
                relabeledLookaheadLayer = [] # Contains all the relabeled vertices of the lookahead layer.
                for vertex in (vertex for vertex in placedCircuit.dag.nodes() if 
                                vertex.type is DAGVertexType.Gate  and not vertex.isSingleQubitGate and 
                                vertex.layer <= lookaheadDepth):
                    relabeledVertex = self._relabelVertex(vertex, bestSWAP, False)
                    relabeledLookaheadLayer.append(relabeledVertex)
                    lookaheadLayer.append(vertex)

                # Compute the effect of adding the best Swap gate to the routed quantum circuit:
                effect = 0
                for vertex, relabeledVertex in zip(lookaheadLayer, relabeledLookaheadLayer):
                    controlNode = self.backend.nodes[vertex.controlQubitId]
                    targetNode = self.backend.nodes[vertex.targetQubitId]

                    relabeledControlNode = self.backend.nodes[relabeledVertex.controlQubitId]
                    relabeledTargetNode = self.backend.nodes[relabeledVertex.targetQubitId]

                    effect = effect + D[controlNode.id][targetNode.id] - \
                                        D[relabeledControlNode.id][relabeledTargetNode.id]

                if(effect < 0):
                    insertBridge = True

        return (insertBridge, newExecutableGate)

    def routeHardwareAwareRoutingSmart(self, circuit, initialMapping, lookaheadDepth=0.0, lookaheadWeight=0.0, \
                                          swapNumberWeight=1.0, swapErrorWeight=0.0, swapTimeWeight=0.0, 
                                          isRZvirtual=False) -> Tuple[Circuit, List[Node]]:
        """Revisitation of the "Hardware-Aware Heuristic algorithm" to make it work in a smart way for 
        fully-connected quantum technologies. 

        Note:
            Original paper of the "Hardware-Aware Heuristic algorithm": https://arxiv.org/abs/2010.03397

            The input quantum circuit is not modified during the routing process.

            During the routing all the Measures are added to the output(routed) quantum circuit DAG.

            The algorithm is suited only for routing quantum circuits for technologies with a fully-connected
            topology. The algorithms stops its execution if the device is not fully-connected.
        
        Args:
            circuit (Circuit): the quantum circuit target of the routing step.
            initialMapping (List[Node]): the initial mapping from logical qubits to nodes used during the palcement.
            lookaheadDepth (int): the number of layers to use for the lookahead layer.
            lookaheadWeight (int): the weight parameter specifying the impact of the lookahead layer in the "lookahead"
                                   heuristic cost function.
            swapNumberWeight (float): the coefficient to be multiplied to the S matrix in the D matrix computation.
            swapErrorWeight (float): the coefficient to be multiplied to the E matrix in the D matrix computation.
            swapTimeWeight (float): the coefficient to be multiplied to the T matrix in the D matrix computation.
            isRZvirtual (bool): True if the RZ gates are implemented virtually, False otherwise. It is used only for
                NMR and quantum dot technologies.
        
        Returns:
            Tuple[Circuit, List[Node]]: the first element is the routed quantum circuit, the second one is the 
                                        final mapping.
        
        """

        print("[Router]: starting the routing step using the Hardware-Aware Smart algorithm.")

        # Check that the quantum circuit DAG does not contain any Measure(they will be added at the end of the routing):
        for dagVertex in circuit.dag.nodes():
            if(dagVertex.type is DAGVertexType.Measure):
                print("[Router]: error! the quantum circuit DAG must not contain any Measure since they will be \
                       added automatically after the routing step. Nothing was modified.")
                return None

        # Check that the device is fully-connected:
        if( not self.backend.isFullyConnected() ):
            sys.exit("[Router]: Error! The target NISQ device has not a fully-connected topology! No operation "\
                     "performed.")

        # The current mapping is equal to the initial mapping used during the placement:
        self._currMapping = initialMapping
  
        # Create a new quantum circuit that will be the routed one:
        routedCircuit = Circuit(nq=self.backend.n_nodes, nc=circuit.nc) 
        routedCircuit.meas = list(circuit.meas) # Insert the Measures lines in the routed circuit.
        # Create a copy of the placed quantum circuit to avoid modifying the original one:
        placedCircuit = copy.deepcopy(circuit) 

        # Pre-processing phase(S, E, T, D matrices computation):
        S, E, T, D = _computeDistanceMatricesHardwareAwareRouting(self.backend, swapNumberWeight, swapErrorWeight, 
                                                                  swapTimeWeight, self.backend.technology, isRZvirtual)
        
        # Routing algorithm:
        
        # While there are vertices in the placed circuit to be added to the routed one:
        while( len(placedCircuit.dag.nodes())>0 ):

            print("[Router]: remaining gates: {0}".format(len(placedCircuit.dag.nodes())))

            # Extract the layer 1 from the placed circuit:
            layer1 = placedCircuit.extractLayer1()

            exploredMapping = [] # Used to avoid adding a swap "going back" during the swap candidates computation.

            # While there is at least one vertex in layer 1 to be added to the routed one:
            while( len(layer1)>0 ):

                # Add all the single-qubit quantum gates of layer 1 to the routed circuit:
                for vertex in (vertex for vertex in list(layer1) if vertex.type is DAGVertexType.Gate 
                               and vertex.isSingleQubitGate):  # The iteration is done on a copy of layer 1 to be able
                                                               # to modify the list while iterating trough its copy.
                    routedCircuit.appendVertex(vertex)
                    # Remove the vertex from layer1 since it was added to the routed circuit:
                    layer1.remove(vertex)
                    exploredMapping = [] # Every time that a gate is routed, clear the explored mappings.

                # For all the two-qubit quantum gates of layer 1:
                for vertex in (vertex for vertex in list(layer1) if vertex.type is DAGVertexType.Gate 
                               and not vertex.isSingleQubitGate): # The iteration is done on a copy of layer 1 to be 
                                                                  # able to modify it while iterating.
                    
                    # Check if it is more convenient to add the best Swap gate or it is better to just add the current 
                    # two-qubit gate:
                    
                    currVertex = vertex

                    # Compute the best swap gate that can be added to the routed circuit:
                    bestSWAP = self._getBestSwapHardwareAwareRouting(placedCircuit, layer1, D, "lookahead", 
                                                                     lookaheadDepth, lookaheadWeight, exploredMapping)

                    # Check if it is more convenient to insert the best SWAP or to just insert the current two-qubit
                    # gate into the routed circuit:  
                    if(self.backend.technology=="M" or self.backend.technology=="Q"):
                        swapGateTime = self.backend.getSwapGateTime(bestSWAP[0], bestSWAP[1], isRZvirtual)
                    else: # For superconducting and ion trap backends:
                        swapGateTime = self.backend.getSwapGateTime(bestSWAP[0], bestSWAP[1])

                    # Compute the current total gate time for the two-qubit gates in layer1 and in the lookahead layer:
                    currTotalGateTime = 0.0
                    for vertex in (vertex for vertex in layer1 if vertex.type is DAGVertexType.Gate  and 
                                   not vertex.isSingleQubitGate):
                            
                        controlNode = self.backend.nodes[vertex.controlQubitId]
                        targetNode = self.backend.nodes[vertex.targetQubitId]
                        if(vertex.gateName.lower()=="cx"):
                            if(self.backend.technology=="M" or self.backend.technology=="Q"):
                                currTotalGateTime += self.backend.getCXGateTime(controlNode, targetNode, isRZvirtual)
                            else: # For superconducting and ion trap backends:
                                currTotalGateTime += self.backend.getCXGateTime(controlNode, targetNode)
                        elif(vertex.gateName.lower()=="cz"): 
                            if(self.backend.technology=="S"): 
                                # For superconducting devices the CZ gate time is approximated to the CX gate time:
                                currTotalGateTime += self.backend.getCXGateTime(controlNode, targetNode)
                            else: # For NMR, quantum dot and ion trap:
                                currTotalGateTime += self.backend.getCZGateTime(controlNode, targetNode, isRZvirtual)
                        else: # For all the other two-qubits gates:
                            if(self.backend.technology=="S" or self.backend.technology=="I"):
                                # For superconducting and ion trap devices, all the non CX or CZ gate times are 
                                # approximated to the CX gate time:
                                currTotalGateTime += self.backend.getCXGateTime(controlNode, targetNode)
                            else: 
                                # For NMR and quantum dot devices, all the non CX or CZ gate times are 
                                # approximated to the CZ gate time:
                                currTotalGateTime += self.backend.getCZGateTime(controlNode, targetNode, isRZvirtual)

                    for vertex in (vertex for vertex in placedCircuit.dag.nodes() if vertex.type is DAGVertexType.Gate  
                                   and not vertex.isSingleQubitGate and vertex.layer <= lookaheadDepth):
                        
                        controlNode = self.backend.nodes[vertex.controlQubitId]
                        targetNode = self.backend.nodes[vertex.targetQubitId]
                        if(vertex.gateName.lower()=="cx"):
                            if(self.backend.technology=="M" or self.backend.technology=="Q"):
                                currTotalGateTime += self.backend.getCXGateTime(controlNode, targetNode, isRZvirtual)
                            else: # For superconducting and ion trap backends:
                                currTotalGateTime += self.backend.getCXGateTime(controlNode, targetNode)
                        elif(vertex.gateName.lower()=="cz"): 
                            if(self.backend.technology=="S"): 
                                # For superconducting devices the CZ gate time is approximated to the CX gate time:
                                currTotalGateTime += self.backend.getCXGateTime(controlNode, targetNode)
                            else: # For NMR, quantum dot and ion trap:
                                currTotalGateTime += self.backend.getCZGateTime(controlNode, targetNode, isRZvirtual)
                        else: # For all the other two-qubits gates:
                            if(self.backend.technology=="S" or self.backend.technology=="I"):
                                # For superconducting and ion trap devices, all the non CX or CZ gate times are 
                                # approximated to the CX gate time:
                                currTotalGateTime += self.backend.getCXGateTime(controlNode, targetNode)
                            else: 
                                # For NMR and quantum dot devices, all the non CX or CZ gate times are 
                                # approximated to the CZ gate time:
                                currTotalGateTime += self.backend.getCZGateTime(controlNode, targetNode, isRZvirtual)

                    # Compute the total gate time for the two-qubit gates in layer1 and in the lookahead layer supopsing
                    # that the best SWAP is applied:
                    suppSwapTotalGateTime = swapGateTime # The supposing swap gate time starts from the best swap gate
                                                         # gate time to consider the overhead of adding the best swap.
                    for vertex in (vertex for vertex in layer1 if vertex.type is DAGVertexType.Gate  and 
                                   not vertex.isSingleQubitGate):

                        relabeledVertex = self._relabelVertex(vertex, bestSWAP, False)
                        controlNode = self.backend.nodes[relabeledVertex.controlQubitId]
                        targetNode = self.backend.nodes[relabeledVertex.targetQubitId]
                        if(relabeledVertex.gateName.lower()=="cx"):
                            if(self.backend.technology=="M" or self.backend.technology=="Q"):
                                suppSwapTotalGateTime += self.backend.getCXGateTime(controlNode, targetNode, isRZvirtual)
                            else: # For superconducting and ion trap backends:
                                suppSwapTotalGateTime += self.backend.getCXGateTime(controlNode, targetNode)
                        elif(vertex.gateName.lower()=="cz"): 
                            if(self.backend.technology=="S"): 
                                # For superconducting devices the CZ gate time is approximated to the CX gate time:
                                suppSwapTotalGateTime += self.backend.getCXGateTime(controlNode, targetNode)
                            else: # For NMR, quantum dot and ion trap:
                                suppSwapTotalGateTime += self.backend.getCZGateTime(controlNode, targetNode, isRZvirtual)
                        else: # For all the other two-qubits gates:
                            if(self.backend.technology=="S" or self.backend.technology=="CX"):
                                # For superconducting and ion trap devices, all the non CX or CZ gate times are 
                                # approximated to the CX gate time:
                                suppSwapTotalGateTime += self.backend.getCXGateTime(controlNode, targetNode)
                            else: 
                                # For NMR and quantum dot devices, all the non CX or CZ gate times are 
                                # approximated to the CZ gate time:
                                suppSwapTotalGateTime += self.backend.getCZGateTime(controlNode, targetNode, isRZvirtual)

                    for vertex in (vertex for vertex in placedCircuit.dag.nodes() if vertex.type is DAGVertexType.Gate  
                                   and not vertex.isSingleQubitGate and vertex.layer <= lookaheadDepth):
                        
                        relabeledVertex = self._relabelVertex(vertex, bestSWAP, False)
                        controlNode = self.backend.nodes[relabeledVertex.controlQubitId]
                        targetNode = self.backend.nodes[relabeledVertex.targetQubitId]
                        if(relabeledVertex.gateName.lower()=="cx"):
                            if(self.backend.technology=="M" or self.backend.technology=="Q"):
                                suppSwapTotalGateTime += self.backend.getCXGateTime(controlNode, targetNode, isRZvirtual)
                            else: # For superconducting and ion trap backends:
                                suppSwapTotalGateTime += self.backend.getCXGateTime(controlNode, targetNode)
                        elif(vertex.gateName.lower()=="cz"): 
                            if(self.backend.technology=="S"): 
                                # For superconducting devices the CZ gate time is approximated to the CX gate time:
                                suppSwapTotalGateTime += self.backend.getCXGateTime(controlNode, targetNode)
                            else: # For NMR, quantum dot and ion trap:
                                suppSwapTotalGateTime += self.backend.getCZGateTime(controlNode, targetNode, isRZvirtual)
                        else: # For all the other two-qubits gates:
                            if(self.backend.technology=="S" or self.backend.technology=="CX"):
                                # For superconducting and ion trap devices, all the non CX or CZ gate times are 
                                # approximated to the CX gate time:
                                suppSwapTotalGateTime += self.backend.getCXGateTime(controlNode, targetNode)
                            else: 
                                # For NMR and quantum dot devices, all the non CX or CZ gate times are 
                                # approximated to the CZ gate time:
                                suppSwapTotalGateTime += self.backend.getCZGateTime(controlNode, targetNode, isRZvirtual)
                    
                    # Check:
                    if(suppSwapTotalGateTime < currTotalGateTime):
                        self.Swap(placedCircuit, routedCircuit, layer1, bestSWAP)
                        print("[Router]: swap gate added.")
                        exploredMapping.append( self._mappingToString(self._currMapping) )
                    else:
                        routedCircuit.appendVertex(currVertex)
                        # Remove the vertex from layer1 since it was added to the routed circuit:
                        layer1.remove(currVertex)

        # Add the Measure vertices to the quantum circuit:
        #self._addMeasuresToRoutedCircuitDAG(routedCircuit)

        print("[Router]: the quantum circuit was correctly routed!")

        # Print the final mapping:
        print("[Router]: final mapping:")
        for node in self._currMapping:
            print( "logical qubit " + str(self._currMapping.index(node)) + " mapped to node " + str(node.id) )

        return (routedCircuit, self._currMapping)

    def routeBasicRouting(self, circuit, initialMapping) -> Tuple[Circuit, List[Node]]:
        """Create a new quantum circuit that respects all the connectivity contraints of the target backend.
        The routing strategy adopted is inspired by the "BasicMapping" strategy of the Qiskit compiler.

        Note:
            The input quantum circuit is not modified during the routing process.

            During the routing all the Measures are added to the quantum circuit DAG.

            This algorithm works without modifications for NMR, and Superconducting technologies.

        Args:
            circuit (Circuit): the quantum circuit to be routed.
            initialMapping (List[Node]): the initial mapping from logical qubits to nodes.
    
        Returns:
            Tuple[Circuit, List[Node]]: the first element is the routed quantum circuit, the second one is the 
                                        final mapping.
        
        """

        print("[Router]: starting the routing step using the BasicRouting algorithm.")

        # Check that the quantum circuit DAG does not contain any Measure(they will be added at the end of the routing):
        for dagVertex in circuit.dag.nodes():
            if(dagVertex.type is DAGVertexType.Measure):
                print("[Router]: error! the quantum circuit DAG must not contain any Measure since they will be \
                       added automatically after the routing step. Nothing was modified.")
                return None

        # Check if the device is fully-connected:
        if( self.backend.isFullyConnected() ):
            print("[Router]: Warning! The target NISQ device has a fully-connected topology! No modifications will "\
                     "be performed by the algorithm.")

        # The current mapping is equal to the initial mapping used during the placement:
        self._currMapping = initialMapping
  
        # Create a new quantum circuit that will be the routed one:
        routedCircuit = Circuit(nq=self.backend.n_nodes, nc=circuit.nc) 
        routedCircuit.meas = list(circuit.meas) # Insert the Measures lines in the routed circuit.
        # Create a copy of the placed quantum circuit to avoid modifying the original one:
        placedCircuit = copy.deepcopy(circuit) 

        # While there are vertices in the placed circuit to be added to the routed one:
        while( len(placedCircuit.dag.nodes())>0 ):

            # Extract the layer 1 from the placed circuit:
            layer1 = placedCircuit.extractLayer1()

            # Add all the single-qubit quantum gates of layer 1 to the routed circuit:
            for vertex in (vertex for vertex in list(layer1) if vertex.type is DAGVertexType.Gate 
                            and vertex.isSingleQubitGate):  # The iteration is done on a copy of layer 1 to be able
                                                            # to modify the list while iterating trough its copy.
                routedCircuit.appendVertex(vertex)
                # Remove the vertex from layer1 since it was added to the routed circuit:
                layer1.remove(vertex)

            # Add all the two-qubit quantum gates of layer 1 that satisfy the connectivity constraints of the 
            # backend:
            for vertex in (vertex for vertex in list(layer1) if vertex.type is DAGVertexType.Gate 
                            and not vertex.isSingleQubitGate): # The iteration is done on a copy of layer 1 to be 
                                                                # able to modify it while iterating.
                
                if( self.checkGateSatisfiesConnectivity(vertex) ): # If the two-qubit gate satisfies the 
                                                                    # connectivity constraints of the backend:
                    routedCircuit.appendVertex(vertex)
                    # Remove the vertex from layer1 since it was added to the routed circuit:
                    layer1.remove(vertex)

            # All the remaining gates in layer1 are two-qubit gates that do not satisfy the connectivity constraints:
            while( len(layer1)>0 ): 

                # Get one two-qubit gate from layer1:
                currVertex = layer1[0] 
                                        
                # Get the node instances of the interacting qubits:
                nodeA = self.backend.nodes[ currVertex.controlQubitId ]
                nodeB = self.backend.nodes[ currVertex.targetQubitId ]

                # Nodes are swapped from nodeA to nodeB following the shortest path between them in the backend 
                # coupling graph computed with the dijkstra algorithm:
                shortestPath = shortest_path(self.backend.couplingGraph, nodeA, nodeB, method="dijkstra")

                # Create a list of swaps to be inserted into the quantum circuit before the two-qubit quantum 
                # gate in order to satisfy the connectivity contraints:
                listSwaps = [] # List of Tuple[int, int]. Each Tuple specidfies the ids of the nodes to be
                                # swapped.
                for i in range(1, len(shortestPath)-1, 1):
                    node1ID = shortestPath[i-1].id
                    node2ID = shortestPath[i].id
                    listSwaps.append( (self.backend.nodes[node1ID], self.backend.nodes[node2ID]) )

                for swap in listSwaps: # For each Swap in the list:
                    self.Swap(placedCircuit, routedCircuit, layer1, swap)

                # Add the quantum gate to the routed quantum circuit:
                routedCircuit.appendVertex(currVertex)

                # Remove the quantum gate from layer1 since it was added to the routed circuit:
                layer1.remove(currVertex)

        # Add the Measure vertices to the quantum circuit:
        #self._addMeasuresToRoutedCircuitDAG(routedCircuit)

        print("[Router]: the quantum circuit was correctly routed!")

        # Print the final mapping:
        print("[Router]: final mapping:")
        for node in self._currMapping:
            print( "logical qubit " + str(self._currMapping.index(node)) + " mapped to node " + str(node.id) )
        
        return (routedCircuit, self._currMapping)

    def _relabelVertex(self, vertex, swap, modify) -> DAGVertex:
        """Relabel a vertex after applying a specific Swap.

        Args:
            vertex (DAGVertex): the vertex to relabel according to the swap.
            swap (Tuple[Node, Node]): a Tuple specifing the nodes to be swapped.
            modify (bool): if True the input vertex is relabeled and modified, otherwise the input vertex is not
                           modified and only a copy of the relabeld one is returned.

        Returns:
            DAGVertex: the relabeled vertex according to the swap. If 'modify' is True it may be ignored.
        
        """

        if(modify): # If the input vertex must be modified:
            relabeledDAGVertex = vertex
        else: # If the input vertex must not be modified:
            relabeledDAGVertex = copy.deepcopy(vertex)

        if(relabeledDAGVertex.type is DAGVertexType.Gate): # If the vertex is a quantum gate:
            if(relabeledDAGVertex.controlQubitId==swap[0].id):
                relabeledDAGVertex.controlQubitId=swap[1].id
            elif(relabeledDAGVertex.controlQubitId==swap[1].id):
                relabeledDAGVertex.controlQubitId=swap[0].id
            if(relabeledDAGVertex.targetQubitId==swap[0].id):
                relabeledDAGVertex.targetQubitId=swap[1].id
            elif(relabeledDAGVertex.targetQubitId==swap[1].id):
                relabeledDAGVertex.targetQubitId=swap[0].id
        elif(relabeledDAGVertex.type is DAGVertexType.Measure): # If the vertex is a Measure:
            if(relabeledDAGVertex.qubitId==swap[0].id):
                relabeledDAGVertex.qubitId=swap[1].id
            elif(relabeledDAGVertex.qubitId==swap[1].id):
                relabeledDAGVertex.qubitId=swap[0].id

        return relabeledDAGVertex

    def Swap(self, placedCircuit, routedCircuit, layer1, swap) -> None:
        """Appends a Swap gate to the routed quantum circuit. The placed circuit, the routed circuit, the layer 1 and 
        the current mapping are updated according to the newly inserted swap gate.

        Note:
            Modifies the 'placedCircuit', 'routedCircuit', 'layer1' and '_curMapping'.

            Used by all the routing algorithms to insert a Swap gate.

        Args:
            placedCircuit (Circuit): the placed circuit from which the routed one is being generated.
            routedCircuit (Circuit): the routed circuit output of the routing step on which the Swap gate is added.
            layer1 (List[DAGVertex]): the last layer 1 extracted from the placed circuit.
            swap (Tuple[Node, Node]): a Tuple specifing the nodes to be swapped.
        
        """

        # Relabel each vertex in the quantum circuit according to the Swap gate to be inserted:
        for vertex in placedCircuit.dag.nodes():
            self._relabelVertex(vertex, swap, True)

        # Also the vertices in the extracted layer 1 bust be relabeled according to the added Swap:
        for vertex in layer1:
            self._relabelVertex(vertex, swap, True)
        
        # Add the Swap gate to the circuit:
        routedCircuit.appendVertex( GateDAGVertex("swap", False, swap[0].id, swap[1].id) )

        # Update the current logical qubits -> nodes mapping according to the added Swap:
        if( (not swap[0] in self._currMapping) and (swap[1] in self._currMapping) ):
            node2Index = self._currMapping.index(swap[1])
            self._currMapping[node2Index] = self.backend.nodes[swap[0].id]

        elif( (not swap[1] in self._currMapping) and (swap[0] in self._currMapping) ):
            node1Index = self._currMapping.index(swap[0])
            self._currMapping[node1Index] = self.backend.nodes[swap[1].id]

        elif( (swap[0] in self._currMapping) and (swap[1] in self._currMapping) ):
            node1Index = self._currMapping.index(swap[0])
            node2Index = self._currMapping.index(swap[1])
            self._currMapping[node1Index], self._currMapping[node2Index] = \
                self._currMapping[node2Index], self._currMapping[node1Index]

        # Relabel the Measure lines of the routed circuit according to the Swap:
        for line in list(routedCircuit.meas): # For each Measure line of the quantum circuit:
            
            # Extract the Measure operation inforamtion:
            result = re.match("measure\s+([a-zA-Z0-9_]+)\[(\d+)\]\s*->\s*([a-zA-Z0-9_]+)\[(\d+)\]\s*;", line)
            if(result):
                             
                currNodeId = int( result.group(2) ) 
                newNodeId = currNodeId

                if(currNodeId==swap[0].id):
                    newNodeId = swap[1].id
                elif(currNodeId==swap[1].id):
                    newNodeId = swap[0].id

                # Relabel the Measure line:
                routedCircuit.meas[routedCircuit.meas.index(line)] = \
                     re.sub(r"(measure\s+[a-zA-Z0-9_]+\[)\d+(\]\s*->\s*([a-zA-Z0-9_]+)\[(\d+)\]\s*;)", r"\g<1>{0}\g<2>"\
                                                                                               .format(newNodeId), line)

    def Bridge(self, routedCircuit, layer1, CXGate) -> None:
        """Inserts a Bridge gate to replace a CX quantum gate.
        A Bridge gate allows a CX between two nodes at distance 2 in the coupling graph(so not allowed to interact) 
        without the modifying the current mapping

        Note:
            Modifies the 'routedCircuit' and 'layer1'.

            Does not check that the control and target nodes of the CX quantum gate have exactly distance 2 in the
            coupling graph of the backend(must be done before calling the method).

        Args:
            routedCircuit (Circuit): the routed circuit output of the routing step on which the Bridge gate is added.
            CXGate (GateDAGVertex): the CX quantum gate that is replaced with a Bridge gate.

        """

        # Get the control and target node:
        controlNode = self.backend.nodes[ CXGate.controlQubitId ]
        targetNode = self.backend.nodes[ CXGate.targetQubitId ]

        # Find the shortest path between control and target node in the backend coupling graph using the Dijkstra
        # algorithm(this is the path that has distance equal to 2):
        shortestPath = shortest_path(self.backend.couplingGraph, controlNode, targetNode, method="dijkstra")

        # Get the common neighbor node to the control and target ones(since their distance is equal to two, they must
        # have a common neighbor):
        neighborNode = shortestPath[1]

        # Append the four CX implementing the Bridge gate to the routed quantum circuit:
        routedCircuit.appendVertex( GateDAGVertex("cx", False, neighborNode.id, targetNode.id) )
        routedCircuit.appendVertex( GateDAGVertex("cx", False, controlNode.id, neighborNode.id) )
        routedCircuit.appendVertex( GateDAGVertex("cx", False, neighborNode.id, targetNode.id) )
        routedCircuit.appendVertex( GateDAGVertex("cx", False, controlNode.id, neighborNode.id) )

        # Remove the CX gate from layer1 since now it has been added to the routed circuit:
        layer1.remove(CXGate)

    def _addMeasuresToRoutedCircuitDAG(self, routedCircuit) -> None:
        """Adds the Measure lines of the routed circuit inside its DAG.

        Note:
            Modifies the 'routedCircuit'.

        Args:
            routedCircuit (Circuit): the routed circuit output of the routing step on which the Measures are added.

        """

        # Add the Measure vertices to the quantum circuit:
        for line in routedCircuit.meas:
            # Extract the Measure operation inforamtion:
            result = re.match("measure\s+([a-zA-Z0-9_]+)\[(\d+)\]\s*->\s*([a-zA-Z0-9_]+)\[(\d+)\]\s*;", line)
            if(result):
                             
                nodeId = int( result.group(2) ) 
                clbitId = int( result.group(4) )
                
                # Add the Measure vertex to the quantum circuit:
                measureDAGVertex = MeasureDAGVertex(nodeId, clbitId)
                routedCircuit.appendVertex(measureDAGVertex)

def _computeDistanceMatricesHardwareAwareRouting(backend, swapNumberWeight=1.0, swapErrorWeight=0.0, 
                                                     swapTimeWeight=0.0, technology="S", isRZvirtual=False, 
                                                     verbose=True) -> Tuple[matrix]:
    """Used during the pre-processing phase of the Hardware-Aware Heiristic algorithm for the distance matrices
    computation.

    Args:
        backend (Backend): the NISQ device for which the distance matrices must be computed.
        swapNumberWeight (float): the coefficient to be multiplied to the S matrix in the D matrix computation.
        swapErrorWeight (float): the coefficient to be multiplied to the E matrix in the D matrix computation.
        swapTimeWeight (float): the coefficient to be multiplied to the T matrix in the D matrix computation.
        technology (str): specifies the target technology. It changes how the distance D matrix is computed during 
            the preprocessing. "S"(default) for superconducting technology , "M" for NMR technology, "Q" 
            for quantum dot technology and "I" for ion trap.
        isRZvirtual (bool): True if the RZ gates are implemented virtually, False otherwise. It is used only for
            NMR and quantum dot technologies.
        verbose (bool): if True the matrices are printed on console after computation. They are not printed otherwise.

    Returns:
        Tuple[matrix]: (S, E, T, D)

    """

    # Matrices S, E and T computation:
    if(verbose):
        print("[Router]: S, E, T and D matrices obtained from the calibration data:")

    # Compute the matrix S where S[i][j] is the minimum distance(number of edges) between node i and node j:
    S = nx.floyd_warshall_numpy(backend.couplingGraph, nodelist=backend.nodes)
    if(verbose):
        print("Matrix S:")
        print(S)

    # Get an undirected copy of the coupling graph of the backend. This graph is used for the computation of the E 
    # and T matrices :
    tmpGraph = backend.couplingGraph.to_undirected()

    # For each couple of connected nodes in the undirected copy graph, compute the error rate and gate time for 
    # applying a Swap gate to the couple:
    for edge in tmpGraph.edges(data=True): # For all the undirected endges:
        
        # Extract the interacting nodes:
        node_i = edge[0]
        node_j = edge[1]

        if(technology=="M" or technology=="Q"): # For NMR and QuantumDot technology the isRZvirtual paremeter affects
                                                                                    # the swap gate time and error rate.
            # Compute the Swap error rate between the two nodes:
            swapErrorRate = backend.getSwapErrorRate(node_i, node_j, isRZvirtual)

            # Compute the Swap gate time between the two nodes:
            swapGateTime = backend.getSwapGateTime(node_i, node_j, isRZvirtual)
        else: # Default is for superconducting and ion trap technology (the isRZvirtual parameter does not affect the
                                                                                       # swap gate time and error rate):
            # Compute the Swap error rate between the two nodes:
            swapErrorRate = backend.getSwapErrorRate(node_i, node_j)

            # Compute the Swap gate time between the two nodes:
            swapGateTime = backend.getSwapGateTime(node_i, node_j)

        # Add the Swap error rate and gate time as attributes of the graph:
        edge[2]["SwapErrorRate"] = swapErrorRate
        edge[2]["SwapGateTime"] = swapGateTime

    # Compute the matrix E where E[i][j] is the minimum error rate for swapping node i with node j:
    E = nx.floyd_warshall_numpy(tmpGraph, weight="SwapErrorRate", nodelist=backend.nodes)
    if(verbose):
        print("Matrix E:")
        print(E)

    # Compute the matrix T where T[i][j] is the minimum gate time for swapping node i with node j:
    T = nx.floyd_warshall_numpy(tmpGraph, weight="SwapGateTime", nodelist=backend.nodes)
    if(verbose):
        print("Matrix T:")
        print(T)

    # Compute final distance matrix, it contains the "cost" of performing a Swap between each pair of nodes:
    norm_S = norm(S)
    norm_E = norm(E)
    norm_T = norm(T)
    D = swapNumberWeight*S/norm_S + swapErrorWeight*E/norm_E + swapTimeWeight*T/norm_T
    if(verbose):
        print("Matrix D: (the final distance matrix)")
        print(D)

    return (S, E, T, D)

