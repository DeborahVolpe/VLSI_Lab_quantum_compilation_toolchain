from typing import List, Tuple
import networkx as nx
import math
import configparser
import re

from node import Node

class Backend:
    """Represents a generic(no quantum technology) NISQ device target of the compilation process.

    Args:
        n_nodes (int): the number of nodes of the backend. To each node it is assigned an id appertaining to 
            [0, 'n_nodes'[.
        couplingList (List[Tuple[int, int]]): list containing the allowed interactions of the backend. An interaction is 
            given as 'Tuple' of 'int' where each integer is an id of a node.

    Attributes:
        n_nodes (int): the number of physical qubits of the backend.
        nodes (List[Node]): list of of physical qubits. 'nodes[0]' is the instance of the node with id=0 of the backend.
        couplingGraph (nx.Graph): graph representation of the connectivity contraints of the backend. Each vertex of
            the graph is a node and each edge represents an allowed interaction.
        technology (str): specifies the quantum technology. For a pure backend it is 'None', because it represents a 
            generic NISQ device.
    
    """

    def __init__(self, n_nodes:int, couplingList:List[Tuple[int, int]]) -> None:
        
        # Initialize attributes:
        self.n_nodes = n_nodes 

        # Initialize the nodes instances:
        self.nodes = [] 
        for i in range(0, self.n_nodes, 1):
            self.nodes.append( Node(i) )

        # Generic NISQ device:
        self.technology = None

        # Initialize the coupling graph:
        self.couplingGraph = nx.Graph()
        for interaction in couplingList:

            #TODO: check that the interaction is between valid node ids.

            # Add the interaction as an interaction of nodes:
            self.couplingGraph.add_edge( self.nodes[interaction[0]], self.nodes[interaction[1]] )

    @classmethod
    def fromConfigurationFile(cls, cfgFilePath) :

        # Read the configuration file:
        config = configparser.ConfigParser()
        config.read(cfgFilePath)

        # Get the technology parameter:
        technology = config["Basic"]["technology"]

        # Initialize the backend based on the technology parameter:
        backend = None
        if(technology=="S"):
            backend = SuperconductingBackend.fromConfigurationFile(cfgFilePath)
        elif(technology=="M"):
            backend = NmrBackend.fromConfigurationFile(cfgFilePath)
        elif(technology=="Q"):
            backend = QuantumDotBackend.fromConfigurationFile(cfgFilePath)
        elif(technology=="I"):
            backend = IonTrapBackend.fromConfigurationFile(cfgFilePath)

        return backend

    def drawCouplingGraph(self) -> None:
        """Draws the coupling graph of the backend with Matplotlib.
        
        """

        # Draw the coupling graph:
        options = {
            "node_color": "#DC143C",
            "edge_color": "#A0CBE2",
            "width": 4,
            "with_labels": True,
        }
        nx.draw(self.couplingGraph, labels={node: node for node in self.couplingGraph.nodes()}, **options)
    
    def getDistance(self, node1, node2) -> int:
        """Extracts the shortest path length(number of edges) between two nodes in the coupling graph.

        Args:
            node1 (Node): one of the two nodes for which computing the shortest path length.
            node2 (Node): one of the two nodes for which computing the shortest path length.

        Returns:
            int: the distance between 'node1' and 'node2' if there is a path connecting them, -1 otherwise.
         
        """

        return nx.algorithms.shortest_paths.shortest_path_length(self.couplingGraph, node1, node2, method='dijkstra')

    def isFullyConnected(self) -> bool:
        """Checks if the NISQ device has a fully-connected topology (all interactions are allowed) or not.

        Returns:
            bool: True if the device is fully-connected, False otherwise.
        """

        for node1 in self.nodes:
            for node2 in self.nodes:
                if( self.getDistance(node1, node2) > 1 ): # If there exist a pair of nodes having a distance > 1:
                    return False # The device is not fully-connected.
        
        return True # The device is fully-connected.
