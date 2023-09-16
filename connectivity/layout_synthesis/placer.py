from typing import List
import re

from vertex import DAGVertexType
from backend import Backend
from node import Node
from simulatedAnnealing import *

class Placer:
    """Takes care of performing the placement for a quantum circuit having a specific NISQ device as the target of the 
    placement process.
    
    Note:
        Placing means performing an initial on-to-one mapping between logical qubits, the "q[x]" of the quantum circuit, 
        to physical qubits, that is, nodes of a specific NISQ device.  
    
        After the placement is performed the circuit is modified and relabelled. All the logical qubits "q[x]" are 
        relabeled into the mapped physical qubits "q[y]" where y is the id of a node of the target NISQ device.

    Args:
        backend (Backend): the NISQ device target of the placement process.

    Attributes:
        backend (Backend): the NISQ device target of the placement process.
        
    """

    def __init__(self, backend:Backend) -> None:

        # Initialize attributes:
        self.backend = backend 

    def place(self, circuit, initialMapping) -> None:
        """Modifies the quantum circuit performing the placement.

        Note:
            The input quantum circuit is supposed composed of gates applied to logical qubits.

            After the placement is performed, the quantum circuit is modified. All the quantum gates in the DAG and
            all the Measures lines are relabeled according to the initial mapping.
        
        Args:
            circuit (Circuit): the quantum circuit containing the logical qubits interactions.
            initialMapping (List[Node]): the one-to-one mapping to use during the placement process.
                                         'initialMapping[0]'='backend.nodes[3]' means that the logical qubit "q[0]" of 
                                         the quantum circuit is mapped to the node with id=3 of the backend.
        
        """

        # Print general information:
        print("[Placer]: starting the placing step with the provided initial mapping.")
        print("[Placer]: initial mapping to be applied:")
        for node in initialMapping:
            print( "logical qubit " + str(initialMapping.index(node)) + " mapped to node " + str(node.id) )

        # Check tha the provided initial mapping is correct:
        if( len(initialMapping) != circuit.nq ):
            print("[Placer]: error! the provided initial mapping size is not equal to the number of logical qubits in\
                   the quantum circuit. Nothing was modified.")
            return

        for node in initialMapping:
            if(not node in self.backend.nodes):
                print("[Placer]: error! one or more nodes in the provided initial mapping do not appertain to the \
                       target backend. Nothing was modified.")
                return

        for dagVertex in circuit.dag.nodes(): # For each vertex of the quantum circuit:

            if(dagVertex.type is DAGVertexType.Gate): # If the vertex is a quantum gate:
                # Relabel the control qubit id according to the initial mapping:
                if(not dagVertex.controlQubitId is None):
                    dagVertex.controlQubitId = initialMapping[dagVertex.controlQubitId].id

                # Relabel the target qubit id according to the initial mapping:
                if(not dagVertex.targetQubitId is None):
                    dagVertex.targetQubitId = initialMapping[dagVertex.targetQubitId].id

        for line in list(circuit.meas): # For each Measure line of the quantum circuit:
           
            # Extract the Measure operation inforamtion:
            result = re.match("measure\s+([a-zA-Z0-9_]+)\[(\d+)\]\s*->\s*([a-zA-Z0-9_]+)\[(\d+)\]\s*;", line)
            if(result):
                             
                logicQubitId = int( result.group(2) ) 
                nodeId = initialMapping[logicQubitId].id

                # Relabel the Measure line:
                circuit.meas[circuit.meas.index(line)] = \
                     re.sub(r"(measure\s+[a-zA-Z0-9_]+\[)\d+(\]\s*->\s*([a-zA-Z0-9_]+)\[(\d+)\]\s*;)", r"\g<1>{0}\g<2>"\
                                                                                                  .format(nodeId), line)
                
        # Now that the circuit is placed the size of the quantum register is the number of nodes of the backend.
        circuit.nq = self.backend.n_nodes 
        
        print("[Placer]: the quantum circuit was correctly placed!")

    def getTrivialMapping(self, circuit) -> List[Node]:
        """Computes the initial mapping for a quantum circuit using a trivial strategy: the logical qubit with id=i is
        mapped to the node with id=i of the backend.

        Args:
            circuit (Circuit): the quantum circuit for which to compute the trivial initial mapping.

        Returns:
            List[Node]: the trivial initial mapping.
        
        """

        trivialMapping = []

        for logicalQubitId in range(circuit.nq):
            trivialMapping.append( self.backend.nodes[logicalQubitId] )

        return trivialMapping

    def getSimulatedAnnealingDenseMapping(self, circuit, Ti=10, Tf=1e-6, delta=0.9) -> List[Node]:
        """Computes the initial mapping using a strategy inspired from the Qiskit DenseLayout. The idea implemented is
        to use Simulated Annealing in order to find the mapping in which the nodes have the greatest connectivity. For
        connectivity it is intended the total number of edges of each node.

        Note:
            This strategy is random(hardware-unaware). The only hardware information required is the minimal one, that
            is, the coupling-graph.

        Args:
             circuit (Circuit): the quantum circuit containing the logical qubits interactions.

        Returns:
            List[Node]: the computed initial mapping.
        
        """

        print("[Placer]: generating the initial mapping using the SaDenseMapping algorithm with Ti={0}, Tf={1} and "\
              "delta={2}".format(Ti, Tf, delta))
        return simulatedAnnealing(Ti, Tf, delta, self.getTrivialMapping(circuit), costFunctionConnectivity, True, 
                                  getNeighbourRandom, self.backend, circuit)

    def getSimulatedAnnealingHaMapping(self, circuit, HaParameters, Ti=10, Tf=1e-6, delta=0.9) -> List[Node]:
        """Computes the initial mapping finding one such that the sum of the nodes distances(where the distance is the 
        entry in the D matrix of the HA Routing algorithm) for every interacting node in each two-qubits gates composing 
        the input circuit is minimised. Simulated Annealing is used in order to compute the optimal mapping.

        Note:
            This strategy is hardware-aware.

        Args:
            circuit (Circuit): the quantum circuit containing the logical qubits interactions.
            HaParameters (List[float, float, float, bool]): The list must contain in order:
                                                            1) swapNumberWeight
                                                            2) swapErrorWeight
                                                            3) swapTimeWeight
                                                            4) isRZvirtual

        Returns:
            List[Node]: the computed initial mapping.
        
        """

        print("[Placer]: generating the initial mapping using the SaHaMapping algorithm with Ti={0}, Tf={1} and "\
              "delta={2}".format(Ti, Tf, delta))
        return simulatedAnnealing(Ti, Tf, delta, self.getTrivialMapping(circuit), 
                                  costFunctionHardwareAwareTotalDistance, False, getNeighbourHardwareAware, self.backend, 
                                  circuit, HaParameters)
