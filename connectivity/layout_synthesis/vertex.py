from enum import Enum

class DAGVertexType(Enum):
    """Represents the type of a vertex in the DAG representation of the quantum circuit. A vertex can be a quantum
    gate or a Measure.

    """

    Gate = 0
    Measure = 1
class DAGVertex():
    """Represents a generic vertex in the DAG representation of the quantum circuit.

    Attributes:
        layer (int): the number of the layer in the quantum circuit to which the gate belongs. A layer is a set of gates
                     that have no dependencies one another.
        type (DAGVertexType): the type of the vertex(Gate or Measure).
    
    """
    
    def __init__(self, type:DAGVertexType) -> None:
        self.layer = 0 # Since the first layer of a quantum circuit is always layer 1.
        self.type = type
class GateDAGVertex(DAGVertex):
    """Represents a quantum gate of a quantum circuit in the DAG representation of the circuit.

    Note:
        The placement and routing phases expect only single and two-qubit gate. For this reason multi-qubit gates are 
        not representable.

        The placement and routing phases expect only CX and CZ gate as two-qubit gate. For this reason only CX, CZ 
        and SWAP gates should be modeled.

    Args:
        gateName (str): the quantum gate name as it appears in the QASM statement.
        isSingleQubitGate (bool): True if the quantum gate is a single-qubit gate, False if it is a two-qubit gate.
        controlQubitId (int): the control qubit id of a two-qubit gate.
        targetQubit (int): the target qubit id of a two-qubit gate. If the quantum gate is a single-qubit one, the 
                           involved qubit id is stored here.  
    
    Attributes:
        isSingleQubitGate (bool): True if the quantum gate is a single-qubit gate, False if it is a two-qubit gate.
        gateName (str): the quantum gate name as it appears in the QASM statement.
        controlQubitId (int): the control qubit id of a two-qubit gate.
        targetQubitId (int): the target qubit id of a two-qubit gate. If the quantum gate is a single-qubit one, the 
                             involved qubit is stored here.
        layer (int): the number of the layer in the quantum circuit to which the gate belongs. A layer is a set of gates
                     that have no dependencies one another.
        type (DAGVertexType): 'DAGVertexType.Gate' since the vertex is a quantum gate.

    """

    def __init__(self, gateName:str, isSingleQubitGate:bool=True, controlQubitId:int=None, 
                 targetQubitId:int=None) -> None:

        super().__init__(DAGVertexType.Gate)

        # Initialize attributes:
        self.gateName = gateName
        self.isSingleQubitGate = isSingleQubitGate
        self.controlQubitId = controlQubitId
        self.targetQubitId = targetQubitId

    def __str__(self) -> str:
        """Specifies how to cast to a string. 
        
        """

        # The cast to string is done with the quantum gate QASM statement.
        # Prepare the QASM gate statement:
        gateStatement = self.gateName
        if(self.isSingleQubitGate):
            gateStatement = gateStatement + " q[" + str(self.targetQubitId) + "];"
        else:
            gateStatement = gateStatement + " q[" + str(self.controlQubitId) + "], q[" + str(self.targetQubitId) + "];"

        return gateStatement

class MeasureDAGVertex(DAGVertex):
    """Represents a Measure of a qubit into a classical bit in the DAG representation of the circuit.
    
    Attributes:
        qubitId (int): the id of the qubit to measure.
        clbitId (int): the id of the classical bit were the outcome of the Measure operation will be stored. 
        layer (int): the number of the layer in the quantum circuit to which the Measure operation belongs. A layer is a
                     set of gates that have no dependencies one another.
        type (DAGVertexType): 'DAGVertexType.Measure' since the vertex is a Measure.

    """

    def __init__(self, qubitId:int, clbitId:int) -> None:

        super().__init__(DAGVertexType.Measure)

        # Initialize attributes:
        self.qubitId = qubitId
        self.clbitId = clbitId

    def __str__(self) -> str:
        """Specifies how to cast to a string. 
        
        """

        measureStatement = "measure q[" + str(self.qubitId) + "] -> c[" + str(self.clbitId) + "];"

        return measureStatement