class SuperconductingBackend(Backend):
    """Represents a Superconducting NISQ device target of the compilation process. 

    Note:
        Superconducting NISQ devices support only CX as two-qubit gates.

        The native two-qubits gate for Superconducting NISQ devices is a CX. This backend models the difference in 
        error rate and gate time of a CX gate depending on which one is the control and target node 
        (this implies that the coupling graph is a directed graph).

    Args:
        n_nodes (int): the number of nodes of the backend.  To each node it is assigned an id appartaining to 
            [0, 'n_nodes'[.
        couplingList (List[Tuple[int, int, float, float]]): list containing the allowed two-qubits interactions(the 
            nodes on which a CX gate can be applied). An interaction is given as a 'Tuple' specifing:
                1-2) The interactring nodes ids(the first id is the control one, the latter is the target one).
                3) The CX error rate for that interaction.
                4) The CX gate time (ns) for that interaction.

    Attributes:
        n_nodes (int): the number of physical qubits of the backend.
        nodes (List[Node]): list of of physical qubits. 'nodes[0]' is the instance of the node with id=0 of the backend.
        couplingGraph (nx.DiGraph): graph representation of the connectivity contraints of the backend. Each vertex of
            the graph is a node and each edge represents an allowed interaction. The information on the CX error rate 
            and gate time is stored as an attribute of the edges.
        technology (str): specifies the quantum technology. "S" because it is a superconducting NISQ device.
    
    """

    def __init__(self, n_nodes: int, couplingList: List[Tuple[int, int, float, float]]) -> None:

        #super().__init__(n_nodes, couplingList)
        
        # Initialize attributes:

        # Initialize the nodes instances:
        self.n_nodes = n_nodes
        self.nodes = [] 
        for i in range(0, self.n_nodes, 1):
            self.nodes.append( Node(i) )

        # Superconducting NISQ device:
        self.technology = "S"

        # Initialize the coupling graph:
        self.couplingGraph = nx.DiGraph() # A DiGraph is needed because in superconducting technology the error rate and
                                          # and gate time for a two-qubit interaction(CX gate) change depending on which 
                                          # is the control and target qubit.
        for interaction in couplingList:

            #TODO: check that the interaction is between valid node ids.

            # Add one edge to the coupling graph specidfing one allowed two-qubit interaction + the CX error rate +
            # the CX gate time:
            self.couplingGraph.add_edge( self.nodes[interaction[0]], self.nodes[interaction[1]], 
                                         CXErrorRate=interaction[2], CXGateTime=interaction[3] )

    @classmethod
    def fromConfigurationFile(cls, cfgFilePath) :

        # Read the configuration file:
        config = configparser.ConfigParser()
        config.read(cfgFilePath)

        # Extract the backend information from the configuration file:
        n_nodes = int( config["Basic"]["n_nodes"] )
        couplingList = []

        for interaction in list(config["CXErrorRate"]):
            result = re.match("(\d+)-(\d+)", interaction)
            if(result):
                controlNodeId = int( result.group(1) )
                targetNodeId = int( result.group(2) )
                CXErrorRate = float( config["CXErrorRate"][interaction] )
                try:
                    CXGateTime = float( config["CXGateTime"][interaction] )
                    couplingList.append( (controlNodeId, targetNodeId, CXErrorRate, CXGateTime) )
                except KeyError:
                    pass # If the interaction information is not complete the interaction is skipped.

        # Initialize the backend:
        backend = cls(n_nodes, couplingList)

        return backend
        
    def getCXErrorRate(self, controlNode, targetNode) -> float:
        """Extracts the error rate for applying the quantum gate: " CX controlNode, targetNode ". 

        Note:
            The CX error rate for " CX controlNode, targetNode "  and " CX targetNode, controlNode " may be different!

        Args:
            controlNode (Node): the control node.
            targetNode (Node): the target node.

        Returns:
            float: the CX error rate for applying the quantum gate: " CX controlNode, targetNode ". 
                   -1.0 if the controlNode-targetNode interaction is not allowed in the backend.
        
        """

        edgeData = self.couplingGraph.get_edge_data(controlNode, targetNode, None)

        if(edgeData is None): # If the two nodes are not allowed to interact:
            return -1.0
        else: # If the two nodes are allowed to interact:
            return edgeData["CXErrorRate"]

    def getCXGateTime(self, controlNode, targetNode) -> float:
        """Extracts the gate time(s) for applying the quantum gate: " CX controlNode, targetNode ".

        Note:
            The CX gate time for " CX controlNode, targetNode "  and " CX targetNode, controlNode " may be different!

        Args:
            controlNode (Node): the control node.
            targetNode (Node): the target node.

        Returns:       
            float: the gate time(ns) for applying the quantum gate: " CX controlNode, targetNode ". 
                   -1.0 if the controlNode-targetNode interaction is not allowed in the backend.
        """

        edgeData = self.couplingGraph.get_edge_data(controlNode, targetNode, None)

        if(edgeData is None): # If the two nodes are not allowed to interact:
            return -1.0
        else: # If the two nodes are allowed to interact:
            return edgeData["CXGateTime"]

    def getSwapErrorRate(self, node1, node2) -> float:
        """Extracts the error rate for applyng a Swap gate to two nodes.

        Note:
            The symmetry of the Swap gate is exploited and the error rate is computed in the best case scenario.

        Args:
            node1 (Node): the node to be swapped.
            node2 (Node): the node to be swapped.

        Returns:
            float: the error rate for applying the Swap gate to 'node1' and 'node2'.
                   -1.0 if the node1-node2 interaction is not allowed in the backend.
        
        """

        if( self.getDistance(node1, node2) != 1 ): # If the two nodes are not allowed to interact in the backend:
            return -1.0
        else: # If the two nodes are allowed to interact in the backend:
            cxSuccessRate_12 = 1 - self.getCXErrorRate(node1, node2)
            cxSuccessRate_21 = 1 - self.getCXErrorRate(node2, node1)
            swapErrorRate = 1 - ( cxSuccessRate_12 * cxSuccessRate_21 * max(cxSuccessRate_12, cxSuccessRate_21) )
            return swapErrorRate
    
    def getSwapGateTime(self, node1, node2) -> float:
        """Extracts the gate time(s) for applying a Swap gate to two nodes.

        Note:
            The simmetricity of the Swap gate is exploited and the gate time is computed in the best case scenario.

        Args:
            node1 (Node): the node to be swapped.
            node2 (Node): the node to be swapped.

        Returns:
            float: the gate time(ns) for applying the Swap gate to 'node1' and 'node2'.
                   -1.0 if the node1-node2 interaction is not allowed in the backend.
        """

        if( self.getDistance(node1, node2) != 1 ): # If the two nodes are not allowed to interact in the backend:
            return -1.0
        else: # If the two nodes are allowed to interact in the backend:
            cxGateTime_12 = self.getCXGateTime(node1, node2)
            cxGateTime_21 = self.getCXGateTime(node2, node1)
            swapGateTime = cxGateTime_12 + cxGateTime_21 + min(cxGateTime_12, cxGateTime_21)
            return swapGateTime
        
