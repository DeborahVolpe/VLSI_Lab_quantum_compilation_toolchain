import os

def main():

    # Just for now:
    modalities = ["trivialMapping_basicRouting", "saDenseMapping_basicRouting", 
    "trivialMapping_haRoutingS0.0E0.5T0.5D20W0.5_nonRZvirtual", "trivialMapping_haRoutingS0.0E0.5T0.5D20W0.5_RZvirtual", 
    "trivialMapping_haRoutingS0.5E0.0T0.5D20W0.5_nonRZvirtual", "trivialMapping_haRoutingS0.5E0.0T0.5D20W0.5_RZvirtual",
    "trivialMapping_haRoutingS0.5E0.5T0.0D20W0.5_nonRZvirtual", "trivialMapping_haRoutingS0.5E0.5T0.0D20W0.5_RZvirtual",
    "saDenseMapping_haRoutingS0.5E0.0T0.5D20W0.5_nonRZvirtual", "saDenseMapping_haRoutingS0.5E0.0T0.5D20W0.5_RZvirtual",
    "saHaMappingS0.5E0.0T0.5_haRoutingS0.5E0.0T0.5D20W0.5_nonRZvirtual", 
    "saHaMappingS0.5E0.0T0.5_haRoutingS0.5E0.0T0.5D20W0.5_RZvirtual", 
    "saHaMappingS0.5E0.5T0.0_haRoutingS0.5E0.5T0.0D20W0.5_RZvirtual",
    "trivialMapping_haRoutingSmartS0.5E0.0T0.5D20W0.5_RZvirtual",
    "trivialMapping_haRoutingSmartS0.5E0.5T0.0D20W0.5_RZvirtual",
    "saHaMappingS0.5E0.0T0.5_haRoutingSmartS0.5E0.0T0.5D20W0.5_RZvirtual",
    "saHaMappingS0.5E0.5T0.0_haRoutingSmartS0.5E0.5T0.0D20W0.5_RZvirtual",
    "trivialMapping_haRoutingS0.5E0.0T0.5D20W0.5_brokenConnectivity_RZvirtual"
    "saHaMappingS0.5E0.0T0.5_haRoutingS0.5E0.0T0.5D20W0.5_brokenConnectivity_RZvirtual" ]

    for modality in modalities:
        cmd = "python ./benchmark/utility_2_place_route_all_circuits.py " + modality
        print(cmd)
        os.system(cmd)
        print()

if __name__=="__main__":

    main()