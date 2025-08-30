import csv
import os
import json
from fhir.resources.patient import Patient
from fhir.resources.humanname import HumanName
from fhir.resources.identifier import Identifier
from fhir.resources.encounter import Encounter
from fhir.resources.condition import Condition
from fhir.resources.procedure import Procedure
from fhir.resources.extension import Extension
from fhir.resources.codeableconcept import CodeableConcept
from fhir.resources.coding import Coding
from fhir.resources.reference import Reference
from fhir.resources.bundle import Bundle
from fhir.resources.composition import Composition, CompositionSection
from fhir.resources.bundle import BundleEntry
from fhir.resources.encounter import EncounterAdmission
from fhir.resources.period import Period
from fhir.resources.meta import Meta
from fhir.resources.usagecontext import UsageContext



def __main__():
    filename = "K999J001.s25.txt"
    all_cases = parse_cases(filename)
    first_case = all_cases[0]
    #Create output dir
    output_folder = "Example_Resources"
    if not os.path.exists(output_folder):
        os.makedirs(output_folder)
    #Create list of bundles
    bundles = create_fhir_resources(all_cases)
    idx = 0
    for bund in bundles:
        idx+=1
        folder_name = f"Example{idx}"
        folder_path = os.path.join(output_folder, folder_name)
        os.makedirs(folder_path, exist_ok=True)
        bundle_file = os.path.join(folder_path, f"bundle{idx}.json")
        with open(bundle_file, "w", encoding="utf-8") as f:
            json.dump(bund.model_dump(), f, indent=2, ensure_ascii=False)
        for entry in bund.entry:
            resource = entry.resource
            print()
            print(resource.id)
            print(resource.__resource_type__)
            if resource and hasattr(resource, "__resource_type__") and hasattr(resource, "id") and resource.id:
                print(f"Writing resource file: {resource.__resource_type__}_{resource.id}.json")
                filename = f"{resource.__resource_type__}_{resource.id}.json"
                filepath = os.path.join(folder_path, filename)
                with open(filepath, "w", encoding="utf-8") as f:
                    json.dump(resource.model_dump(), f, indent=2, ensure_ascii=False)
            else:
                print(f"Skipping resource with missing id or type: {resource}")


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