class NmrBackend(Backend):
    """Represents a liquid-state NMR NISQ device target of the compilation process. 

    Note:
        Supported nuclei for implementing a node: 1H, 13C.

    Args:
        n_nodes (int): the number of nodes of the backend. To each node it is assigned an id appartaining 
            to [0, 'n_nodes'[. 
        nodesEncoding (Tuple[str]): Tuple specifing which nuclei are used for encoding a node(e.g. nucleiList[0]="13C" 
            the node with id=0 is encoded using the Carbon-13 isotope).
        couplingList (List[Tuple[int, int, float, float, float]]): list containing the allowed two-qubits interactions
            (the nodes on which a two-qubit gate can be applied). An interaction is given as a 'Tuple' specifing:\n
            1-2) The interacting nodes ids (the order does not matter);\n
            3) The J-coupling constant of that interaction [Hz].\n
            4) The Swap error rate for swapping the two nodes having the Rz gates implemented virtually.\n
            5) The Swap error rate for swapping the two nodes having the Rz gates not implemented virtually. \n
        Br (float): alternating magnetic-field amplitude [T].
        minJ (float): all the nodes interactions having a J-coupling constant lower than 'minJ' [Hz] in absolute value
            are discarded.

    Attributes:
        n_nodes (int): the number of physical qubits of the backend.
        nodes (List[Node]): list of of physical qubits. 'nodes[0]' is the instance of the node with id=0 of the backend.
        nodesEncoding (Tuple[str]): Tuple specifing which nuclei are used for encoding a node
            (e.g. nodesEncoding[0]="13C" the node with id=0 is encoded using the Carbon-13 isotope).
        Br (float): alternating magnetic-field amplitude(T)
        couplingGraph (nx.Graph): graph representation of the connectivity contraints of the backend. Each vertex of
            the graph is a node and each edge represents an allowed interaction. The information
            on the J-coupling constant is stored as an attribute of the edges.
        technology (str): specifies the quantum technology. "M" because it is a NMR NISQ device.
    
    """

    def __init__(self, n_nodes: int, nodesEncoding:Tuple[str], couplingList: List[Tuple[int, int, float, float, float]], 
                 Br:float, minJ:float) -> None:
        
        #super().__init__(n_nodes, couplingList)

        # Initialize attributes:

        # Nuclear gyromagnetic ratios dictionary:
        self._NucGyroRatios = {"1H":267.522*10**6, "13C":67.283*10**6, "19F":251.815*10**6} # [rad*sec^-1*T^-1]

        # Nodes encoding:
        self.nodesEncoding = nodesEncoding

        # Alternating magnetic-field amplitude:
        self.Br = Br

        # Initialize the nodes instances:
        self.n_nodes = n_nodes 
        self.nodes = [] 
        for i in range(0, self.n_nodes, 1):
            self.nodes.append( Node(i) )

        # NMR NISQ device:
        self.technology = "M"

        # Initialize the coupling graph:
        self.couplingGraph = nx.Graph() # Undirected graph.
        for interaction in couplingList:

            #TODO: check that the interaction is between valid node ids.

            if( abs(interaction[2]) >= abs(minJ) ): # If the J-coupling constant is greater than the minimum one:
                # Add one edge to the coupling graph specifing one allowed two-qubit interaction + 
                # the J-coupling constant + the Swap error rate:
                self.couplingGraph.add_edge( self.nodes[interaction[0]], self.nodes[interaction[1]], J=interaction[2],
                                             SwapErrorRate_RzVirtual=interaction[3],
                                             SwapErrorRate_NotRzVirtual=interaction[4])

    @classmethod
    def fromConfigurationFile(cls, cfgFilePath) :

        # Read the configuration file:
        config = configparser.ConfigParser()
        config.read(cfgFilePath)

        # Extract the backend information from the configuration file:
        n_nodes = int( config["Basic"]["n_nodes"] )
        nodesEncoding = tuple( re.findall("[A-Za-z0-9]+", config["Basic"]["nodesEncoding"]) )
        Br = float( config["Basic"]["Br"] )
        minJ = float( config["Basic"]["minJ"] )

        couplingList = []

        for interaction in list(config["JCoupling"]):
            result = re.match("(\d+)-(\d+)", interaction)
            if(result):
                node1Id = int( result.group(1) )
                node2Id = int( result.group(2) )
                JCoupling = float( config["JCoupling"][interaction] )
                try:
                    SwapErrorRate_RzVirtual = float( config["SwapErrorRate_RzVirtual"][interaction] )
                    SwapErrorRate_NotRzVirtual = float( config["SwapErrorRate_NotRzVirtual"][interaction] )
                    couplingList.append( (node1Id, node2Id, JCoupling, 
                                                                  SwapErrorRate_RzVirtual,SwapErrorRate_NotRzVirtual ) )
                except KeyError:
                    pass # If the interaction information is not complete the interaction is skipped.

        # Initialize the backend:
        backend = cls(n_nodes, nodesEncoding, couplingList, Br, minJ)

        return backend

    def getJCoupling(self, node1, node2) -> float:
        """Extracts the J-coupling constant for the 'node1', 'node2' interaction.
        Args:
            node1 (Node): the interacting node.
            node2 (Node): the interacting node.

        Returns:
            float: the J-coupling constant if the interaction is allowed. None if otherwise it is not.
        
        """

        # Get the J-coupling constant for the node1-node2 interaction:
        edgeData = self.couplingGraph.get_edge_data(node1, node2, None)
        if(edgeData is None): # If the interaction is not allowed in the backend:
            return None
        else: 
            return edgeData["J"]
    
    def getSingleQubitGateTime(self, node, theta, isRZ, isRZvirtual) -> float:
        """Extracts the gate time [s] required for applying a RX, RY or RZ single-qubit gate to a node.

        Args:
            node (Node): the node target of the Rx, Ry or Rz single-qubit gate.
            theta (float): angle of rotation [rad].
            isRZ (bool): False for RX and RY gate, True for RZ gate.
            isRZvirtual (bool): True if the RZ gates are implemented virtually, False otherwise.

        Returns: 
            float: the gate time [s].
        
        """

        # Compute w*, that is, the aplitude of the RF field:
        w = self._NucGyroRatios[self.nodesEncoding[node.id]] * self.Br

        # Compute the gate time:
        T = -1.0
        if(not isRZ): # If the single-qubit gate is Rx(theta) or Ry(theta):
           
            T = abs(theta/w)
        else: # If the single-qubit gate is Rz(theta):
            
            if(not isRZvirtual): # If the Rz gate is implemented virtually:
                # The Rz(theta) rotation is implemented as: Rx(pi/2)*Ry(theta)*Rx(-pi/2)
                T = abs(math.pi/(2*w)) + abs(theta/w) + abs(math.pi/(2*w))
            else: # If the Rz gate is not implemented virtually:
                T = 0.0 # Virtual implementation => 0s gate time.    

        return T

    def getCZGateTime(self, controlNode, targetNode, isRZvirtual) -> float:
        """Extracts the gate time [s] required for applying the quantum gate: " CZ controlNode, targetNode ".

        Note:
            Since the CZ gate is implemented as: 
            Rz(−sgn(J)*pi/2) q['controlNode'];
            Rz(−sgn(J)*pi/2) q['targetNode'];
            Rzz(sgn(J)*pi/2) q['controlNode'], q['targetNode']; 
            The gate is completely symmetric in terms of gate time (and also error rate).

        Args:
            controlNode (Node): the control node of the CZ gate.
            targetNode (Node): the target node of the CZ gate.
            isRZvirtual (bool): True if the RZ gates are implemented virtually, False otherwise.

        Returns: 
            float: the gate time [s] for applying the quantum gate: " CZ controlNode, targetNode ".
                   -1.0 if the 'controlNode'-'targetNode' interaction is not allowed in the backend.
        
        """

        # Get the J-coupling constant for the node1-node2 interaction:
        edgeData = self.couplingGraph.get_edge_data(controlNode, targetNode, None)
        if(edgeData is None): # If the interaction is not allowed in the backend:
            return -1.0
        J = edgeData["J"]
            
        # Get the gate time for applying a RZ gate to the control and target nodes:
        RZgateTimeControlNode = self.getSingleQubitGateTime(controlNode, math.pi/2, True, isRZvirtual)
        RZgateTimeTargetNode = self.getSingleQubitGateTime(targetNode, math.pi/2, True, isRZvirtual)

        # The gate time of the CZ is computed supposing the gate is decomposed as:
        # Rz(−sgn(J)*pi/2) q['controlNode']; 
        # Rz(−sgn(J)*pi/2) q['targetNode']; 
        # Rzz(sgn(J)*pi/2) q['controlNode'], q['targetNode']; 
        return RZgateTimeControlNode + RZgateTimeTargetNode + abs( 1/(2*J) )

    def getCXGateTime(self, controlNode, targetNode, isRZvirtual) -> float:
        """Extracts the gate time [s] for applying the quantum gate: " CX controlNode, targetNode ".

        Note:
            The CX gate time for " CX controlNode, targetNode "  and " CX targetNode, controlNode " may be different!

        Args:
            controlNode (Node): the control node.
            targetNode (Node): the target node.
            isRZvirtual (bool): True if the RZ gates are implemented virtually, False otherwise.

        Returns:       
            float: the gate time [s] for applying the quantum gate: " CX controlNode, targetNode ". 
                   -1.0 if the 'controlNode'-'targetNode' interaction is not allowed in the backend.
        """

        if( self.getDistance(controlNode, targetNode) != 1 ): # If the two nodes are not allowed to interact:
            return -1.0
        else: # If the two nodes are allowed to interact:
            # Get the gate time for applying a CZ gate to the control and target node:
            CZgateTime = self.getCZGateTime(controlNode, targetNode, isRZvirtual)

            # Get the gate time for applying an Hadamard gate to the target node:
            if(isRZvirtual): # If the RZ gates are implemented virtually:
                # H is decomposed with RY(-pi/2); RZ(pi); :
                HgateTime = self.getSingleQubitGateTime(targetNode, -math.pi/2, False, isRZvirtual) + \
                            self.getSingleQubitGateTime(targetNode, math.pi, True, isRZvirtual) 
            else: # If the RZ gates are not implemented virtually:
                # H is decomposed with: RY(pi/2); RX(pi); :
                HgateTime = self.getSingleQubitGateTime(targetNode, math.pi/2, False, isRZvirtual) + \
                            self.getSingleQubitGateTime(targetNode, math.pi, False, isRZvirtual) 
                                                                                             

            # Compute the CX gate time:
            CXgateTime = HgateTime + CZgateTime + HgateTime # The CX quantum gate is decomposed with: 
                                                            # H targetNode; CZ controlNode, targetNode; H targetNode:

            return CXgateTime

    def getSwapGateTime(self, node1, node2, isRZvirtual) -> float:
        """Extracts the gate time [s] for applying a Swap gate to two nodes.

        Note:
            The simmetricity of the Swap gate is exploited and the gate time is computed in the best case scenario.

            Depending on if the Rz gates are implemented virtually or not the swap gate time changes.

        Args:
            node1 (Node): the node to be swapped.
            node2 (Node): the node to be swapped.
            isRZvirtual (bool): True if the Rz gates are implemented virtually, False otherwise.

        Returns:
            float: the gate time [s] for applying the Swap gate to 'node1' and 'node2'.
                   -1.0 if the node1-node2 interaction is not allowed in the backend.
        """

        if( self.getDistance(node1, node2) != 1 ): # If the two nodes are not allowed to interact:
            return -1.0
        else: # If the two nodes are allowed to interact:
            cxGateTime_12 = self.getCXGateTime(node1, node2, isRZvirtual)
            cxGateTime_21 = self.getCXGateTime(node2, node1, isRZvirtual)
            swapGateTime = cxGateTime_12 + cxGateTime_21 + min(cxGateTime_12, cxGateTime_21)
            return swapGateTime

    def getSwapErrorRate(self, node1, node2, isRZvirtual) -> float:
        """Extracts the error rate for applyng a Swap gate to two nodes.

        Note:
            The Swap gate is considered perfectly symmetrical and the error rate is considered identical even if 'node1'
            and 'node2' are inverted.

            Depending on if the Rz gates are implemented virtually or not the swap gate error rate changes.

        Args:
            node1 (Node): the node to be swapped.
            node2 (Node): the node to be swapped.
            isRZvirtual (bool): True if the Rz gates are implemented virtually, False otherwise.

        Returns:
            float: the error rate for applying the Swap gate to 'node1' and 'node2'.
                   -1.0 if the node1-node2 interaction is not allowed in the backend.
        
        """

        # Get the Swap error rate for the node1-node2 interaction:
        edgeData = self.couplingGraph.get_edge_data(node1, node2, None)
        if(edgeData is None): # If the interaction is not allowed in the backend:
            return -1.0
        if(isRZvirtual): # If the RZ gates are implemented virtually:
            SwapErrorRate = edgeData["SwapErrorRate_RzVirtual"]
        else: # If the RZ gates are not implemented virtually:
            SwapErrorRate = edgeData["SwapErrorRate_NotRzVirtual"]

        return SwapErrorRate
