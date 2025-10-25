Profile: MopedCoverageSelbstzahler
Parent: Coverage
Description: "MOPED Profil der Coverage Ressource für Selbstzahler"
Title: "MOPED Coverage für Selbstzahler"
* insert ShallPopulateObligation(status, MopedKHActor)
* kind = #self-pay
* insert ShallPopulateObligation(kind, MopedKHActor)
* type = http://terminology.hl7.org/CodeSystem/coverage-selfpay#pay
* insert ShallPopulateObligation(type, MopedKHActor)
* paymentBy.party only Reference(HL7ATCorePatient)
* paymentBy.party 1..1
* insert MopedHandleObligation(paymentBy.party)
* beneficiary only Reference(HL7ATCorePatient)
* beneficiary 1..1
* insert MopedHandleObligation(beneficiary)
* insurer 0..0