def create_fhir_resources(all_cases):
    i = 0
    bundles = []

    for case in all_cases:
        i+=1
        #print(case)
        #print()
        #print(case['X01'])
        #print(len(case['X01']))
        X01 = case['X01'][0]
        X02 = case['X02']
        X03 = case['X03'] if 'X03' in case.keys() else None
        X04 = case['X04'] if 'X04' in case.keys() else None
        X05 = case['X05'] if 'X05' in case.keys() else None
        X06 = case['X06'] if 'X06' in case.keys() else None
        X07 = case['X07'] if 'X07' in case.keys() else None
        FHIRPatient = parse_Patient(X01,i)
        FHIREncounter = parse_Encounter(X01,i)
        FHIRConditions = []
        FHIRProcedures = []
        FHIRTransferEncounters = []
        if X02:
            FHIRTransferEncounters = parse_TransferEncounter(X02,i)
        if X03:
            FHIRConditions = parse_Conditions(X03,i)
        if X04:
            FHIRProcedures = parse_Procedures(X04,i)
            
        # Create Composition resource (document summary)
        FHIRComposition = Composition.model_construct(
        id="Composition"+str(i),
        status="final",
        useContext=[UsageContext.model_construct(code=Coding.model_construct(
            system="http://terminology.hl7.org/CodeSystem/usage-context-type",
            code="workflow"
            ), valueCodeableConcept=CodeableConcept.model_construct(coding=[Coding.model_construct(
                system="https://elga.moped.at/CodeSystem/WorkflowStatusCS",
                code="Endgueltige-Freigabe",
                display="Endgültige Freigabe")]
        ))],
        type=CodeableConcept.model_construct(
            coding=[Coding.model_construct(
                system="http://loinc.org",
                code="102089-0",
                display="FHIR resource patient medical record"
            )]
        ),
        subject=[Reference.model_construct(reference=f"Patient/{FHIRPatient.id}")],
        author=[Reference.model_construct(reference=f"Organization/KH{X01[1]}")],
        date="2025-08-30",
        encounter=Reference.model_construct(reference=f"Encounter/{FHIREncounter.id}"),
        title="LKF Testdaten Fall",
        meta=Meta.model_construct(profile=["https://elga.moped.at/StructureDefinition/MopedComposition"]),
        section=[]
        )

        #zustaendigesKH
        KH_ref=[Reference.model_construct(reference=f"Organization/KH{X01[1]}")]
        FHIRComposition.section.append(
                CompositionSection.model_construct(
                    title="Zuständiges KH",
                    entry=KH_ref,
                    code = CodeableConcept.model_construct(
                        coding=[Coding.model_construct(
                        system="https://elga.moped.at/CodeSystem/CompositionSectionsCS",
                        code="KH"
                        )]
                    )
                )
            )
        LGF_ref=[Reference.model_construct(reference=f"Organization/OrganizationLGF")]
        FHIRComposition.section.append(
                CompositionSection.model_construct(
                    title="Zuständiger LGF",
                    entry=LGF_ref,
                    code = CodeableConcept.model_construct(
                        coding=[Coding.model_construct(
                        system="https://elga.moped.at/CodeSystem/CompositionSectionsCS",
                        code="LGF"
                        )]
                    )
                )
            )

        SV_ref=[Reference.model_construct(reference=f"Organization/SV{X01[22]}")]
        FHIRComposition.section.append(
                CompositionSection.model_construct(
                    title="Zuständige SV",
                    entry=SV_ref,
                    code = CodeableConcept.model_construct(
                        coding=[Coding.model_construct(
                        system="https://elga.moped.at/CodeSystem/CompositionSectionsCS",
                        code="SV"
                        )]
                    )
                )
            )

        if FHIRConditions:
            cond_refs = [Reference.model_construct(reference=f"Condition/{cond.id}") for cond in FHIRConditions]
            FHIRComposition.section.append(
                CompositionSection.model_construct(
                    title="Conditions",
                    entry=cond_refs,
                    code = CodeableConcept.model_construct(
                        coding=[Coding.model_construct(
                        system="https://elga.moped.at/CodeSystem/CompositionSectionsCS",
                        code="DIAG"
                        )]
                    )
                )
            )
        if FHIRProcedures:
            proc_refs = [Reference.model_construct(reference=f"Procedure/{proc.id}") for proc in FHIRProcedures]
            FHIRComposition.section.append(
                CompositionSection.model_construct(
                    title="Procedures",
                    entry=proc_refs,
                    code = CodeableConcept.model_construct(
                        coding=[Coding.model_construct(
                        system="https://elga.moped.at/CodeSystem/CompositionSectionsCS",
                        code="LEI"
                        )]
                    )
                )
            )
        if FHIRTransferEncounters:
            tenc_refs = [Reference.model_construct(reference=f"Encounter/{TENC.id}") for TENC in FHIRTransferEncounters]
            FHIRComposition.section.append(
                CompositionSection.model_construct(
                    title="TransferEncounter",
                    entry=tenc_refs,
                    code = CodeableConcept.model_construct(
                        coding=[Coding.model_construct(
                        system="https://elga.moped.at/CodeSystem/MopedEncounterTypesCS",
                        code="TENC"
                        )]
                    )
                )
            )

        # Create the Bundle (FHIR document-style)
        bundle_entries = [
            BundleEntry.model_construct(resource=FHIRComposition),
            BundleEntry.model_construct(resource=FHIRPatient),
            BundleEntry.model_construct(resource=FHIREncounter),
        ]
        bundle_entries += [BundleEntry.model_construct(resource=condition) for condition in FHIRConditions]
        bundle_entries += [BundleEntry.model_construct(resource=procedure) for procedure in FHIRProcedures]
        bundle_entries += [BundleEntry.model_construct(resource=encounter) for encounter in FHIRTransferEncounters]

        FHIRBundle = Bundle.model_construct(
            type="document",
            id = f"Bundle{i}",
            entry=bundle_entries
        )

        bundles.append(FHIRBundle)
    return bundles
        

        