class QuantumDotBackend(Backend):
    """Represents a quantum dot NISQ device target of the compilation process. 

    Args:
        n_nodes (int): the number of nodes of the backend. To each node it is assigned an id appartaining 
            to [0, 'n_nodes'[
        couplingList (List[Tuple[int, int, float, float, float]]): list containing the allowed two-qubits interactions 
            (the nodes on which a two-qubits gate can be applied). An interaction is given as a 'Tuple' specifing:\n
            1-2) The interacting nodes ids (the order does not matter).\n
            3) The Exchange-Interaction constant [Hz].\n
            4) The Swap error rate for swapping the two nodes having the Rz gates implemented virtually.\n
            5) The Swap error rate for swapping the two nodes having the Rz gates not implemented virtually. \n
        RxyGateTimes_halfpi (Tuple[float]): the tuple of gate times [s] for applying an Rx/Ry gate with an angle of pi/2
            to each node of the quantum dot backend.
        minExchangeInteraction (float): all the nodes interactions having an Exchange-Interaction constant lower than 
            'minExchangeInteraction' [Hz] in absolute value are discarded.

    Attributes:
        n_nodes (int): the number of physical qubits of the backend.
        nodes (List[Node]): list of of physical qubits. 'nodes[0]' is the instance of the node with id=0 of the backend.
        couplingGraph (nx.Graph): graph representation of the connectivity contraints of the backend. Each vertex of
            the graph is a node and each edge represents an allowed interaction. The information on the 
            Exchange-Interaction constant is stored as an attribute of the edges.
        technology (str): specifies the quantum technology. "Q" because it is a quantum dot NISQ device.
        RxyGateTimes_halfpi (Tuple[float]): the tuple of gate times [s] for applying a Rx/Ry gate with an angle of pi/2
            to each node of the quantum dot backend.
    
    """

    def __init__(self, n_nodes: int, couplingList: List[Tuple[int, int, float, float, float]], 
                 RxyGateTimes_halfpi:Tuple[float], minExchangeInteraction:float) -> None:
        
        #super().__init__(n_nodes, couplingList)

        # Initialize attributes:

        # Initialize the nodes instances:
        self.n_nodes = n_nodes 
        self.nodes = [] 
        for i in range(0, self.n_nodes, 1):
            self.nodes.append( Node(i) )

        # Quantum dot NISQ device:
        self.technology = "Q"

        # The gate time for applying an Rx/Ry gate with an angle of pi/2:
        self.RxyGateTimes_halfpi = RxyGateTimes_halfpi

        # Initialize the coupling graph:
        self.couplingGraph = nx.Graph() # Undirected graph.
        for interaction in couplingList:

            #TODO: check that the interaction is between valid node ids.

            if( abs(interaction[2]) >= abs(minExchangeInteraction) ): # If the Exchange-Interaction constant is greater 
                                                                      # than the minimum one:
                # Add one edge to the coupling graph specifing one allowed two-qubit interaction + 
                # the Exchange-Interaction constant + the swap error rate:
                self.couplingGraph.add_edge( self.nodes[interaction[0]], self.nodes[interaction[1]], 
                                             ExchangeInteraction=interaction[2],
                                             SwapErrorRate_RzVirtual=interaction[3],
                                             SwapErrorRate_NotRzVirtual=interaction[4])

    @classmethod
    def fromConfigurationFile(cls, cfgFilePath) :

        # Read the configuration file:
        config = configparser.ConfigParser()
        config.read(cfgFilePath)

        # Extract the backend information from the configuration file:
        n_nodes = int( config["Basic"]["n_nodes"] )
        minExchangeInteraction = float( config["Basic"]["minExchangeInteraction"] )

        RxyGateTimes_halfpi = [-1.0]*n_nodes
        for gateTimeOption in list(config["RxyGateTime_halfpi"]):
            result = re.match("(\d+)", gateTimeOption)
            if(result):
                nodeId = int(result.group(1))
                RxyGateTimes_halfpi[nodeId] = float( config["RxyGateTime_halfpi"][gateTimeOption] ) 

        couplingList = []
        for interaction in list(config["ExchangeInteraction"]):
            result = re.match("(\d+)-(\d+)", interaction)
            if(result):
                node1Id = int( result.group(1) )
                node2Id = int( result.group(2) )
                ExchangeInteraction = float( config["ExchangeInteraction"][interaction] )
                try:
                    SwapErrorRate_RzVirtual = float( config["SwapErrorRate_RzVirtual"][interaction] )
                    SwapErrorRate_NotRzVirtual = float( config["SwapErrorRate_NotRzVirtual"][interaction] )
                    couplingList.append( (node1Id, node2Id, ExchangeInteraction,
                                                                  SwapErrorRate_RzVirtual,SwapErrorRate_NotRzVirtual ) )
                except KeyError:
                    pass # If the interaction information is not complete the interaction is skipped.

        # Initialize the backend:
        backend = cls(n_nodes, couplingList, RxyGateTimes_halfpi, minExchangeInteraction)

        return backend

    def getExchangeInteraction(self, node1, node2) -> float:
        """Extracts the ExchangeInteraction constant for the 'node1', 'node2' interaction.
        Args:
            node1 (Node): the interacting node.
            node2 (Node): the interacting node.

        Returns:
            float: the ExchangeInteraction constant if the interaction is allowed. None if otherwise it is not.
        
        """

        # Get the Exchange-Interaction constant for the node1-node2 interaction:
        edgeData = self.couplingGraph.get_edge_data(node1, node2, None)
        if(edgeData is None): # If the interaction is not allowed in the backend:
            return None
        else: 
            return edgeData["ExchangeInteraction"]
    
    def getSingleQubitGateTime(self, node, theta, isRZ, isRZvirtual) -> float:
        """Extracts the gate time [s] required for applying a RX, RY or RZ single-qubit gate to a node.

        Args:
            node (Node): the node target of the Rx, Ry or Rz single-qubit gate.
            theta (float): angle of rotation [rad].
            isRZ (bool): False for RX and RY gate, True for RZ gate.
            isRZvirtual (bool): True if the RZ gates are implemented virtually, False otherwise.

        Returns: 
            float: the gate time [s].
        
        """

        # Compute the gate time:
        T = -1.0
        if(not isRZ): # If the single-qubit gate is Rx(theta) or Ry(theta):
           
            T = abs(( self.RxyGateTimes_halfpi[node.id]*theta)/(math.pi/2) )
        else: # If the single-qubit gate is Rz(theta):
            
            if(not isRZvirtual): # If the Rz gate is implemented virtually:
                # The Rz(theta) rotation is implemented as: Rx(pi/2)*Ry(theta)*Rx(-pi/2)
                T = self.RxyGateTimes_halfpi[node.id] + abs((self.RxyGateTimes_halfpi[node.id]*theta)/(math.pi/2)) + \
                    self.RxyGateTimes_halfpi[node.id]
            else: # If the Rz gate is not implemented virtually:
                T = 0.0 # Virtual implementation => 0s gate time.    

        return T

    def getCZGateTime(self, controlNode, targetNode, isRZvirtual) -> float:
        """Extracts the gate time [s] required for applying the quantum gate: " CZ controlNode, targetNode ".

        Note:
            Since the CZ gate is implemented as: 
            Rz(−sgn(ExchangeInteraction)*pi/2) q['controlNode'];
            Rz(−sgn(ExchangeInteraction)*pi/2) q['targetNode'];
            Rzz(sgn(ExchangeInteraction)*pi/2) q['controlNode'], q['targetNode']; 
            The gate is completely symmetric in terms of gate time (and also error rate).

        Args:
            controlNode (Node): the control node of the CZ gate.
            targetNode (Node): the target node of the CZ gate.
            isRZvirtual (bool): True if the RZ gates are implemented virtually, False otherwise.

        Returns: 
            float: the gate time [s] for applying the quantum gate: " CZ controlNode, targetNode ".
                   -1.0 if the 'controlNode'-'targetNode' interaction is not allowed in the backend.
        
        """

        # Get the Exchange-Interaction constant for the controlNode-targetNode interaction:
        edgeData = self.couplingGraph.get_edge_data(controlNode, targetNode, None)
        if(edgeData is None): # If the interaction is not allowed in the backend:
            return -1.0
        ExchangeInteraction = edgeData["ExchangeInteraction"]
            
        # Get the gate time required for applying a Rz gate to the control and target nodes:
        RZgateTimeControlNode = self.getSingleQubitGateTime(controlNode, math.pi/2, True, isRZvirtual)
        RZgateTimeTargetNode = self.getSingleQubitGateTime(targetNode, math.pi/2, True, isRZvirtual)

        # The gate time of the CZ is computed supposing the gate is decomposed as:
        # Rz(−sgn(ExchangeInteraction)*pi/2) q['controlNode']; 
        # Rz(−sgn(ExchangeInteraction)*pi/2) q['targetNode']; 
        # Rzz(sgn(ExchangeInteraction)*pi/2) q['controlNode'], q['targetNode']; 
        return RZgateTimeControlNode + RZgateTimeTargetNode + abs( 1/(2*ExchangeInteraction) ) 

    def getCXGateTime(self, controlNode, targetNode, isRZvirtual) -> float:
        """Extracts the gate time [s] for applying the quantum gate: " CX controlNode, targetNode ".

        Note:
            The CX gate time for " CX controlNode, targetNode "  and " CX targetNode, controlNode " may be different!

        Args:
            controlNode (Node): the control node.
            targetNode (Node): the target node.
            isRZvirtual (bool): True if the RZ gates are implemented virtually, False otherwise.

        Returns:       
            float: the gate time [s] for applying the quantum gate: " CX controlNode, targetNode ". 
                   -1.0 if the controlNode-targetNode interaction is not allowed in the backend.
        """

        if( self.getDistance(controlNode, targetNode) != 1 ): # If the two nodes are not allowed to interact:
            return -1.0
        else: # If the two nodes are allowed to interact:
            # Get the gate time for applying a CZ gate to the control and target node:
            CZgateTime = self.getCZGateTime(controlNode, targetNode, isRZvirtual)

            # Get the gate time for applying an Hadamard gate to the target node:
            if(isRZvirtual): # If the RZ gates are implemented virtually:
                # H is decomposed with RY(pi/2); RZ(pi); :
                HgateTime = self.getSingleQubitGateTime(targetNode, math.pi/2, False, isRZvirtual) + \
                            self.getSingleQubitGateTime(targetNode, math.pi, True, isRZvirtual) 
            else: # If the RZ gates are not implemented virtually:
                # H is decomposed with: RY(pi/2); RX(pi); :
                HgateTime = self.getSingleQubitGateTime(targetNode, math.pi/2, False, isRZvirtual) + \
                            self.getSingleQubitGateTime(targetNode, math.pi, False, isRZvirtual) 
                                                                                             
            # Compute the CX gate time:
            CXgateTime = HgateTime + CZgateTime + HgateTime # The CX quantum gate is decomposed with: 
                                                            # H targetNode; CZ controlNode, targetNode; H targetNode:

            return CXgateTime

    def getSwapGateTime(self, node1, node2, isRZvirtual) -> float:
        """Extracts the gate time [s] for applying a Swap gate to two nodes.

        Note:
            The simmetricity of the Swap gate is exploited and the gate time is computed in the best case scenario.

            Depending on if the Rz gates are implemented virtually or not the swap gate time changes.

        Args:
            node1 (Node): the node to be swapped.
            node2 (Node): the node to be swapped.
            isRZvirtual (bool): True if the RZ gates are implemented virtually, False otherwise.

        Returns:
            float: the gate time [s] for applying the Swap gate to 'node1' and 'node2'.
                   -1.0 if the node1-node2 interaction is not allowed in the backend.
        """

        if( self.getDistance(node1, node2) != 1 ): # If the two nodes are not allowed to interact:
            return -1.0
        else: # If the two nodes are allowed to interact:
            cxGateTime_12 = self.getCXGateTime(node1, node2, isRZvirtual)
            cxGateTime_21 = self.getCXGateTime(node2, node1, isRZvirtual)
            swapGateTime = cxGateTime_12 + cxGateTime_21 + min(cxGateTime_12, cxGateTime_21)
            return swapGateTime

    def getSwapErrorRate(self, node1, node2, isRZvirtual) -> float:
        """Extracts the error rate for applyng a Swap gate to two nodes.

        Note:
            The Swap gate is considered perfectly symmetrical and the error rate is considered identical even if 'node1'
            and 'node2' are inverted.

            Depending on if the Rz gates are implemented virtually or not the swap gate error rate changes.

        Args:
            node1 (Node): the node to be swapped.
            node2 (Node): the node to be swapped.
            isRZvirtual (bool): True if the Rz gates are implemented virtually, False otherwise.

        Returns:
            float: the error rate for applying the Swap gate to 'node1' and 'node2'.
                   -1.0 if the node1-node2 interaction is not allowed in the backend.
        
        """

        # Get the Swap error rate for the node1-node2 interaction:
        edgeData = self.couplingGraph.get_edge_data(node1, node2, None)
        if(edgeData is None): # If the interaction is not allowed in the backend:
            return -1.0
        if(isRZvirtual): # If the RZ gates are implemented virtually:
            SwapErrorRate = edgeData["SwapErrorRate_RzVirtual"]
        else: # If the RZ gates are not implemented virtually:
            SwapErrorRate = edgeData["SwapErrorRate_NotRzVirtual"]

        return SwapErrorRate

