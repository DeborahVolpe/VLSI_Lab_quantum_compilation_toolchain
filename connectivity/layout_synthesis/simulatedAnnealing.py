from typing import List
import random
import math

from node import Node
from router import _computeDistanceMatricesHardwareAwareRouting
from vertex import DAGVertexType

def simulatedAnnealing(Ti, Tf, delta, initMapping, costFunction, maximise, getNeighbour, backend, circuit, 
                                                                                       HaParameters=None) -> List[Node]:
    """Simulated Annealing algorithm implementation to find an initial mapping that minimizes/maximizes a specific cost 
    function.

    Args:
        Ti (float): initial temperature.
        Tf (float): final temperature.
        delta (float): temperature reduction constant(must be 0 < delta < 1).    
        initMapping (List[Node]): starting mapping for the simulated annealing algorithm.
        costFunction (function): cost function to optimize.
        maximise (bool): True if the cost function must be maximised. False if it must be minimised.
        getNeighbour (function): function that returns a new candidate mapping for exploring the search space.
        backend (Backend): the backend for which the initial mapping must be computed.
        circuit (Circuit): the quantum circuit containing the logical qubits interactions.
        HaParameters (List[float, float, float, bool]): used only by the costFunction and getNeighbour methods that are
                                                        hardware-aware. Can also be None if both are hardware-unaware.
                                                        The list must contain in order:
                                                        1) swapNumberWeight
                                                        2) swapErrorWeight
                                                        3) swapTimeWeight
                                                        4) isRZvirtual

    Returns:
        List[Node]: an initial mapping that optimizes the given cost function.

    """

    T = Ti # Stores the current temperature.
    currMapping = initMapping # Stores the current mapping.
    currCost = costFunction(currMapping, backend, circuit, HaParameters) # Stores the cost of the current mapping.
    optMapping = initMapping  # Stores the optimal mapping found. 
    optCost = costFunction(optMapping, backend, circuit, HaParameters) # Stores the optimal cost found.

    # Simulated annealing loop:
    while(T>=Tf):

        neighMapping = getNeighbour(currMapping, backend, HaParameters)
        neighCost = costFunction(neighMapping, backend, circuit, HaParameters)

        if(maximise): # Maximise the cost function:
            if(neighCost>optCost):
                optCost = neighCost
                optMapping = neighMapping

            if(neighCost>currCost):
                currCost = neighCost
                currMapping = neighMapping
            else:
                a = random.uniform(0, 1)
                b = math.exp( (neighCost-currCost)/T )
                if ( a < b ):
                    currCost = neighCost
                    currMapping = neighMapping  
        else: # Minimise the cost function:
            if(neighCost<optCost):
                optCost = neighCost
                optMapping = neighMapping

            if(neighCost<currCost):
                currCost = neighCost
                currMapping = neighMapping
            else:
                a = random.uniform(0, 1)
                b = math.exp( (currCost-neighCost)/T )
                if ( a < b ):
                    currCost = neighCost
                    currMapping = neighMapping  
        # Cool down the temperature:
        T *= delta
    
    print("[SimulatedAnnealing]: optimal cost function value found: {0}".format(optCost) )

    return optMapping

def getNeighbourHardwareAware(mapping, backend, HaParameters) -> List[Node]:
    """Top-level policy for finding a neighbour mapping. It randomly choses what low-level algorithm to use in order to
    obtain the new mapping.

    Note:
        This is the hardware-aware implementation of the policy.

    Args:
        mapping (List[Node]): the current initial mapping.
        backend (Backend): the backend for which the nodes of 'mapping' belong.
        HaParameters (List[float, float, float, bool]): required. The list must contain in order:
                                                        1) swapNumberWeight
                                                        2) swapErrorWeight
                                                        3) swapTimeWeight
                                                        4) isRZvirtual

    Returns:
        List[Node]: a new initial mapping for the provided backend.

    """

    # The possible low-level algorithms:
    lowLevelAlgorithms = [_getNeighbourRandomShuffle, _getNeighbourHaReset, _getNeighbourHaExpand]

    # Randomly choose on low-level algorithm:
    selectedAlgorithm = random.choices(lowLevelAlgorithms, weights=(90, 2, 8), k=1)[0]

    # Compute the new mapping:
    newMapping = selectedAlgorithm(mapping, backend, HaParameters)

    return newMapping

