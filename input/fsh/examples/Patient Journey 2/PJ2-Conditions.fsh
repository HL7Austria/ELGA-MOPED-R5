Instance: PJ2Condition1
InstanceOf: MopedCondition
Description: "Hackathon Patient Journey 2 Beispiel: Condition 1"
Usage: #example
* meta.profile = "https://elga.moped.at/StructureDefinition/MopedCondition"
* identifier[MopedConditionIdentifier].type.coding = http://terminology.hl7.org/CodeSystem/v2-0203#RI
* identifier[MopedConditionIdentifier].value = "324200063urn:oid:1.3.6.1.4.1.36124.5.427-S82.0"
* clinicalStatus.extension[DataAbsentReason].url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* clinicalStatus.extension[DataAbsentReason].valueCode = #not-asked
* clinicalStatus.coding = http://terminology.hl7.org/CodeSystem/condition-clinical#unknown
* verificationStatus.coding = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
* code.coding[ICD10] = $ICD10AT#S82.0 "Fraktur der Patella"
* code.coding[HDG] = LKFHauptdiagnosegruppenCS#HDG15.03 "Frakturen der unteren Extremität/Becken, außer Vorfuß"
* subject = Reference(PJ2Patient)
* encounter = Reference(PJ2Encounter)

Instance: PJ2Condition2
InstanceOf: MopedCondition
Description: "Hackathon Patient Journey 2 Beispiel: Condition 2"
Usage: #example
* meta.profile = "https://elga.moped.at/StructureDefinition/MopedCondition"
* identifier[MopedConditionIdentifier].type.coding = http://terminology.hl7.org/CodeSystem/v2-0203#RI
* identifier[MopedConditionIdentifier].value = "324200063urn:oid:1.3.6.1.4.1.36124.5.427-999.9"
* clinicalStatus.extension[DataAbsentReason].url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* clinicalStatus.extension[DataAbsentReason].valueCode = #not-asked
* clinicalStatus.coding = http://terminology.hl7.org/CodeSystem/condition-clinical#unknown
* verificationStatus.coding = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
* code.coding[ICD10] = $ICD10AT#999.9 "Sonstige Ursachen exogener Noxen, nicht näher bezeichnet"
//Es gibt dazu keine HDG
* subject = Reference(PJ2Patient)
* encounter = Reference(PJ2Encounter)