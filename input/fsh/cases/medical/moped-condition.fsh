Profile: MopedCondition
Parent: Condition
Description: "MOPED Profil der Condition Ressource für die LDF-Abrechnung"
Title: "MOPED Condition"
* insert MappingHeaderEinfuegen()
* verificationStatus 0..1
* verificationStatus ^short = "LKF: Diagnose – Art"
* insert legacyMapping(verificationStatus, LKF, Diagnose – Art)
* insert ShallPopulateObligation(verificationStatus, MopedKHActor)
* insert ShallPopulateObligation(clinicalStatus, MopedKHActor)
* encounter only Reference(MopedEncounter)
* encounter 1..1
* insert MopedHandleObligation(encounter)
* subject only Reference(MopedPatient)
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
* code.coding[ICD10] ^short = "LKF: Diagnose – Code; KaOrg: Diganose 1, ICD10 BMSGPK Schlüssel; KaOrg: Diagnose 1, Untergliederung 1; KaOrg: Diagnose 1, Untergliederung 2; KaOrg: Diganose 2, ICD10 BMSGPK Schlüssel; KaOrg: Diagnose 2, Untergliederung 1; KaOrg: Diagnose 2, Untergliederung 2; KaOrg: Diganose 3, ICD10 BMSGPK Schlüssel; KaOrg: Diagnose 3, Untergliederung 1; KaOrg: Diagnose 3, Untergliederung 2; KaOrg: Hauptdiagnose ICD 10 BMSGPK Schlüssel; KaOrg: Hauptdiagnose Untergliederung 1; KaOrg: Hauptdiagnose Untergliederung 2, KaOrg: Zusatzdiagnose 1, ICD 10 BMSGPK Schlüssel; KaOrg: Zusatzdiagnose 1, Untergliederung 1; KaOrg: Zusatzdiagnose 1, Untergliederung 2;"
* insert legacyMapping(code.coding[ICD10], LKF, Diagnose – Code)
* insert legacyMapping(code.coding[ICD10], KaOrg, Diganose 1 - ICD10 BMSGPK Schlüssel)
* insert legacyMapping(code.coding[ICD10], KaOrg, Diagnose 1 - Untergliederung 1)
* insert legacyMapping(code.coding[ICD10], KaOrg, Diagnose 1 - Untergliederung 2)
* insert legacyMapping(code.coding[ICD10], KaOrg, Diganose 2 - ICD10 BMSGPK Schlüssel)
* insert legacyMapping(code.coding[ICD10], KaOrg, Diagnose 2 - Untergliederung 1)
* insert legacyMapping(code.coding[ICD10], KaOrg, Diagnose 2 - Untergliederung 2)
* insert legacyMapping(code.coding[ICD10], KaOrg, Diganose 3 - ICD10 BMSGPK Schlüssel)
* insert legacyMapping(code.coding[ICD10], KaOrg, Diagnose 3 - Untergliederung 1)
* insert legacyMapping(code.coding[ICD10], KaOrg, Diagnose 3 - Untergliederung 2)
* insert legacyMapping(code.coding[ICD10], KaOrg, Hauptdiagnose ICD 10 BMSGPK Schlüssel)
* insert legacyMapping(code.coding[ICD10], KaOrg, Hauptdiagnose Untergliederung 1)
* insert legacyMapping(code.coding[ICD10], KaOrg, Hauptdiagnose Untergliederung 2)
* insert legacyMapping(code.coding[ICD10], KaOrg, Zusatzdiagnose 1 - ICD 10 BMSGPK Schlüssel)
* insert legacyMapping(code.coding[ICD10], KaOrg, Zusatzdiagnose 1 - Untergliederung 1)
* insert legacyMapping(code.coding[ICD10], KaOrg, Zusatzdiagnose 1 - Untergliederung 2)
* insert ShallPopulateObligation(code.coding[ICD10], MopedKHActor)
* code.coding[HDG] from LKFHauptdiagnosegruppenVS (required)
* code.coding[HDG].system = Canonical(LKFHauptdiagnosegruppenCS)
* insert ShallPopulateObligation(code, MopedKHActor)
* extension contains Diagnosetyp named Diagnosetyp 1..2
* extension[Diagnosetyp] ^short = "LKF: Diagnose – Typ; KaOrg: Hauptdiagnose oder Zusatzdiagnose"
* insert legacyMapping(extension[Diagnosetyp], LKF, Diagnose – Typ)
* insert legacyMapping(extension[Diagnosetyp], KaOrg, Hauptdiagnose oder Zusatzdiagnose)
* insert ShallPopulateObligation(extension[Diagnosetyp], MopedKHActor)
//TBD Invariante, dass Haupt und Zusatzdiagnose gemeinsam bzw. 2x Haupt oder 2x Zusatz nicht möglich sind
