Profile: MopedCondition
Parent: Condition
Description: "MOPED Profil der Condition Ressource für die LDF-Abrechnung"
Title: "MOPED Condition"

* verificationStatus 0..1
* verificationStatus ^short = "LKF: Diagnose - Art"
* insert ShallPopulateObligation(verificationStatus, MopedKHActor)
* insert ShallPopulateObligation(clinicalStatus, MopedKHActor)
* encounter only Reference(MopedEncounter)
* encounter 1..1
* insert MopedHandleObligation(encounter)
* subject only Reference(HL7ATCorePatient)
* subject 1..1
* insert MopedHandleObligation(subject)
* code 1..1
* code.coding ^slicing.rules = #open
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.ordered = false
* code.coding contains ICD10 1..1 and HDG 0..1
* code.coding[ICD10] from ICD10ATVS (required)
* code.coding[ICD10].system = $ICD10AT
* code.coding[ICD10] ^short = "LKF: Diagnose – Code; KaOrg: HDIAG/ZDIAG - Hauptdiagnose/Zusatzdiagnose"
* code.coding[HDG] from LKFHauptdiagnosegruppenVS (required)
* code.coding[HDG].system = Canonical(LKFHauptdiagnosegruppenCS)
* insert ShallPopulateObligation(code, MopedKHActor)
* extension contains Diagnosetyp named Diagnosetyp 1..2
* extension[Diagnosetyp] ^short = "LKF: Diagnosetyp; KaOrg: Hauptdiagnose oder Zusatzdiagnose"
* insert ShallPopulateObligation(extension[Diagnosetyp], MopedKHActor)
//TBD Invariante, dass Haupt und Zusatzdiagnose gemeinsam bzw. 2x Haupt oder 2x Zusatz nicht möglich sind