def parse_Encounter(X01, i):
    aufnahmezahl        = X01[2]   # Aufnahmezahl
    datensatzid         = X01[3]   # Datensatz-ID
    aufnahmedatum       = X01[4]   # Aufnahme-/Kontaktdatum
    aufnahmezeit        = X01[5]   # Aufnahme-/Kontaktuhrzeit
    behandlungsart      = X01[6]   # Behandlungsart
    altersgruppe        = X01[8]    # Altersgruppe bei Entlassung/Kontakt
    aufnahmeart1        = X01[14]
    aufnahmeart2        = X01[15]
    transportart        = X01[16]
    zugewiesen_von_KANR = X01[17]
    zugewiesen_an_KANR  = X01[18]
    entlassungsart      = X01[19] 
    entlassungsdatum    = X01[20]
    entlassungszeit     = X01[21]
    encounter_id = f"Encounter{i}"

    # Build Identifiers
    id_aufnahmezahl = Identifier.model_construct(
        system="https://elga.moped.at/identifier/aufnahmezahl",
        value=aufnahmezahl,
        type=CodeableConcept.model_construct(
            coding=[Coding.model_construct(
                system="http://terminology.hl7.org/CodeSystem/v2-0203",
                code="VN"
            )]
        )
    )
    id_datensatzid = Identifier.model_construct(
        system="https://elga.moped.at/identifier/datensatzid",
        value=datensatzid,
        type=CodeableConcept.model_construct(
            coding=[Coding.model_construct(
                system="http://terminology.hl7.org/CodeSystem/v2-0203",
                code="ANON"
            )]
        )
    )

    behandlungsart_cc = CodeableConcept.model_construct(
        coding=[Coding.model_construct(
            system="https://elga.moped.at/CodeSystem/BehandlungsartCS",
            code=behandlungsart
        )]
    )
    aufnahmeart2_cc = (
        CodeableConcept.model_construct(
            coding=[Coding.model_construct(
                system="https://elga.moped.at/CodeSystem/Aufnahmeart2CS",
                code=aufnahmeart2
            )]
        ) if aufnahmeart2 else None
    )

    # Build period for admission/discharge
    start_datetime = format_fhir_datetime(aufnahmedatum, aufnahmezeit)
    end_datetime = format_fhir_datetime(entlassungsdatum, entlassungszeit)
    actual_period = Period.model_construct(
        start=start_datetime,
        end=end_datetime if end_datetime else None
    )

    # Extensions
    extensions = []

    # Altersgruppe extension
    if altersgruppe:
        extensions.append(
            Extension.model_construct(
                url="https://elga.moped.at/StructureDefinition/moped-ext-altersgruppe",
                extension=[Extension.model_construct(
                    url="beiEntlassung",
                    valueCodeableConcept=CodeableConcept.model_construct(
                        coding=[Coding.model_construct(
                            system="https://elga.moped.at/CodeSystem/AltersgruppeCS",
                            code=altersgruppe
                        )]
                    )
                )]
            )
        )

    admission_args = {}

    # Aufnahmeart extension
    if aufnahmeart1:
        admission_args.setdefault("extension", []).append(
            Extension.model_construct(
                url="https://elga.moped.at/StructureDefinition/moped-ext-aufnahmeart",
                valueCoding=Coding.model_construct(
                    system="https://elga.moped.at/CodeSystem/AufnahmeartCS",
                    code=aufnahmeart1
                )
            )
        )
     # Transportart extension (complex)
    if transportart:
        admission_args.setdefault("extension", []).append(
            Extension.model_construct(
                url="http://hl7.org/fhir/StructureDefinition/encounter-modeOfArrival",
                valueCoding=Coding.model_construct(
                    system="https://elga.moped.at/CodeSystem/TransportartCS",
                    code=transportart
                )
            )
        )
    # Origin and destination (if IDs present)
    if zugewiesen_von_KANR:
        admission_args["origin"] = Reference.model_construct(reference=f"Organization/{zugewiesen_von_KANR}")
    if zugewiesen_an_KANR:
        admission_args["destination"] = Reference.model_construct(reference=f"Organization/{zugewiesen_an_KANR}")

    # Discharge disposition
    if entlassungsart:
        admission_args["dischargeDisposition"] = CodeableConcept.model_construct(
            coding=[Coding.model_construct(
                system="https://elga.moped.at/CodeSystem/EntlassungsartCS",
                code=entlassungsart
            )]
        )
    
    admission = EncounterAdmission.model_construct(**admission_args)

    # Compose Encounter resource with all details
    encounter = Encounter.model_construct(
        id=encounter_id,
        identifier=[id_aufnahmezahl, id_datensatzid],
        status="completed",
        class_fhir=[behandlungsart_cc, aufnahmeart2_cc],
        actualPeriod=actual_period,
        extension=extensions if extensions else None,
        subject=Reference.model_construct(reference=f"Patient/Patient{i}"),
        # Admission details
        admission=admission,
        meta=Meta.model_construct(profile=["https://elga.moped.at/StructureDefinition/MopedEncounter"]),
        serviceProvider = Reference.model_construct(reference=f"Organization/KH{X01[1]}"),
    
    )
    return encounter