def getNeighbourRandom(mapping, backend, HaParameters=None) -> List[Node]:
    """Top-level policy for finding a neighbour mapping. It randomly choses what low-level algorithm to use in order to
    obtain the new mapping.

    Note:
        This is the random(hardware-unaware) implementation of the policy.

    Args:
        mapping (List[Node]): the current initial mapping.
        backend (Backend): the backend for which the nodes of 'mapping' belong.
        HaParameters (List[float, float, float, bool]): not required. Can also be None.

    Returns:
        List[Node]: a new initial mapping for the provided backend.

    """

    # The possible low-level algorithms:
    lowLevelAlgorithms = [_getNeighbourRandomShuffle, _getNeighbourRandomReset, _getNeighbourRandomExpand]

    # Randomly choose on low-level algorithm:
    selectedAlgorithm = random.choices(lowLevelAlgorithms, weights=(90, 2, 8), k=1)[0]

    # Compute the new mapping:
    newMapping = selectedAlgorithm(mapping, backend, HaParameters)

    return newMapping

def _getNeighbourRandomReset(mapping, backend, HaParameters=None) -> List[Node]:
    """Returns a new completely random initial mapping.

    Note:
        This is the random(hardware-unaware) implementation of the reset.

    Args:
        mapping (List[Node]): the current initial mapping.
        backend (Backend): the backend for which the nodes of 'mapping' belong.
        HaParameters (List[float, float, float, bool]): not required. Can also be None.

    Returns:
        List[Node]: a new completely random initial mapping for the provided backend.
    
    """
    
    randomMapping = random.sample( backend.nodes, len(mapping) )

    return randomMapping

def _getNeighbourHaReset(mapping, backend, HaParameters) -> List[Node]:
    """Returns a new initial mapping starting from a random logical qubit mapped to a random node and expanding the 
    mapping until a complete one is generated. 
    
    Note:
        This is the hardware-aware implementation of the reset.

    Args:
        mapping (List[Node]): the current initial mapping.
        backend (Backend): the backend for which the nodes of 'mapping' belong.
        HaParameters (List[float, float, float, bool]): required. The list must contain in order:
                                                        1) swapNumberWeight
                                                        2) swapErrorWeight
                                                        3) swapTimeWeight
                                                        4) isRZvirtual

    Returns:
        List[Node]: a new initial mapping for the provided backend.
    
    """

    # Compute the D matrix, used for score assignment:
    S, E, T, D = _computeDistanceMatricesHardwareAwareRouting(backend, HaParameters[0], HaParameters[1], 
                                                            HaParameters[2], backend.technology, HaParameters[3], False)
    
    # Random starting point of the new mapping:
    nq = len(mapping)
    randomQubit = random.randint(0, nq-1)
    randomNode = random.choice(backend.nodes)
    newMapping = [None] * nq
    newMapping[randomQubit] = randomNode

    # Iterate to expand the mapping:
    lastInsertedNode = randomNode
    while(None in newMapping): # While there is a logical qubit not mapped to a node:
        
        # The candidate nodes for the new mapping are the neighbors of the last inserted one: 
        candidateNodes = []
        for neighbor in backend.couplingGraph.neighbors(lastInsertedNode):
            if( (neighbor not in candidateNodes) and (not neighbor in newMapping) ):
                candidateNodes.append(neighbor)

        # Assign a score to each candidate node:
        candidateScores = []
        for candidate in candidateNodes:
            score = D[lastInsertedNode.id][candidate.id]
            candidateScores.append(score)

        if(len(candidateNodes)>0): # If there is at least one candidate node:
            # Pick the best candidate node:
            bestCandidate = candidateNodes[ candidateScores.index( min(candidateScores) ) ]
        else: # If no candidate node can be found:
            # Pick a node randomly from the backend:
            bestCandidate = random.choice(backend.nodes)
            while(bestCandidate in newMapping):
                bestCandidate = random.choice(backend.nodes)
        
        # Add the best candidate node to a random logical qubit that is not mapped yet:
        randomQubit = random.randint(0, nq-1)
        while(not newMapping[randomQubit] is None):
            randomQubit = random.randint(0, nq-1)
        newMapping[randomQubit] = bestCandidate
        lastInsertedNode = bestCandidate

    return newMapping

