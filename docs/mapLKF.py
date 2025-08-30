import csv
from fhir.resources.patient import Patient
from fhir.resources.humanname import HumanName
from fhir.resources.identifier import Identifier
from fhir.resources.encounter import Encounter
from fhir.resources.condition import Condition
from fhir.resources.procedure import Procedure

from fhir.resources.codeableconcept import CodeableConcept
from fhir.resources.coding import Coding
from fhir.resources.reference import Reference

def parse_cases(filename):
    # Store cases each as a dict [{X01: [...], X02: [...], ...}, ...]
    cases = {}  # {(K999, 001): {Satzart: [entries], Satzart: [entries], ...}}

    with open(filename, 'r', encoding='utf-8') as f:
        reader = csv.reader(f, delimiter='|')
        for parts in reader:
            if len(parts) < 4:
                continue  # skip empty or malformed lines

            satzart = parts[0]
            key = tuple(parts[1:4])  # columns after Satzart (e.g., ['K999','001','7a3...'])
            entry = parts

            # Grouping by (K999, 001, ...). Each case is a dict of Satzart: [entries]
            if key not in cases:
                cases[key] = {}
            if satzart not in cases[key]:
                cases[key][satzart] = []
            cases[key][satzart].append(entry)
    # Reduce to list of case dicts
    result = [case for case in cases.values()]
    return result

# Usage example
filename = "K999J001.s25.txt"
all_cases = parse_cases(filename)

# Now all_cases is a list of dictionaries, each with Satzart as key, list of entries as values
# For example, to access the first case:
first_case = all_cases[0]
#print(first_case)
#print()
#print(first_case.keys())  # e.g., dict_keys(['X01', 'X02', 'X03', ...])
#print()
#print(first_case['X01'])  # list of all X01 entries for that case
#print()
#print(first_case['X02'])
#print("All cases:")
#print(all_cases)
print()
i = 0
for case in all_cases:
    i+=1
    #print(case)
    print()
    print(case['X01'])
    print(len(case['X01']))
    X01 = case['X01'][0]
    geburtsdatum = X01[7]
    nameId = "Patient"+str(i)
    patient = Patient.model_construct(
        id = nameId,
        name = HumanName.model_construct(given = [nameId], family = nameId+"FamilienName"),
        identifier = [ Identifier.model_construct(system="urn:oid:1.2.40.0.10.1.4.3.1", value=123456)],
        gender = "male" if X01[9] == "M" else "female" if X01[9] == "W" else "unknown",
        birthDate=f"{geburtsdatum[:4]}-{geburtsdatum[4:6]}-{geburtsdatum[6:]}",
        #extension = [Extension.model_construct(url = "http://hl7.org/fhir/StructureDefinition/patient-citizenship", extension = [Extension.model_construct(url ="code", value = CodeableConcept.model_construct(coding = Coding.model_construct(code = case['X01'][10])))])]
        # fix this extension
    )

    print(patient.model_dump())

#Version 2 
for case in all_cases:
    i+=1
    #print(case)
    print()
    print(case['X01'])
    print(len(case['X01']))
    X01 = case['X01'][0]
    X02 = case['X02']
    X03 = case['X03']
    X04 = case['X04']
    X05 = case['X05']
    X06 = case['X06']
    X07 = case['X07']
    FHIRPatient = Patient.model_construct(id = "Patient"+str(i))
    FHIREncounter = Encounter.model_construct(id = "Encounter"+str(i))
    FHIRConditions = []
    condCount = 0
    for cond in X03:
        condCount+=1
        newCondition = Condition.model_construct(id=condCount)
        if cond[5] != None:
            pass
            #TBD coding
            #newCondition.code.coding = cond[5]
        if cond[6] != None:
            pass
            #TBD Diagnosetyp extension = cond[6]
        if cond[7] != None:
            newCondition.verificationStatus = cond[7]
        newCondition.subject = Reference(FHIRPatient)


        FHIRConditions.append(newCondition)
    FHIRTransferEncounter = []
    geburtsdatum = X01[7]
    nameId = "Patient"+str(i)
    patient = Patient.model_construct(
        id = nameId,
        name = HumanName.model_construct(given = [nameId], family = nameId+"FamilienName"),
        identifier = [ Identifier.model_construct(system="urn:oid:1.2.40.0.10.1.4.3.1", value=123456)],
        gender = "male" if X01[9] == "M" else "female" if X01[9] == "W" else "unknown",
        birthDate=f"{geburtsdatum[:4]}-{geburtsdatum[4:6]}-{geburtsdatum[6:]}",
        #extension = [Extension.model_construct(url = "http://hl7.org/fhir/StructureDefinition/patient-citizenship", extension = [Extension.model_construct(url ="code", value = CodeableConcept.model_construct(coding = Coding.model_construct(code = case['X01'][10])))])]
        # fix this extension
    )

    print(patient.model_dump())