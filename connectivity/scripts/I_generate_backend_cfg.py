from cmath import log
import itertools


def main():
    print("[signX]")
    for interconnection in itertools.combinations(range(n_nodes), 2): # Generate all the possible two-nodes 
                                                                      # intercionnections (only one per pair of nodes).
                                                                      # The ion trap topology is fully-connected.
        print( "{0}-{1} = 1".format(interconnection[0], interconnection[1]) )

    print("[MsGateTime]")
    for interconnection in itertools.combinations(range(n_nodes), 2): # Generate all the possible two-nodes 
                                                                      # intercionnections (only one per pair of nodes).
                                                                      # The ion trap topology is fully-connected.
        d = abs(interconnection[0] - interconnection[1])
        msGateTime = (m*d + c)*prefix # The MS gate time linearly depends on the distance among the ions and is in [s].
        print( "{0}-{1} = {2}".format(interconnection[0], interconnection[1], msGateTime) )
    
    print("[MsErrorRate]")
    for interconnection in itertools.combinations(range(n_nodes), 2): # Generate all the possible two-nodes 
                                                                      # intercionnections (only one per pair of nodes).
                                                                      # The ion trap topology is fully-connected.
        d = abs(interconnection[0] - interconnection[1])
        msGateTime = (m*d + c)*prefix # The MS gate time linearly depends on the distance among the ions and is in [s].
        fidelity = backgroundHeating*msGateTime + A*(2*vibrationalEnergy +1)
        print( "{0}-{1} = {2}".format(interconnection[0], interconnection[1], fidelity) )

if __name__ == "__main__":

    # Settings:

    # MS gate time computation:
    n_nodes = 17 # Length of the ions chain. The ions are supposed linearly distributed inside the chain with n_0 and 
                 # n_{n_nodes} the two extremes.
    c = 10 # Interception with the Y axis.
    m = 38 # Angular coeeficient.
    prefix = 10**(-6) # Depends on the unit of mesure used for computing the gate time.

    # MS error rate computation:
    backgroundHeating = 25
    vibrationalEnergy = 0
    A = 0 # Neglected

    main()