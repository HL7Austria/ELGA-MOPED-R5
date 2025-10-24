Profile: MopedCondition
Parent: Condition
Description: "MOPED Profil der Condition Ressource für die LDF-Abrechnung"
Title: "MOPED Condition"

* verificationStatus 0..1
* verificationStatus ^short = "LKF: Diagnose - Art"
* insert ShallPopulateIfKnownObligation(verificationStatus)
* insert ObligationActor(verificationStatus, MopedKHActor)
* clinicalStatus.extension contains DataAbsentReason named data-absent-reason 1..1
* clinicalStatus.extension[DataAbsentReason].valueCode = http://terminology.hl7.org/CodeSystem/data-absent-reason#not-asked
* insert ShallPopulateIfKnownObligation(clinicalStatus)
* insert ObligationActor(clinicalStatus, MopedKHActor)
//TBD insert Invariant to require either the clinicalStatus.coding or clinicalStatus.extension[DataAbsentReason]
* encounter only Reference(MopedEncounter)
* encounter 1..1
* insert MopedPopulatedFieldObligation(encounter)
* subject only Reference(HL7ATCorePatient)
* subject 1..1
* insert MopedPopulatedFieldObligation(subject)
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
* insert ShallPopulateObligation(code)
* insert ObligationActor(code, MopedKHActor)
* extension contains Diagnosetyp named Diagnosetyp 1..2
* extension[Diagnosetyp] ^short = "LKF: Diagnosetyp"
* insert ShallPopulateObligation(extension[Diagnosetyp])
* insert ObligationActor(extension[Diagnosetyp], MopedKHActor)
//TBD Invariante, dass Haupt und Zusatzdiagnose gemeinsam bzw. 2x Haupt oder 2x Zusatz nicht möglich sind
