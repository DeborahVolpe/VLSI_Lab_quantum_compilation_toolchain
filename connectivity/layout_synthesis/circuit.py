from typing import Dict, KeysView, List
import re
import networkx as nx
from numpy import sign
import copy

from vertex import GateDAGVertex, DAGVertex, DAGVertexType
from backend import Backend

from qiskit import QuantumCircuit # Used only in debug for drawing a Circuit

class Circuit:
    """Represents a quantum circuit. Only circuits having one quantum and classical register are representable; the 
    first must be named "q", the latter "c".
    
    Note:
        Internally the quantum circuit is represented using a Directed Acyclic Graph (DAG).

        The vertex of the DAG can be single or two qubit gates and Measures, the edges are dependencies.

        When a circuit is instantiated from a QASM file the Measures are not appended to the DAG, they are kept 
        separated to allow the router of working only with quantum gates and then place all the Measures at the 
        topological end of the circuit.

    Args:
        qasm_file_name (str): the file name of the QASM file describing the quantum circuit.
        nq (int): size of the quantum register in the quantum circuit.
        nc (int): size of the classical register in the quantum circuit.

     Attributes:
        qasm_file_name (str): the file name of the QASM file describing the quantum circuit.
        meas (List[str]): list of QASM Measures lines. They are kept separated from the circuit DAG.
        nq (int): size of the quantum register in the quantum circuit.
        nc (int): size of the classical register in the quantum circuit.
        dag (nx.DiGraph): Directed Acyclic Graph (DAG) representing the quantum circuit.
        nLayers (int): the number of layers of the quantum circuit.
        
    """

    def __init__(self, qasm_file_name:str=None, nq:int=0, nc:int=0) -> None:

        # Initialize attributes:
        self.qasm_file_name = qasm_file_name 
        self.nLayers = 0
        self.dag = nx.DiGraph()  # Initialize an empty directed graph.
        self.meas = []
        self.nc = nc
        self.nq = nq

        # Private attributes:
        # self._isPlaced = False # True if the quantum circuit is placed, False otherwise.
        self._lastVertexAppliedToQubitId = [None] * self.nq # Stores the reference to the last vertex in the 
                                                            # quantum circuit applied to a specific qubit.

        if(not qasm_file_name is None): # If 'qasm_file_name' was specified when instantiating the quantum circuit:
            # Initialize the quantum circuit from the QASM file:
            self.initializeCircuitFromQASM()

    def initializeCircuitFromQASM(self) -> None:
        """Initialize the quantum circuit extracting all the necessary information from its QASM description file.

        Note:
            Modifies the quantum circuit.

            All the quantum gates are added to the DAG while the Measures are stored in the 'meas' list to allow the 
            router of working only with quantum gates and place all the Measures at the topological end of the circuit.

            The Barriers are ignored.
        
        """

        # Read the QASM file and store each line in a list:
        f = open(self.qasm_file_name, "r")
        lines = list(filter(None, (line.rstrip() for line in f)))
        f.close()

        # TODO: Remove spaces and comments from all the QASM description file lines.

        for line in lines: # For each QASM statement line:
            
            # Extract nq:
            result = re.match("\s*qreg\s+[a-zA-Z0-9_]+\[(\d+)\]\s*;", line)
            if(result):
                self.nq = int(result.group(1))
                # Since now the number of qubits was obtained from the QASM file:
                self._lastVertexAppliedToQubitId = [None] * self.nq
                continue # Next line.
            
            # Extract nc:
            result = re.match("\s*creg\s+[a-zA-Z0-9_]+\[(\d+)\]\s*;", line)
            if(result):
                self.nc = int(result.group(1))
                continue # Next line.

            # Single-qubit gate line:
            #result = re.match("(\w+)\s+([a-zA-Z0-9_]+)\[(\d)\]\s*;", line) # Does not work for U gates.
            result = re.match("^\s*([a-zA-Z0-9*_\(\)\.,\s\/-]+)\s*([a-zA-Z0-9_]+)\[(\d+)\]\s*;", line)
            if(result): 
                gateName = result.group(1)
                targetQubitId = int( result.group(3) )
                if(gateName!="qreg" and gateName!="creg"): # If the line is not a register(both quantum or classical) 
                                                           # definition:
                    # Add the gate to the quantum circuit:
                    gateDAGVertex = GateDAGVertex(gateName, targetQubitId=targetQubitId)
                    self.appendVertex(gateDAGVertex)
                continue # Next line.

            # Two-qubit gate line:
            result = re.match("^\s*([a-zA-Z0-9*_\(\)\.,\s\/-]+)\s+([a-zA-Z0-9_]+)\[(\d+)\]\s*,\s*[a-zA-Z0-9_]+\[(\d+)\]\s*;", line)
            if(result):
                # Extract the gate name, the control qubit id and the target qubit id from the QASM statement:
                gateName = result.group(1)
                controlQubitId = int( result.group(3) )
                targetQubitId = int( result.group(4) )
                
                # Add the gate to the quantum circuit:
                gateDAGVertex = GateDAGVertex(gateName, False, controlQubitId=controlQubitId, 
                                              targetQubitId=targetQubitId)
                self.appendVertex(gateDAGVertex)
                continue # Next line.

            # Measaure q->c line
            result = re.match("\s*measure\s+q\s*->\s*c\s*;", line)
            if(result): # If the line is a Measure whole register operation:
                for i in range(self.nq):
                    # Expand the Measure directive:
                    self.meas.append("measure q[" + str(i) + "]->c[" + str(i) + "];")
                continue # Next line.

            # Measure line:
            result = re.match("\s*measure\s*", line)
            if(result):
                self.meas.append(line)
                continue # Next line.

    def drawDAG(self):
        """Draws the quantum circuit DAG with Matplotlib.
        
        """

        pos = {} # Stores the positions of the vertices of the graph as they will be drawn. 

        # Set the positions of the vertices of the graph in order to draw the them layer after layer:
        for currLayer in range(1, self.nLayers+1):
            x = 0
            for gateDAGVertex in self.dag.nodes():
                if(gateDAGVertex.layer==currLayer):
                    pos[gateDAGVertex] = (x, -currLayer)
                    x = x + 1

        # Draw the DAG:
        options = {
            "node_color": "#DC143C",
            "edge_color": "#A0CBE2",
            "width": 4,
            "with_labels": True,
        }
        nx.draw(self.dag, labels={vertex: vertex for vertex in self.dag.nodes()}, pos=pos, **options)

    def getAllDependentVertices(self, dagVertex:DAGVertex) -> KeysView[DAGVertex]:
        """Extracts all the dependent vertices.

        Args:
            dagVertex (DAGVertex): the vertex from which to extract all the dependent vertices.

        Returns:
            KeysView[DAGVertex]: all the quantum gates dependent to the input one.
        """

        # Find all the paths in the DAG from the input vertex to any other one reachable:
        d = nx.single_source_shortest_path(self.dag, dagVertex)

        # Remove the path from the input vertex to itself:
        d.pop(dagVertex)

        return d.keys() # The keys are the reacheable vertices(that is, the dependent ones)

    def appendVertex(self, dagVertex:DAGVertex) -> None:
        """Appends a vertex to the quantum circuit DAG.

        Note:
            Modifies the quantum circuit.
            The added vertex has dependencies to the last one applied to the same qubits present in the circuit
            before the insertion.

        Args:
            dagVertex (DAGVertex): the vertex to append to the quantum circuit DAG.
        
        """

        # Add the vertex to the DAG:
        self.dag.add_node(dagVertex)

        # Select the qubit ids to check for dependencies:
        qubitIdsToCheck = []
        if( dagVertex.type is DAGVertexType.Gate ): # If the vertex to append is a quantum gate:
            if(not dagVertex.controlQubitId is None):
                qubitIdsToCheck.append(dagVertex.controlQubitId)
            if(not dagVertex.targetQubitId is None):
                qubitIdsToCheck.append(dagVertex.targetQubitId)
        elif( dagVertex.type is DAGVertexType.Measure ): # If the vertex to append is a Measure:
            if(not dagVertex.qubitId is None):
                qubitIdsToCheck.append(dagVertex.qubitId)

        # Add the dependency edges to the DAG:
        for qubitId in qubitIdsToCheck: 
            if(not self._lastVertexAppliedToQubitId[qubitId] is None): # If the circuit already contains at least one
                                                                       # vertex applied to the current qubit:
                # Add one dependency edge:
                self.dag.add_edge(self._lastVertexAppliedToQubitId[qubitId], dagVertex)
            # The newly added vertex is the last one applied to the current qubit:
            self._lastVertexAppliedToQubitId[qubitId] = dagVertex

        # Set the layer information for the newly added vertex:
        maxFatherLayer = 0 # The maximum layer number among the vertices on which the newly added one depends.
        for edge in self.dag.in_edges(dagVertex):
            if(edge[0].layer > maxFatherLayer): # 'edge[0]' because int a directed graph the tail of the arrow of the 
                                                # edge is in position 0.
                maxFatherLayer = edge[0].layer
        newGateLayerNumber = maxFatherLayer + 1
        dagVertex.layer = newGateLayerNumber

        # Update the number of layers information of the quantum circuit:
        if(newGateLayerNumber > self.nLayers):
            self.nLayers = newGateLayerNumber

    def extractLayer1(self) -> List[DAGVertex]:
        """Extracts the first layer of a quantum circuit. The first layer is the set of vertices that have no 
        dependencies.

        Note:
            Modifies the quantum circuit. The first layer is extracted and removed. The number of layers in the circuit
            and the layer information of each vetex is updated accordingly.

        Returns:
            List[DAGVertex]: the list of vertices of the first layer.
        
        """

        layer1 = [dagVertex for dagVertex in self.dag.nodes() if dagVertex.layer==1]

        # Remove the layer 1 from the quantum circuit:
        for dagVertex in layer1:

            # Check if the vertex is the last one applied to a qubit:
            if( dagVertex in self._lastVertexAppliedToQubitId):
                # After the vertex is remove there will be no vertex acting on this qubit(since it belongs to layer 1):
                self._lastVertexAppliedToQubitId[self._lastVertexAppliedToQubitId.index(dagVertex)] = None

            # Remove the vertex from the DAG:
            self.dag.remove_node(dagVertex)

        # After the layer 1 is extracted, the number of layers in the quantum circuits is reduced by 1:
        self.nLayers = self.nLayers - 1

        # Reduce the layer number of each vertex by 1:
        for dagVertex in self.dag.nodes():
            dagVertex.layer = dagVertex.layer - 1 

        return layer1

    def toQASM(self, includeMeasures=False, translateSwap=False, CZtoRZZ=False, CXtoRXX=False, backend:Backend=None) \
                                                                                                                 -> str:
        """Extracts the QASM description from the quantum circuit DAG.

        Args:
            includeMeasures (bool): if True also the measure operations stored in the 'meas' list are added to the QASM 
                description. They are not added otherwise.
            translateSwap (bool): if True the swap gates are translated based on the native gates available in the
                backend quantum technology (CX gates for superconducting and ion trap devices, CZ gates for NMR and 
                quantum dot ones). They are not translated otherwise.
            CZtoRZZ (bool): if True, for NMR and quantum dot technologies, the CZ gates composing a swap are further 
                decomposed using RZZ and Rz gates. They are not further decomposed otherwise.     
            CXtoRXX (bool): if True, for ion trap technology, the CX gates composing a swap are further decomposed using
                Rxx, Ry and Rx gates (with the optional parameter v fixed to 1). They are not further decomposed 
                otherwise.  
            backend (Backend): required only for the swap gates translation, to correctly decompose the swap gates.

        Returns:
            str: QASM description of the quantum circuit.
        
        """

        # String of QASM describing the quantum circuit:
        qasmCircuit = ""

        # Add the first 4 lines to the QASM description of the quantum circuit:
        qasmCircuit = qasmCircuit + "OPENQASM 2.0;" + "\n"
        qasmCircuit = qasmCircuit + "include \"qelib1.inc\";" + "\n"
        qasmCircuit = qasmCircuit + "qreg q[" + str(self.nq) + "];" + "\n"
        qasmCircuit = qasmCircuit + "creg c[" + str(self.nc) + "];" + "\n"

        # Extract all the layers and store them in a list:
        layers = [[] for x in range(self.nLayers)]
        for dagVertex in self.dag.nodes():
            layers[dagVertex.layer-1].append(dagVertex)

        # Layer by layer add the QASM statement of each vertex stored in the DAG:
        for layer in layers:
            for dagVertex in layer: # For each gate of the current first layer:
                if(translateSwap and dagVertex.gateName.lower()=="swap"): # If the swap gates must be translated:
                    nativeSwapLines = self._translateSwapQasmLine(dagVertex, backend, CZtoRZZ, CXtoRXX)
                    for line in nativeSwapLines:
                        qasmCircuit = qasmCircuit + line + "\n"
                else: # For the other gates:
                    # Add the QASM statement describing the current vertex:
                    qasmCircuit = qasmCircuit + str(dagVertex) + "\n" 

        # Add the measure lines if requested:
        if(includeMeasures):
            for line in self.meas:
                qasmCircuit = qasmCircuit + line + "\n"

        return qasmCircuit

    def drawUsingQiskit(self, figureTitle:str) -> None:
        """Draws the quantum circuit using the Qiskit library with Matplotlib as output format. 

        Note:
            Used only for debugging purposes.

            The quantum circuit to draw also includes the measrue operations.

        Args:
            figureTitle (str): the title of the figure to be displayed.
        
        """
        
        # Represent the quantum circuit using the Qiskit 'QuantumCircuit':
        qiskitQuantumCircuit = QuantumCircuit.from_qasm_str( self.toQASM() )

        # Draw the quantum circuit using Matplotlib:
        figure = qiskitQuantumCircuit.draw("mpl")

        # Set figure title:
        figure.canvas.manager.set_window_title(figureTitle)

    def _translateSwapQasmLine(self, swapDAGVertex:GateDAGVertex, backend:Backend, CZtoRZZ:bool, CXtoRXX:bool) \
                                                                                                            ->List[str]:
        """Translates a swap gate vertex into QASM 2.0 lines, using only the native gates available in the provided 
        target technology (CX gates for superconducting and ion trap devices, CZ gates for NMR and quantum dot ones). 

        Args:
            swapDAGVertex (GateDAGVertex): the swap gate vertex to translate.
            backend (Backend): the target backend for which translating the swap gate.
            CZtoRZZ (bool): if True, for NMR and quantum dot technologies, the CZ gates composing a swap are further 
                decomposed using RZZ and Rz gates. They are not further decomposed otherwise.     
            CXtoRXX (bool): if True, for ion trap technology, the CX gates composing a swap are further decomposed using
                Rxx, Ry and Rx gates (with the optional parameter v fixed to 1). They are not further decomposed 
                otherwise.           
        
        Returns:
            List[str]: the list of QASM 2.0 lines that implement the input swap gate.
        
        """

        nativeSwapLines = []

        if(backend.technology=="S" or backend.technology=="I"): # Superconducting and ion trap quantum technology:

            if(backend.technology=="I" and CXtoRXX):
                controlNode = backend.nodes[swapDAGVertex.controlQubitId]
                targetNode = backend.nodes[swapDAGVertex.targetQubitId]
                signX = backend.getSignX(controlNode, targetNode)
                angleRx = "pi/2" if signX<0 else "-pi/2"
                angleRxx = "pi/4" if signX>0 else "-pi/4"

                nativeSwapLines.append( "ry(pi/2) q[{0}];".format(controlNode.id) )
                nativeSwapLines.append( "rxx({0}) q[{1}], q[{2}];".format(angleRxx, controlNode.id, targetNode.id) )
                nativeSwapLines.append( "rx({0}) q[{1}];".format(angleRx, controlNode.id) )
                nativeSwapLines.append( "rx({0}) q[{1}];".format(angleRx, targetNode.id) )
                nativeSwapLines.append( "ry(-pi/2) q[{0}];".format(targetNode.id) )

                nativeSwapLines.append( "ry(pi/2) q[{0}];".format(targetNode.id) )
                nativeSwapLines.append( "rxx({0}) q[{1}], q[{2}];".format(angleRxx, targetNode.id, controlNode.id) )
                nativeSwapLines.append( "rx({0}) q[{1}];".format(angleRx, targetNode.id) )
                nativeSwapLines.append( "rx({0}) q[{1}];".format(angleRx, controlNode.id) )
                nativeSwapLines.append( "ry(-pi/2) q[{0}];".format(controlNode.id) )

                nativeSwapLines.append( "ry(pi/2) q[{0}];".format(controlNode.id) )
                nativeSwapLines.append( "rxx({0}) q[{1}], q[{2}];".format(angleRxx, controlNode.id, targetNode.id) )
                nativeSwapLines.append( "rx({0}) q[{1}];".format(angleRx, controlNode.id) )
                nativeSwapLines.append( "rx({0}) q[{1}];".format(angleRx, targetNode.id) )
                nativeSwapLines.append( "ry(-pi/2) q[{0}];".format(targetNode.id) )
            else:
                nativeSwapLines.append("cx q[{0}], q[{1}];"\
                                                     .format(swapDAGVertex.controlQubitId, swapDAGVertex.targetQubitId))
                nativeSwapLines.append("cx q[{0}], q[{1}];"\
                                                     .format(swapDAGVertex.targetQubitId, swapDAGVertex.controlQubitId))
                nativeSwapLines.append("cx q[{0}], q[{1}];"\
                                                     .format(swapDAGVertex.controlQubitId, swapDAGVertex.targetQubitId))
        elif(backend.technology=="M" or backend.technology=="Q"): # NMR and quantum dot quantum technology :
            nativeSwapLines.append("rz(pi/2) q[" + str(swapDAGVertex.targetQubitId) + "];")
            nativeSwapLines.append("rx(pi/2) q[" + str(swapDAGVertex.targetQubitId) + "];")
            nativeSwapLines.append("rz(pi/2) q[" + str(swapDAGVertex.targetQubitId) + "];")
            if(CZtoRZZ):
                controlNode = backend.nodes[swapDAGVertex.controlQubitId]
                targetNode = backend.nodes[swapDAGVertex.targetQubitId]
                if(backend.technology=="M"):
                    signJ = sign(backend.getJCoupling(controlNode, targetNode))
                elif(backend.technology=="Q"):
                    signJ = sign(backend.getExchangeInteraction(controlNode, targetNode))
                angleRz = "pi/2" if signJ<0 else "-pi/2"
                angleRzz = "pi/2" if signJ>0 else "-pi/2"
                nativeSwapLines.append("rz({0}) q[{1}];".format(angleRz, str(swapDAGVertex.controlQubitId)))
                nativeSwapLines.append("rz({0}) q[{1}];".format(angleRz, str(swapDAGVertex.targetQubitId)))
                nativeSwapLines.append("rzz({0}) q[{1}], q[{2}];".format(angleRzz, 
                                              str(swapDAGVertex.controlQubitId), str(swapDAGVertex.targetQubitId)))
            else:
                nativeSwapLines.append("cz q[" + str(swapDAGVertex.controlQubitId) + 
                                                                    "], q[" + str(swapDAGVertex.targetQubitId) + "];")
            nativeSwapLines.append("rz(pi/2) q[" + str(swapDAGVertex.targetQubitId) + "];")
            nativeSwapLines.append("rx(pi/2) q[" + str(swapDAGVertex.targetQubitId) + "];")
            nativeSwapLines.append("rz(pi/2) q[" + str(swapDAGVertex.targetQubitId) + "];")

            nativeSwapLines.append("rz(pi/2) q[" + str(swapDAGVertex.controlQubitId) + "];")
            nativeSwapLines.append("rx(pi/2) q[" + str(swapDAGVertex.controlQubitId) + "];")
            nativeSwapLines.append("rz(pi/2) q[" + str(swapDAGVertex.controlQubitId) + "];")
            if(CZtoRZZ):
                controlNode = backend.nodes[swapDAGVertex.controlQubitId]
                targetNode = backend.nodes[swapDAGVertex.targetQubitId]
                if(backend.technology=="M"):
                    signJ = sign(backend.getJCoupling(controlNode, targetNode))
                elif(backend.technology=="Q"):
                    signJ = sign(backend.getExchangeInteraction(controlNode, targetNode))
                angleRz = "pi/2" if signJ<0 else "-pi/2"
                angleRzz = "pi/2" if signJ>0 else "-pi/2"
                nativeSwapLines.append("rz({0}) q[{1}];".format(angleRz, str(swapDAGVertex.controlQubitId)))
                nativeSwapLines.append("rz({0}) q[{1}];".format(angleRz, str(swapDAGVertex.targetQubitId)))
                nativeSwapLines.append("rzz({0}) q[{1}], q[{2}];".format(angleRzz, 
                                              str(swapDAGVertex.targetQubitId), str(swapDAGVertex.controlQubitId)))
            else:
                nativeSwapLines.append("cz q[" + str(swapDAGVertex.targetQubitId) + 
                                                                   "], q[" + str(swapDAGVertex.controlQubitId) + "];")
            nativeSwapLines.append("rz(pi/2) q[" + str(swapDAGVertex.controlQubitId) + "];")
            nativeSwapLines.append("rx(pi/2) q[" + str(swapDAGVertex.controlQubitId) + "];")
            nativeSwapLines.append("rz(pi/2) q[" + str(swapDAGVertex.controlQubitId) + "];")

            nativeSwapLines.append("rz(pi/2) q[" + str(swapDAGVertex.targetQubitId) + "];")
            nativeSwapLines.append("rx(pi/2) q[" + str(swapDAGVertex.targetQubitId) + "];")
            nativeSwapLines.append("rz(pi/2) q[" + str(swapDAGVertex.targetQubitId) + "];")
            if(CZtoRZZ):
                controlNode = backend.nodes[swapDAGVertex.controlQubitId]
                targetNode = backend.nodes[swapDAGVertex.targetQubitId]
                if(backend.technology=="M"):
                    signJ = sign(backend.getJCoupling(controlNode, targetNode))
                elif(backend.technology=="Q"):
                    signJ = sign(backend.getExchangeInteraction(controlNode, targetNode))
                angleRz = "pi/2" if signJ<0 else "-pi/2"
                angleRzz = "pi/2" if signJ>0 else "-pi/2"
                nativeSwapLines.append("rz({0}) q[{1}];".format(angleRz, str(swapDAGVertex.controlQubitId)))
                nativeSwapLines.append("rz({0}) q[{1}];".format(angleRz, str(swapDAGVertex.targetQubitId)))
                nativeSwapLines.append("rzz({0}) q[{1}], q[{2}];".format(angleRzz, 
                                              str(swapDAGVertex.controlQubitId), str(swapDAGVertex.targetQubitId)))
            else:
                nativeSwapLines.append("cz q[" + str(swapDAGVertex.controlQubitId) + 
                                                                    "], q[" + str(swapDAGVertex.targetQubitId) + "];")
            nativeSwapLines.append("rz(pi/2) q[" + str(swapDAGVertex.targetQubitId) + "];")
            nativeSwapLines.append("rx(pi/2) q[" + str(swapDAGVertex.targetQubitId) + "];")
            nativeSwapLines.append("rz(pi/2) q[" + str(swapDAGVertex.targetQubitId) + "];")

        return nativeSwapLines