def _getNeighbourRandomShuffle(mapping, backend, HaParameters=None) -> List[Node]:
    """Returns a new inital mapping obtained by randomly shuffling the nodes of the input one. No new node is added to
    the mapping.

    Args:
        mapping (List[Node]): the current initial mapping.
        backend (Backend): the backend for which the nodes of 'mapping' belong.
        HaParameters (List[float, float, float, bool]): not required. Can also be None.

    Returns:
        List[Node]: the new initial mapping for the provided backend.
    
    """
    
    newMapping = list(mapping)
    random.shuffle(newMapping)

    return newMapping

def _getNeighbourRandomExpand(mapping, backend, HaParameters=None) -> List[Node]:
    """Returns a new inital mapping obtained by replacing one random node of the mapping with a new random node of the 
    backend that is not part of the mapping.

    Note:
        This is the random(hardware-unaware) implementation of the expand.

    Args:
        mapping (List[Node]): the current initial mapping.
        backend (Backend): the backend for which the nodes of 'mapping' belong.
        HaParameters (List[float, float, float, bool]): not required. Can also be None.

    Returns:
        List[Node]: the new initial mapping for the provided backend.
    
    """

    nq = len(mapping)

    # If the number of logical qubits mapped is equal to the number of nodes in the backend, nothing can be done:
    if(nq == backend.n_nodes):
        return mapping
    
    # Select a random node of the mapping to remove:
    randomIndex = random.randint(0, nq-1)

    # Find a new random node that is not already part of the mapping:
    randomNode = random.choice(backend.nodes)
    while(  randomNode in mapping ):
        randomNode = random.choice(backend.nodes)

    # Perform the substitution:
    newMapping = list(mapping)
    newMapping[randomIndex] = randomNode

    return newMapping

def _getNeighbourHaExpand(mapping, backend, HaParameters) -> List[Node]:
    """Returns a new inital mapping obtained by replacing one node of the mapping with a new node of the 
    backend that is not part of the mapping.

    Note:
        This is the hardware-aware implementation of the expand.

    Args:
        mapping (List[Node]): the current initial mapping.
        backend (Backend): the backend for which the nodes of 'mapping' belong.
        HaParameters (List[float, float, float, bool]): required. The list must contain in order:
                                                        1) swapNumberWeight
                                                        2) swapErrorWeight
                                                        3) swapTimeWeight
                                                        4) isRZvirtual

    Returns:
        List[Node]: the new initial mapping for the provided backend.
    
    """

    # Compute the D matrix, used for score assignment:
    S, E, T, D = _computeDistanceMatricesHardwareAwareRouting(backend, HaParameters[0], HaParameters[1], 
                                                            HaParameters[2], backend.technology, HaParameters[3], False)

    nq = len(mapping)

    # If the number of logical qubits mapped is equal to the number of nodes in the backend, nothing can be done:
    if(nq == backend.n_nodes):
        return mapping
    
    # Give a score to each node in the current mapping:
    currentNodesScore = []
    currentNodesEdges = []
    candidateNodes = []
    for node in mapping: # For each node of the current mapping
        score = 0
        edges = 0
        for neighbor in backend.couplingGraph.neighbors(node): # For all of its neighbors:
            if(neighbor in mapping): # Count only the neighbors in the current mapping to increase the score:
                score += D[node.id][neighbor.id]
                edges += 1

            else: # If a neighbor is not the current mapping, a new candidate node is found:
                if(not neighbor in candidateNodes):
                    candidateNodes.append(neighbor)

        # Add the score and edges count of the current node:
        currentNodesScore.append(score)
        currentNodesEdges.append(edges)

    # Give a score to each candidate nodes:
    candidateNodesScore = []
    candidateNodesEdges = []
    for candidate in candidateNodes:
        score = 0
        edges = 0
        for neighbor in backend.couplingGraph.neighbors(candidate): # For all of its neighbors:
            if(neighbor in mapping): # Count only the neighbors in the current mapping to increase the score:
                score += D[candidate.id][neighbor.id] # The score is computed like before.
                edges += 1
        
        # Add the score and edges count of the candidate node:
        candidateNodesScore.append(score)
        candidateNodesEdges.append(edges)

    # Find the worst(lowest edges, and highest score) node in the current mapping:
    minEdges = min(currentNodesEdges)
    minEdgesNodes = []
    for i in range ( len(currentNodesEdges) ):
        if(currentNodesEdges[i]==minEdges):
            minEdgesNodes.append(mapping[i])

    worstNodeIndex = mapping.index(minEdgesNodes[0])
    worstNodeScore = currentNodesScore[worstNodeIndex]
    for i in range ( len(currentNodesScore) ):
        if( (mapping[i] in minEdgesNodes) and (currentNodesScore[i] > worstNodeScore) ):
            worstNodeIndex = i
            worstNodeScore = currentNodesScore[i]

    # Find the best(highest edges, lowest score) node among the candidates:
    maxEdges = max(candidateNodesEdges)
    maxEdgesNodes = []
    for i in range ( len(candidateNodes) ):
        if(candidateNodesEdges[i]==maxEdges):
            maxEdgesNodes.append(candidateNodes[i])

    bestCandidateIndex = candidateNodes.index(maxEdgesNodes[0])
    bestCandidateScore = candidateNodesScore[bestCandidateIndex]
    for i in range ( len(candidateNodesScore) ):
        if( (candidateNodes[i] in maxEdgesNodes) and (candidateNodesScore[i] < bestCandidateScore) ):
            bestCandidateIndex = i
            bestCandidateScore = candidateNodesScore[i]

    # Perform the substitution:
    newMapping = list(mapping)
    newMapping[worstNodeIndex] = candidateNodes[bestCandidateIndex]

    return newMapping