def parse_Conditions(X03,i):
    FHIRConditions = []
    condCount = 0
    for cond in X03:
            condCount += 1
            code_value = cond[5] if len(cond) > 5 and cond else None
            diagnosetyp_value = cond[6] if len(cond) > 6 and cond else None
            verification_value = cond[7] if len(cond) > 7 and cond else None

            # Construct Coding if code is available
            coding = [Coding.model_construct(system="https://termgit.elga.gv.at/CodeSystem/icd-10-bmsgpk-2025", code=code_value)] if code_value else None
            codeableconcept = CodeableConcept.model_construct(coding=coding) if coding else None

            # Build Diagnosetyp extension if needed
            diagnosetyp_extension = None
            if diagnosetyp_value:
                diagnosetyp_extension = Extension.model_construct(
                    url="https://elga.moped.at/StructureDefinition/moped-ext-Diagnosetyp",  # Use the canonical profile URL
                    valueCodeableConcept=CodeableConcept.model_construct(
                        coding=[Coding.model_construct(
                            system="https://termgit.elga.gv.at/CodeSystem/lkf-diagnose-typ",  # The value set/system for Diagnosetyp
                            code=diagnosetyp_value
                        )]
                    )
                )


            # Map Zulässige Ausprägungen to FHIR verificationStatus
            ver_code = None
            ver_display = None
            verificationStatus = None
            if verification_value == "D":
                ver_code = "confirmed"
                ver_display = "Confirmed"
                
            elif verification_value == "V":
                code="provisional",
                display="Provisional"
            if ver_code:
                verificationStatus = CodeableConcept.model_construct(
                coding=[Coding.model_construct(
                system="http://terminology.hl7.org/CodeSystem/condition-ver-status",
                code=ver_code,
                display=ver_display
                )]
            )
                
            clinicalStatus = CodeableConcept.model_construct(
            extension=[
                Extension.model_construct(
                    url="http://hl7.org/fhir/StructureDefinition/data-absent-reason",
                    valueCode="not-asked"
                )
            ]
            )
            #print(verificationStatus)
            #print()
            newCondition = Condition.model_construct(
                id="Condition"+str(i)+'.'+str(condCount),
                code=codeableconcept,
                verificationStatus=verificationStatus,
                extension=[diagnosetyp_extension] if diagnosetyp_extension else None,
                subject=Reference.model_construct(reference="Patient/Patient"+str(i)),
                clinicalStatus=clinicalStatus,
                meta=Meta.model_construct(profile=["https://elga.moped.at/StructureDefinition/MopedCondition"]),
                encounter=Reference.model_construct(reference="Encounter/Encounter"+str(i)),
            )
            FHIRConditions.append(newCondition)

    return FHIRConditions

def parse_Procedures(X04,i):
    procedureCount = 0
    return []

def parse_TransferEncounter(X02,i):
    procedureCount = 0
    return []

def parse_Patient(X01,i):
    geburtsdatum = X01[7]
    nameId = "Patient"+str(i)
    patient = Patient.model_construct(
            id = nameId,
            name = [HumanName.model_construct(given = [nameId], family = nameId+"FamilienName")],
            identifier = [ Identifier.model_construct(system="urn:oid:1.2.40.0.10.1.4.3.1", value="123456")],
            gender = "male" if X01[9] == "M" else "female" if X01[9] == "W" else "unknown",
            birthDate=f"{geburtsdatum[:4]}-{geburtsdatum[4:6]}-{geburtsdatum[6:]}",
            #extension = [Extension.model_construct(url = "http://hl7.org/fhir/StructureDefinition/patient-citizenship", extension = [Extension.model_construct(url ="code", value = CodeableConcept.model_construct(coding = Coding.model_construct(code = case['X01'][10])))])]
            # fix this extension
            meta=Meta.model_construct(profile=["http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/StructureDefinition/at-core-patient"])

        )
    return patient

def format_fhir_datetime(datestr, timestr):
    """Convert 'YYYYMMDD' and 'hhmm' to 'YYYY-MM-DDThh:mm' (FHIR format)."""
    if not datestr or datestr == '':
        return None
    date_formatted = f"{datestr[:4]}-{datestr[4:6]}-{datestr[6:]}"
    if timestr and timestr != '':
        time_formatted = f"{timestr[:2]}:{timestr[2:]}:00+02:00"
        return f"{date_formatted}T{time_formatted}"
    else:
        return date_formatted

__main__()