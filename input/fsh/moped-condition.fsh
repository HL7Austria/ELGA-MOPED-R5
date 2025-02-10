Profile: MopedCondition
Parent: Condition
Description: "MOPED Profil der Condition Ressource für die LDF-Abrechnung"

* identifier ^slicing.rules = #open
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "type.coding.code"
* identifier ^slicing.ordered = false
* identifier contains MopedConditionIdentifier 1..1
* identifier[MopedConditionIdentifier].type from https://termgit.elga.gv.at/ValueSet/hl7-at-patientidentifier (required)
* identifier[MopedConditionIdentifier].type.coding.code = #RI (exactly)
* identifier[MopedConditionIdentifier] ^short = "MOPED Identifier = Aufnahmezahl+ICD10Code"
* identifier 1..
* verificationStatus 1..1
* clinicalStatus.extension contains DataAbsentReason named data-absent-reason 1..1
* clinicalStatus.extension[DataAbsentReason].valueCode = http://hl7.org/fhir/StructureDefinition/data-absent-reason#not-asked
* encounter only Reference(MopedEncounter)
* encounter 1..1
* subject only Reference(HL7ATCorePatient)
* code 1..1
* code.coding ^slicing.rules = #open
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.ordered = false
* code.coding contains ICD10 1..1 and HDG 1..1
* code.coding[ICD10] from https://termgit.elga.gv.at/CodeSystem/bmg-icd-10-2024
* code.coding[ICD10].system = "https://termgit.elga.gv.at/CodeSystem/bmg-icd-10-2024"
* code.coding[HDG] from LKFHauptdiagnosegruppen
* code.coding[HDG].system = $LKFHauptdiagnosegruppen

