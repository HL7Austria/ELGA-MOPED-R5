Profile: AtMopedPatientKlarnameBasis
Parent: AtMopedPatientGenerisch
Id: at-moped-patient-klarname-basis
Title : "AT MOPED Patient Klarname Basis Profil"
Description: "MOPED Basis Profil der Patienten Ressource mit Klarname"
* insert MappingHeaderEinfuegen
* identifier[vbPKGH] 0..0
* identifier[vbPKSV] 0..0
* identifier[vbPKAS] 0..0

//TBD name 0..1 MS if changes in HL7ATCore are approved
* name 1..1
* name.family ^short = "Zuname des Patienten"
* name.family 0..1 MS
* insert legacyMapping(name.family, KaOrg, Zuname)
* insert legacyMapping(name.family, KaOrg, Zuname des Hauptversicherten)
* insert legacyMapping(name.family, KaOrg, Zuname des Mitversicherten)
* insert ShallPopulateObligation(name.family, MopedKAActor)
* name.given ^short = "Vorname des Patienten"
* name.given 0..1 MS
* insert legacyMapping(name.given, KaOrg, Vorname)
* insert legacyMapping(name.given, KaOrg, Vorname des Hauptversicherten)
* insert legacyMapping(name.given, KaOrg, Vorname des Mitversicherten)
* insert ShallPopulateObligation(name.given, MopedKAActor)

