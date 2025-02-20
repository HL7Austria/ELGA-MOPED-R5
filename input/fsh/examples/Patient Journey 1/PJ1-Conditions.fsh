Instance: PJ1Condition1
InstanceOf: MopedCondition
Description: "Hackathon Patient Journey 1 Beispiel: Condition 1"
Usage: #example
* meta.profile = "https://elga.moped.at/StructureDefinition/MopedCondition"
* identifier[MopedConditionIdentifier].type.coding = http://terminology.hl7.org/CodeSystem/v2-0203#RI
* identifier[MopedConditionIdentifier].value = "1024000028urn:oid:1.3.6.1.4.1.36124.5.9140-G47.3"
* clinicalStatus.extension[DataAbsentReason].url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* clinicalStatus.extension[DataAbsentReason].valueCode = #not-asked
* clinicalStatus.coding = http://terminology.hl7.org/CodeSystem/condition-clinical#unknown
* verificationStatus.coding = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
* code.coding[ICD10] = $ICD10AT#G47.3 "Schlafapnoe"
* code.coding[HDG] = LKFHauptdiagnosegruppenCS#HDG01.31 "Sonstige Erkrankungen - Nervensystem"
* subject.reference = "Patient?identifier=urn:oid:1.2.40.0.10.1.4.3.1|9994210469"
* encounter.reference = "Encounter?identifier=urn:oid:1.3.6.1.4.1.36124.5.914|1024000028"