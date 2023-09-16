import configparser

from qiskit import IBMQ

# Settings:
backendName = "ibmq_lima" # The name of the IBMQ backend from which generating the .cfg file.
backendFolderPath = "./connectivity/backends/S" # The path to the folder where to write the .cfg file.

# Set-up IBMQ:
provider = IBMQ.load_account() # Loads account from disk

backend = provider.get_backend(backendName)
backendProperties = backend.properties()

# Create the configuration file:
config = configparser.ConfigParser(allow_no_value=True)

# Basic section:
config.add_section("Basic")
config.set("Basic", "technology", "S")
config.set( "Basic", "n_nodes", str(len(backendProperties.qubits)) )

# CXErrorRate and CXGateTime section:
config.add_section("CXErrorRate")
config.set("CXErrorRate", "# Left id is the control node id, right id is the target node id.")

config.add_section("CXGateTime")
config.set("CXGateTime", "# Left id is the control node id, right id is the target node id.")
config.set("CXGateTime", "# All the gate times must be provided in ns.")

for i in range( len(backendProperties.qubits) ):
    for j in range( len(backendProperties.qubits) ):
        try:
            errorRate = backendProperties.gate_error("cx", (i, j))
            gateTime = backendProperties.gate_length("cx", (i, j)) * 10**9 
            config.set( "CXErrorRate", str(i)+"-"+str(j), str(errorRate) )
            config.set( "CXGateTime", str(i)+"-"+str(j), str(gateTime) )
        except: # The current nteraction is now allowed in the backend:
            pass

# Write the .cfg file:
with open(backendFolderPath + "/" + backendName + ".cfg", 'w') as configfile:
    config.write(configfile)
print(backendName + ".cfg written in " + backendFolderPath)