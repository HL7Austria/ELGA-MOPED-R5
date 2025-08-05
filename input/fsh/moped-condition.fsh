Profile: MopedCondition
Parent: Condition
Description: "MOPED Profil der Condition Ressource für die LDF-Abrechnung"
Title: "MOPED Condition"

* identifier ^slicing.rules = #open
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "type.coding.code"
* identifier ^slicing.ordered = false
* identifier contains MopedConditionIdentifier 1..1
* identifier[MopedConditionIdentifier].type from http://terminology.hl7.org/ValueSet/v2-0203 (required)
* identifier[MopedConditionIdentifier].type.coding.code = #RI (exactly)
* identifier[MopedConditionIdentifier] ^short = "MOPED Identifier = Aufnahmezahl-ICD10Code"
* identifier 1..
* verificationStatus 1..1
* clinicalStatus.extension contains DataAbsentReason named data-absent-reason 1..1 MS
* clinicalStatus.extension[DataAbsentReason].valueCode = http://terminology.hl7.org/CodeSystem/data-absent-reason#not-asked
* encounter only Reference(MopedEncounter)
* encounter 1..1
* subject only Reference(HL7ATCorePatient)
* code 1..1
* code.coding ^slicing.rules = #open
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.ordered = false
* code.coding contains ICD10 1..1 MS and HDG 1..1 MS
* code.coding[ICD10] from ICD10ATVS (required)
* code.coding[ICD10].system = $ICD10AT
* code.coding[HDG] from LKFHauptdiagnosegruppenVS (required)
* code.coding[HDG].system = Canonical(LKFHauptdiagnosegruppenCS)
* extension contains Diagnosetyp named Diagnosetyp 1..2
//TBD Invariante, dass Haupt und Zusatzdiagnose gemeinsam bzw. 2x Haupt oder 2x Zusatz nicht möglich sind