def costFunctionConnectivity(mapping, backend, circuit=None, HaParameters=None) -> float:
    """Cost function that computes the total number of connected nodes of an initial mapping.

    Args:
        mapping (List[Node]): the initial mapping for which evaluate the cost function.
        backend (Backend): the backend for which the nodes of 'mapping' belong.
        circuit (Circuit): not required. Can also be None.
        HaParameters (List[float, float, float, bool]): not required. Can also be None.

    Returns:
        float: the cost function evaluated for the provided initial mapping.
    
    """

    edgesCount = 0
    for node_i in mapping:
        for node_j in mapping:
            if( backend.getDistance(node_i, node_j)==1 ):
                edgesCount += 1

    return edgesCount

def costFunctionHardwareAwareTotalDistance(mapping, backend, circuit, HaParameters) -> float:
    """Cost function that computes the sum of the nodes distances(where the distance is the entry in the D matrix of
    the HA Routing algorithm) for every interacting nodes in each two-qubits gates composing the input circuit, based on 
    the provided input mapping.

    Args:
        mapping (List[Node]): the initial mapping for which evaluate the cost function.
        backend (Backend): the backend for which the nodes of 'mapping' belong.
        circuit (Circuit): the quantum circuit containing the logical qubits interactions.
        HaParameters (List[float, float, float, bool]): required. The list must contain in order:
                                                        1) swapNumberWeight
                                                        2) swapErrorWeight
                                                        3) swapTimeWeight
                                                        4) isRZvirtual

    Returns:
        float: the cost function evaluated for the provided initial mapping.
    
    """

    # Compute the D matrix, used for score assignment:
    S, E, T, D = _computeDistanceMatricesHardwareAwareRouting(backend, HaParameters[0], HaParameters[1], 
                                                            HaParameters[2], backend.technology, HaParameters[3], False)

    totalDistance = 0.0 # Will store the sum of the nodes distances
    for vertex in (vertex for vertex in circuit.dag.nodes if vertex.type is DAGVertexType.Gate 
                        and not vertex.isSingleQubitGate): # For all the two-qubit gates of quantum circuit:
        
        # Get the interacting nodes using the provided initial mapping:
        controlNodeId = mapping[vertex.controlQubitId]
        targetNodeId = mapping[vertex.targetQubitId]

        # Add the current distance to the total:
        totalDistance += D[controlNodeId.id][targetNodeId.id]

    return totalDistance