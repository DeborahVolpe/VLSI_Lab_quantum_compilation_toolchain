class Node:
    """Represents a node of a NISQ device, that is, a physical qubit.

    Attributes:
        id (int): node identifier.
    
    """

    def __init__(self, id) -> None:
        
        self.id = id # Node identifier
    
    def __str__(self) -> str:
        """Specifies how to cast to a string. 
        
        """

        return "n[" + str(self.id)+"]"