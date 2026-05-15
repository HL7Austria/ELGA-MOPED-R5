Profile: MopedBasisPatientKlarname
Parent: HL7ATCorePatient
Title : "MOPED Basis Patient mit Klarname"
Description: "MOPED Basis Profil der Patienten Ressource mit Klarname"
* insert MappingHeaderEinfuegen()
* identifier[socialSecurityNumber] 0..0
* identifier[bPK] 0..0
* identifier[localPatientId] 0..0
* implicitRules 0..0
* language 0..0
* contained 0..0
* extension[citizenship] 0..1 MS
* extension[citizenship].extension[period] 0..0
* extension[citizenship].extension[code].valueCodeableConcept ^short = "Staatsbürgerschaft"
* insert legacyMapping(extension[citizenship].extension[code].valueCodeableConcept, LKF, Staatsbürgerschaft)
* insert legacyMapping(extension[citizenship].extension[code].valueCodeableConcept, KaOrg, Staatsbürgerschaftsschlüssel)
* insert legacyMapping(extension[citizenship].extension[code].valueCodeableConcept, KaOrg, Staatsbürgerschaft)
* insert ShallPopulateObligation(extension[citizenship].extension[code].valueCodeableConcept, MopedKAActor)
* extension[PatientReligion] 0..0
* extension[birthPlace] 0..0
* active 0..0
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
* name.use 0..0
* name.prefix 0..0
* name.suffix 0..0
* name.text 0..0
* name.period 0..0
* telecom 0..0
//TBD gender 0..0 if changes in HL7ATCore are approved
* gender 1..1 MS
* gender ^short = "Administratives Geschlecht des Patienten"
* insert legacyMapping(gender, LKF, Geschlecht)
* insert legacyMapping(gender, KaOrg, Geschlecht des Hauptversicherten)
* insert legacyMapping(gender, KaOrg, Geschlecht des Mitversicherten)
* insert legacyMapping(gender, KaOrg, Geschlecht)
* insert ShallPopulateObligation(gender, MopedKAActor)
* birthDate 0..1 MS
* birthDate ^short = "Geburtsdatum des Patienten"
* insert legacyMapping(birthDate, LKF, Geburtsdatum)
* insert legacyMapping(birthDate, KaOrg, Geburtsdatum des Hauptversicherten)
* insert legacyMapping(birthDate, KaOrg, Geburtsdatum des Mitversicherten)
* insert legacyMapping(birthDate, KaOrg, Geburtsdatum)
* insert ShallPopulateObligation(birthDate, MopedKAActor)
* birthDate.extension[birthTime] 0..0
* deceased[x] 0..0
* address 0..1 MS
* address.extension 0..1 MS
* address.extension[municipalityCode] 0..1 MS
* address.extension[municipalityCode] ^short = "Wohnsitz – Gemeindecode"
* insert legacyMapping(address.extension[municipalityCode], LKF, Wohnsitz – Gemeindecode)
* insert ShallPopulateObligation(address.extension[municipalityCode], MopedKAActor)
* address.city 0..1 MS
* address.city ^short = "Wohnort"
* insert legacyMapping(address.city, KaOrg, Wohnadresse des Patienten - Ort)
* insert ShallPopulateObligation(address.city, MopedKAActor)
* address.country 0..1 MS
* address.country ^short = "Wohnsitz – Staat"
* insert legacyMapping(address.country, LKF, Wohnsitz – Staat)
* insert legacyMapping(address.country, KaOrg, Wohnadresse des Patienten - Länderkennzeichen)
* insert legacyMapping(address.country, KaOrg, Hauptwohnsitz Staat)
* insert ShallPopulateObligation(address.country, MopedKAActor)
* address.district 0..0
* address.line.extension[street] 0..1 MS
* address.line.extension[street] ^short = "Wohnadresse"
* insert legacyMapping(address.line.extension[street], KaOrg, Wohandresse des Patienten - Straße)
* insert ShallPopulateObligation(address.line.extension[street], MopedKAActor)
* address.period 0..0
* address.postalCode 0..1 MS
* address.postalCode ^short = "Wohnsitz – Postleitzahl"
* insert legacyMapping(address.postalCode, LKF, Wohnsitz – Postleitzahl)
* insert legacyMapping(address.postalCode, KaOrg, Wohnadresse des Patienten - Postleitzahl)
* insert legacyMapping(address.postalCode, KaOrg, Hauptwohnsitz Postleitzahl)
* insert ShallPopulateObligation(address.postalCode, MopedKAActor)
* address.state 0..0
* address.text 0..0
* address.type 0..0
* address.use 0..0
* contact 0..0
* multipleBirth[x] 0..0
* photo 0..0
* generalPractitioner 0..0
* managingOrganization 0..0
* maritalStatus 0..0
* communication 0..0
* link 0..0

//TBD Invariante einfügen, sodass bei country #AUT die Postleitzahl und der Gemeindecode verpflichtend sind
* obeys mandatory-gemeindecode-for-AUT
* obeys mandatory-postal-code-for-AUT