class IonTrapBackend(Backend):
    """Represents an ion trap NISQ device target of the compilation process. 

    Args:
        n_nodes (int): the number of nodes of the backend. To each node it is assigned an id appartaining 
            to [0, 'n_nodes'[
        couplingList (List[Tuple[int, int, float, float, float]]): list containing the allowed two-qubits interactions 
            (the nodes on which a two-qubits gate can be applied). An interaction is given as a 'Tuple' specifing:\n
            1-2) The interacting nodes ids (the order does not matter).\n
            3) The sign of the interaction parameter χ for the Mølmer-Sørensen gate (+1 or -1) \n
            4) The gate time for applying a Mølmer-Sørensen gate to the interacting nodes [s].\n
            5) The error rate for applying a Mølmer-Sørensen gate to the interacting nodes.\n
        RxyGateTimes_halfpi (Tuple[float]): the tuple of gate times [s] for applying an Rx/Ry gate with an angle of pi/2
            to each node of the ion trap backend.
        RxyErrorRates_halfpi (Tuple[float]): the tuple of error rates for applying an Rx/Ry gate with an angle of pi/2
            to each node of the ion trap backend.
        maxMsGateTime (float): all the nodes interactions having a MS gate time higher than 'maxMsGateTime' [s] are
            discarded.
        maxMsErrorRate (float): all the nodes interactions having a MS error rate higher than 'maxMsErrorRate' are
            discarded.

    Attributes:
        n_nodes (int): the number of physical qubits of the backend.
        nodes (List[Node]): list of of physical qubits. 'nodes[0]' is the instance of the node with id=0 of the backend.
        couplingGraph (nx.Graph): graph representation of the connectivity contraints of the backend. Each vertex of
            the graph is a node and each edge represents an allowed interaction. The information on the 
            Exchange-Interaction constant is stored as an attribute of the edges.
        technology (str): specifies the quantum technology. "Q" because it is a quantum dot NISQ device.
        RxyGateTimes_halfpi (Tuple[float]): the tuple of gate times [s] for applying an Rx/Ry gate with an angle of pi/2
            to each node of the ion trap backend.
        RxyErrorRates_halfpi (Tuple[float]): the tuple of error rates for applying an Rx/Ry gate with an angle of pi/2
            to each node of the ion trap backend.
    
    """

    def __init__(self, n_nodes: int, couplingList: List[Tuple[int, int, float, float, float]], 
                 RxyGateTimes_halfpi:Tuple[float], RxyErrorRates_halfpi:Tuple[float], maxMsGateTime:float, 
                                                                                          maxMsErrorRate:float) -> None:
        
        #super().__init__(n_nodes, couplingList)

        # Initialize attributes:

        # Initialize the nodes instances:
        self.n_nodes = n_nodes 
        self.nodes = [] 
        for i in range(0, self.n_nodes, 1):
            self.nodes.append( Node(i) )

        # Ion Trap NISQ device:
        self.technology = "I"

        # The gate times and error rates for applying an Rx/Ry gate with an angle of pi/2:
        self.RxyGateTimes_halfpi = RxyGateTimes_halfpi
        self.RxyErrorRates_halfpi = RxyErrorRates_halfpi

        # Initialize the coupling graph:
        self.couplingGraph = nx.Graph() # Undirected graph.
        for interaction in couplingList:

            #TODO: check that the interaction is between valid node ids.

            if( interaction[3]<=maxMsGateTime and interaction[4]<=maxMsErrorRate ): # If the MS gate time and error rate
                                                                                  # for the current interaction are
                                                                                  # <= than the maximum ones:
                # Add one edge to the coupling graph specifing one allowed two-qubit interaction + 
                # the MS gate time + the MS error rate:
                self.couplingGraph.add_edge( self.nodes[interaction[0]], self.nodes[interaction[1]], signX=interaction[2],
                                                MsGateTime=interaction[3], MsErrorRate=interaction[4] )

    @classmethod
    def fromConfigurationFile(cls, cfgFilePath) :

        # Read the configuration file:
        config = configparser.ConfigParser()
        config.read(cfgFilePath)

        # Extract the backend information from the configuration file:
        n_nodes = int( config["Basic"]["n_nodes"] )
        maxMsGateTime = float( config["Basic"]["maxMSGateTime"] )
        maxMsErrorRate = float( config["Basic"]["maxMsErrorRate"] )

        RxyGateTimes_halfpi = [-1.0]*n_nodes
        for gateTimeOption in list(config["RxyGateTime_halfpi"]):
            result = re.match("(\d+)", gateTimeOption)
            if(result):
                nodeId = int(result.group(1))
                RxyGateTimes_halfpi[nodeId] = float( config["RxyGateTime_halfpi"][gateTimeOption] ) 

        RxyErrorRates_halfpi = [-1.0]*n_nodes
        for errorRateOption in list(config["RxyErrorRate_halfpi"]):
            result = re.match("(\d+)", errorRateOption)
            if(result):
                nodeId = int(result.group(1))
                RxyErrorRates_halfpi[nodeId] = float( config["RxyErrorRate_halfpi"][errorRateOption] ) 

        couplingList = []
        for interaction in list(config["signX"]):
            result = re.match("(\d+)-(\d+)", interaction)
            if(result):
                node1Id = int( result.group(1) )
                node2Id = int( result.group(2) )
                signX = float( config["signX"][interaction] )
                try:
                    MsGateTime = float( config["MsGateTime"][interaction] )
                    MsErrorRate = float( config["MsErrorRate"][interaction] )
                    couplingList.append( (node1Id, node2Id, signX, MsGateTime, MsErrorRate) )
                except KeyError:
                    pass # If the interaction information is not complete the interaction is skipped.

        # Initialize the backend:
        backend = cls(n_nodes, couplingList, RxyGateTimes_halfpi, RxyErrorRates_halfpi, maxMsGateTime, maxMsErrorRate)

        return backend

    def getSingleQubitGateTime(self, node, theta, isRZ, isRZvirtual) -> float:
        """Extracts the gate time [s] required for applying a RX, RY or RZ single-qubit gate to a node.

        Args:
            node (Node): the node target of the Rx, Ry or Rz single-qubit gate.
            theta (float): angle of rotation [rad].
            isRZ (bool): False for RX and RY gate, True for RZ gate.
            isRZvirtual (bool): True if the RZ gates are implemented virtually, False otherwise.

        Returns: 
            float: the gate time [s].
        
        """

        # Compute the gate time:
        T = -1.0
        if(not isRZ): # If the single-qubit gate is Rx(theta) or Ry(theta):
           
            T = abs(( self.RxyGateTimes_halfpi[node.id]*theta)/(math.pi/2) )
        else: # If the single-qubit gate is Rz(theta):
            
            if(not isRZvirtual): # If the Rz gate is implemented virtually:
                # The Rz(theta) rotation is implemented as: Rx(pi/2)*Ry(theta)*Rx(-pi/2)
                T = self.RxyGateTimes_halfpi[node.id] + abs((self.RxyGateTimes_halfpi[node.id]*theta)/(math.pi/2)) + \
                    self.RxyGateTimes_halfpi[node.id]
            else: # If the Rz gate is not implemented virtually:
                T = 0.0 # Virtual implementation => 0s gate time.    

        return T

    def getSingleQubitErrorRate(self, node, theta, isRZ, isRZvirtual) -> float:
        """Extracts the error rate for applying a RX, RY or RZ single-qubit gate to a node.

        Args:
            node (Node): the node target of the Rx, Ry or Rz single-qubit gate.
            theta (float): angle of rotation [rad].
            isRZ (bool): False for RX and RY gate, True for RZ gate.
            isRZvirtual (bool): True if the RZ gates are implemented virtually, False otherwise.

        Returns: 
            float: the error rate.
        
        """

        # Compute the error rate:
        E = -1.0
        if(not isRZ): # If the single-qubit gate is Rx(theta) or Ry(theta):
           
            E = abs(( self.RxyErrorRates_halfpi[node.id]*theta)/(math.pi/2) )
        else: # If the single-qubit gate is Rz(theta):
            
            if(not isRZvirtual): # If the Rz gate is implemented virtually:
                # The Rz(theta) rotation is implemented as: Rx(pi/2)*Ry(theta)*Rx(-pi/2)
                RxSuccessRate = 1 - self.RxyErrorRates_halfpi[node.id]
                RySuccessRate = 1 - abs((self.RxyErrorRates_halfpi[node.id]*theta)/(math.pi/2))
                E = 1 - (RxSuccessRate * RySuccessRate *RxSuccessRate )
            else: # If the Rz gate is not implemented virtually:
                E = 0.0 # Virtual implementation => 0.0 error rate.    

        return E

    def getSignX(self, node1, node2) -> float:
        """Extracts the sign of the interaction parameter χ for the Mølmer-Sørensen gate for the 'node1', 'node2' 
        interaction.

        Args:
            node1 (Node): the interacting node.
            node2 (Node): the interacting node.

        Returns:
            float: the sign of the interaction parameter χ if the interaction is allowed. None if otherwise it is not.
        
        """

        # Get the sign of the interaction parameter χ for the node1-node2 interaction:
        edgeData = self.couplingGraph.get_edge_data(node1, node2, None)
        if(edgeData is None): # If the interaction is not allowed in the backend:
            return None
        else: 
            return edgeData["signX"]

    def getCXGateTime(self, controlNode, targetNode) -> float:
        """Extracts the gate time [s] required for applying the quantum gate: " CX controlNode, targetNode ".

        Note:
            Since the CX gate is implemented as: 
            Ry(v * pi/2) q['controlNode'];
            Rxx(signX * pi/4) q['controlNode'], q['targetNode']; 
            Rx(-signX * pi/2) q['controlNode'];
            Rx(-v * signX * pi/2) q['targetNode'];
            Ry(-v * pi/2) q['controlNode'];

            The CX gate time for " CX controlNode, targetNode "  and " CX targetNode, controlNode " may be different!

            Where v is an optional parameter that can be +-1 and is not influencing the CX gate time (also signX is not
            influencing the CX gate time).

        Args:
            controlNode (Node): the control node of the CX gate.
            targetNode (Node): the target node of the CX gate.

        Returns: 
            float: the gate time [s] for applying the quantum gate: " CX controlNode, targetNode ".
                   -1.0 if the 'controlNode'-'targetNode' interaction is not allowed in the backend.
        
        """

        # Get the signX paramter for the controlNode-targetNode interaction:
        edgeData = self.couplingGraph.get_edge_data(controlNode, targetNode, None)
        if(edgeData is None): # If the interaction is not allowed in the backend:
            return -1.0
        signX = edgeData["signX"]
            
        # Get the gate time required for applying a Ry(pi/2) gate to the control node and a Rx(pi/2) gate to the 
        # control and target nodes:
        RyGateTimeControlNode = self.getSingleQubitGateTime(controlNode, math.pi/2, True, False)
        RxGateTimeControlNode = self.getSingleQubitGateTime(controlNode, math.pi/2, True, False)
        RxGateTimeTargetNode = self.getSingleQubitGateTime(targetNode, math.pi/2, True, False)

        # Get the Rxx(MS) gate time duration:
        RxxGateTime = edgeData["MsGateTime"]
       
        # The gate time of the CZ is computed supposing the gate is decomposed as:
        # Ry(v * pi/2) q['controlNode'];
        # Rxx(signX * pi/4) q['controlNode'], q['targetNode']; 
        # Rx(-signX * pi/2) q['controlNode'];
        # Rx(-v * signX * pi/2) q['targetNode'];
        # Ry(-v * pi/2) q['controlNode'];
        return RyGateTimeControlNode + RxxGateTime + RxGateTimeControlNode + RxGateTimeTargetNode + \
                                                                                                   RyGateTimeControlNode

    def getCXErrorRate(self, controlNode, targetNode) -> float:
        """Extracts the error rate for applying the quantum gate: " CX controlNode, targetNode ".

        Note:
            Since the CX gate is implemented as: 
            Ry(v * pi/2) q['controlNode'];
            Rxx(signX * pi/4) q['controlNode'], q['targetNode']; 
            Rx(-signX * pi/2) q['controlNode'];
            Rx(-v * signX * pi/2) q['targetNode'];
            Ry(-v * pi/2) q['controlNode'];

            The CX error rate for " CX controlNode, targetNode "  and " CX targetNode, controlNode " may be different!

            Where v is an optional parameter that can be +-1 and is not influencing the CX error rate (also signX is not
            influencing the CX error rate).

        Args:
            controlNode (Node): the control node of the CX gate.
            targetNode (Node): the target node of the CX gate.

        Returns: 
            float: the CX error rate for applying the quantum gate: " CX controlNode, targetNode ". 
                   -1.0 if the controlNode-targetNode interaction is not allowed in the backend.
        
        """

        # Get the signX paramter for the controlNode-targetNode interaction:
        edgeData = self.couplingGraph.get_edge_data(controlNode, targetNode, None)
        if(edgeData is None): # If the interaction is not allowed in the backend:
            return -1.0
        signX = edgeData["signX"]
            
        # Get the success rate for applying a Ry(pi/2) gate to the control node and a Rx(pi/2) gate to the 
        # control and target nodes:
        RySuccessRateControlNode = 1 - self.getSingleQubitErrorRate(controlNode, math.pi/2, True, False)
        RxSuccessRateControlNode = 1 - self.getSingleQubitErrorRate(controlNode, math.pi/2, True, False)
        RxSuccessRateTargetNode = 1 - self.getSingleQubitErrorRate(targetNode, math.pi/2, True, False)

        # Get the Rxx(MS) gate error rate: 
        RxxSuccessRate = 1 - edgeData["MsErrorRate"]
       
        # The gate time of the CZ is computed supposing the gate is decomposed as:
        # Ry(v * pi/2) q['controlNode'];
        # Rxx(signX * pi/4) q['controlNode'], q['targetNode']; 
        # Rx(-signX * pi/2) q['controlNode'];
        # Rx(-v * signX * pi/2) q['targetNode'];
        # Ry(-v * pi/2) q['controlNode'];
        return 1 - (RySuccessRateControlNode * RxxSuccessRate * RxSuccessRateControlNode * RxSuccessRateTargetNode * \
                                                                                               RySuccessRateControlNode)

    def getCZGateTime(self, controlNode, targetNode, isRZvirtual) -> float:
        """Extracts the gate time [s] for applying the quantum gate: " CZ controlNode, targetNode ".

        Note:
            The CZ gate time for " CX controlNode, targetNode "  and " CZ targetNode, controlNode " may be different!

        Args:
            controlNode (Node): the control node.
            targetNode (Node): the target node.
            isRZvirtual (bool): True if the RZ gates are implemented virtually, False otherwise.

        Returns:       
            float: the gate time [s] for applying the quantum gate: " CZ controlNode, targetNode ". 
                   -1.0 if the 'controlNode'-'targetNode' interaction is not allowed in the backend.
        """

        if( self.getDistance(controlNode, targetNode) != 1 ): # If the two nodes are not allowed to interact:
            return -1.0
        else: # If the two nodes are allowed to interact:
            # Get the gate time for applying a CX gate to the control and target node:
            CXgateTime = self.getCXGateTime(controlNode, targetNode)

            # Get the gate time for applying an Hadamard gate to the target node:
            if(isRZvirtual): # If the RZ gates are implemented virtually:
                # H is decomposed with RY(pi/2); RZ(pi); :
                HgateTime = self.getSingleQubitGateTime(targetNode, math.pi/2, False, isRZvirtual) + \
                            self.getSingleQubitGateTime(targetNode, math.pi, True, isRZvirtual) 
            else: # If the RZ gates are not implemented virtually:
                # H is decomposed with: RY(pi/2); RX(pi); :
                HgateTime = self.getSingleQubitGateTime(targetNode, math.pi/2, False, isRZvirtual) + \
                            self.getSingleQubitGateTime(targetNode, math.pi, False, isRZvirtual) 
                                                                                             
            # Compute the CZ gate time:
            CZgateTime = HgateTime + CXgateTime + HgateTime # The CZ quantum gate is decomposed with: 
                                                            # H targetNode; CX controlNode, targetNode; H targetNode:

            return CZgateTime

    def getSwapErrorRate(self, node1, node2) -> float:
        """Extracts the error rate for applyng a Swap gate to two nodes.

        Note:
            The symmetry of the Swap gate is exploited and the error rate is computed in the best case scenario.

        Args:
            node1 (Node): the node to be swapped.
            node2 (Node): the node to be swapped.

        Returns:
            float: the error rate for applying the Swap gate to 'node1' and 'node2'.
                   -1.0 if the node1-node2 interaction is not allowed in the backend.
        
        """

        if( self.getDistance(node1, node2) != 1 ): # If the two nodes are not allowed to interact in the backend:
            return -1.0
        else: # If the two nodes are allowed to interact in the backend:
            cxSuccessRate_12 = 1 - self.getCXErrorRate(node1, node2)
            cxSuccessRate_21 = 1 - self.getCXErrorRate(node2, node1)
            swapErrorRate = 1 - ( cxSuccessRate_12 * cxSuccessRate_21 * max(cxSuccessRate_12, cxSuccessRate_21) )
            return swapErrorRate
    
    def getSwapGateTime(self, node1, node2) -> float:
        """Extracts the gate time(ns) for applying a Swap gate to two nodes.

        Note:
            The simmetricity of the Swap gate is exploited and the gate time is computed in the best case scenario.

        Args:
            node1 (Node): the node to be swapped.
            node2 (Node): the node to be swapped.

        Returns:
            float: the gate time(ns) for applying the Swap gate to 'node1' and 'node2'.
                   -1.0 if the node1-node2 interaction is not allowed in the backend.
        """

        if( self.getDistance(node1, node2) != 1 ): # If the two nodes are not allowed to interact in the backend:
            return -1.0
        else: # If the two nodes are allowed to interact in the backend:
            cxGateTime_12 = self.getCXGateTime(node1, node2)
            cxGateTime_21 = self.getCXGateTime(node2, node1)
            swapGateTime = cxGateTime_12 + cxGateTime_21 + min(cxGateTime_12, cxGateTime_21)
            return swapGateTime