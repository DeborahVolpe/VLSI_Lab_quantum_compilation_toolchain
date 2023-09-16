import os

def main():

    # Just for now:
    modalities = ["trivialMapping", "saDenseMapping", "saHaMappingS0.5E0.0T0.5_nonRZvirtual", 
    "saHaMappingS0.5E0.0T0.5_RZvirtual", "saHaMappingS0.5E0.5T0.0_nonRZvirtual", "saHaMappingS0.5E0.5T0.0_RZvirtual" ]

    for modality in modalities:
        cmd = "python ./benchmark/utility_1_place_all_circuits.py " + modality
        print(cmd)
        os.system(cmd)
        print()

if __name__=="__main__":

    main()