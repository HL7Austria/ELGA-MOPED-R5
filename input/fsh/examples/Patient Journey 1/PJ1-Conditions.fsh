Instance: PJ1Condition1
InstanceOf: MopedCondition
Description: "Hackathon Patient Journey 1 Beispiel: Condition 1"
Usage: #example
* meta.profile = "https://elga.moped.at/StructureDefinition/MopedCondition"
* clinicalStatus.extension[DataAbsentReason].url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* clinicalStatus.extension[DataAbsentReason].valueCode = #not-asked
* clinicalStatus.coding = http://terminology.hl7.org/CodeSystem/condition-clinical#unknown
* verificationStatus.coding = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
* code.coding[ICD10] = $ICD10AT#G47.3 "Schlafapnoe"
* code.coding[HDG] = LKFHauptdiagnosegruppenCS#HDG01.31 "Sonstige Erkrankungen - Nervensystem"
* subject = Reference(PJ1Patient)
* encounter = Reference(PJ1Encounter)
* extension[Diagnosetyp].valueCodeableConcept.coding = https://TBD.at/CodeSystem/LKFDiagnoseTypCS#A