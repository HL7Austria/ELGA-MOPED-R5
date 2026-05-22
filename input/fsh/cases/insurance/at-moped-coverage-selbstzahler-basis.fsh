Profile: AtMopedCoverageSelbstzahlerBasis
Parent: AtMopedCoverageGenerisch
Id: at-moped-coverage-selbstzahler
Title: "AT MOPED Coverage Selbstzahler Basis Profil"
Description: "MOPED Basis Profil der Coverage Ressource für Personen, welche kein relevantes Versicherungsverhältnis haben und die Behandlung selbst bezahlen müssen."
* insert ShallPopulateObligation(status, MopedKAActor)
* insert MopedHandleObligation(status)
* kind = #self-pay
* insert ShallPopulateObligation(kind, MopedKAActor)
* type = http://terminology.hl7.org/CodeSystem/coverage-selfpay#pay
* insert ShallPopulateObligation(type, MopedKAActor)
* paymentBy.party only Reference(AtMopedPatientvbPKBasis or AtMopedPatientKlarnameBasis)
* paymentBy.party 1..1
* insert MopedHandleObligation(paymentBy.party)
* beneficiary only Reference(AtMopedPatientvbPKBasis or AtMopedPatientKlarnameBasis)
* beneficiary 1..1
* insert MopedHandleObligation(beneficiary)
* insurer 0..0
