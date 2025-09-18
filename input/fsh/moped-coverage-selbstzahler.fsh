Profile: MopedCoverageSelbstzahler
Parent: Coverage
Description: "MOPED Profil der Coverage Ressource für Selbstzahler"
Title: "MOPED Coverage für Selbstzahler"

* kind = #self-pay
* type = http://terminology.hl7.org/CodeSystem/coverage-selfpay#pay
* paymentBy.party only Reference(HL7ATCorePatient)
* paymentBy.party 1..1
* beneficiary only Reference(HL7ATCorePatient)
* beneficiary 1..1
* insurer 0..0

//Falls Hauptversicherter relevant:
//* paymentBy.party only Reference(HL7ATCorePatient or Hauptversicherter)

