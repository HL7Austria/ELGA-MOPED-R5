Profile: MOPEDCondition
Parent: Condition
Description: "MOPED Profil der Condition Ressource für die LDF-Abrechnung"

* identifier ^slicing.rules = #open
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "type.coding.code"
* identifier ^slicing.ordered = false
* identifier contains MOPEDConditionIdentifier 1..1
* identifier[MOPEDConditionIdentifier].type from http://terminology.hl7.org/ValueSet/v2-0203 (required)
* identifier[MOPEDConditionIdentifier].type.coding.code = #RI (exactly)
* identifier[MOPEDConditionIdentifier] ^short = "MOPED Identifier = Aufnahmezahl+ICD10Code"
* identifier 1..
* verificationStatus 1..1
* clinicalStatus.extension contains DataAbsentReason named data-absent-reason 1..1
* clinicalStatus.extension[DataAbsentReason].valueCode = http://terminology.hl7.org/CodeSystem/data-absent-reason#not-asked
* encounter only Reference(MOPEDEncounter)
* encounter 1..1
* subject only Reference(HL7ATCorePatient)
* code 1..1
* code.coding ^slicing.rules = #open
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.ordered = false
* code.coding contains ICD10 1..1 and HDG 1..1
* code.coding[ICD10] from $ICD10AT (required)
* code.coding[ICD10].system = $ICD10AT
* code.coding[HDG] from LKFHauptdiagnosegruppen (required)
* code.coding[HDG].system = $LKFHauptdiagnosegruppen

