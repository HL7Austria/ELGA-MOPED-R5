Profile: MopedBasisPatientvbPK
Parent: HL7ATCorePatient
Title : "MOPED Basis Patient mit vbPKs"
Description: "MOPED Profil der Patienten Ressource mit vbPKs"
* insert MappingHeaderEinfuegen()
* identifier[socialSecurityNumber] 0..0
* identifier[bPK] 0..0
* identifier[localPatientId] 0..0
//TBD: adapt vbPK slice once bug is fixed and changes are incorporated into HL7ATCorePatient
* identifier ^slicing.rules = #open
* identifier ^slicing.discriminator[+].type = #value
* identifier ^slicing.discriminator[=].path = "type.coding.code"
* identifier ^slicing.discriminator[+].type = #value
* identifier ^slicing.discriminator[=].path = "system"
* identifier ^slicing.ordered = false
* identifier 0..
* identifier.use 0..0
* identifier.assigner 0..0
/* * identifier contains  vbPK 3..3
* identifier[vbPK].type from https://termgit.elga.gv.at/ValueSet/hl7-at-patientidentifier (required)
* identifier[vbPK].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203" (exactly)
* identifier[vbPK].type.coding.code = #ANON (exactly)
* identifier[vbPK].value 1..1
* identifier[vbPK].use 0..0
* identifier[vbPK].system 1..1
* identifier[vbPK].system from VBPKValueSet
* identifier[vbPK].system ^short = "OID for the specific vbPK in Austria" */
//TBD: re-slicing stays in this profile
* identifier contains  vbPKGH 0..1 MS  and vbPKSV 0..1 MS  and vbPKAS 0..1 MS 
* identifier[vbPKGH].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[vbPKGH].type.coding.code = #ANON
* identifier[vbPKGH].type 1..1
* identifier[vbPKGH].system = "urn:oid:1.2.40.0.34.4.22.1" (exactly)
* identifier[vbPKGH].system 1..1
* identifier[vbPKGH].value 1..1
* identifier[vbPKGH].value ^short = "vbPK GH Patient/Patientin"
* insert ShallPopulateObligation(identifier[vbPKGH].value, MopedKAActor)
* insert legacyMapping(identifier[vbPKGH].value, LKF, vbPK GH Patient/Patientin)
* identifier[vbPKSV].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[vbPKSV].type.coding.code = #ANON 
* identifier[vbPKGH].type 1..1
* identifier[vbPKSV].system = "urn:oid:1.2.40.0.34.4.22.2" (exactly)
* identifier[vbPKSV].system 1..1
* identifier[vbPKSV].value 1..1
* identifier[vbPKSV].value ^short = "vbPK SV Patient/Patientin"
* insert ShallPopulateObligation(identifier[vbPKSV].value, MopedKAActor)
* insert legacyMapping(identifier[vbPKSV].value, LKF, vbPK SV Patient/Patientin)
* identifier[vbPKAS].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[vbPKAS].type.coding.code = #ANON
* identifier[vbPKGH].type 1..1
* identifier[vbPKAS].system = "urn:oid:1.2.40.0.34.4.22.3" (exactly)
* identifier[vbPKAS].system 1..1
* identifier[vbPKAS].value 1..1
* identifier[vbPKAS].value ^short = "vbPK AS Patient/Patientin"
* insert ShallPopulateObligation(identifier[vbPKAS].value, MopedKAActor)
* insert legacyMapping(identifier[vbPKAS].value, LKF, vbPK AS Patient/Patientin)
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
//TBD name 0..0 if changes in HL7ATCore are approved
* name 1..1 MS
* name.use 0..0
* name.family 0..0
* name.given 0..0
* name.prefix 0..0
* name.suffix 0..0
* name.text 0..0
* name.period 0..0
//TBD remove name.extension if changes in HL7ATCore are approved
* name.extension 1..1
* name.extension contains DataAbsentReason named data-absent-reason 1..1
* name.extension[DataAbsentReason].valueCode = $DataAbsentReason#masked (exactly)
* insert ShallPopulateObligation(name.extension[DataAbsentReason], MopedKAActor)
* telecom 0..0
//TBD gender 0..0 if changes in HL7ATCore are approved
* gender 1..1 MS
* gender ^short = "Administratives Geschlecht des Patienten"
* gender.extension[AdministrativeGenderAddition] 0..1 MS
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
* address 0..
* address.extension 0..1 MS 
* address.extension[municipalityCode] 0..1 MS 
* address.extension[municipalityCode] ^short = "Wohnsitz – Gemeindecode"
* insert legacyMapping(address.extension[municipalityCode], LKF, Wohnsitz – Gemeindecode)
* insert ShallPopulateObligation(address.extension[municipalityCode], MopedKAActor)
* address.city 0..0
* address.country 0..1 MS 
* address.country ^short = "Wohnsitz – Staat"
* insert legacyMapping(address.country, LKF, Wohnsitz – Staat)
* insert legacyMapping(address.country, KaOrg, Wohnadresse des Patienten - Länderkennzeichen)
* insert legacyMapping(address.country, KaOrg, Hauptwohnsitz Staat)
* insert ShallPopulateObligation(address.country, MopedKAActor)
* address.district 0..0
* address.line 0..0
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

* obeys mandatory-gemeindecode-for-AUT
* obeys mandatory-postal-code-for-AUT


//TBD: remove ValueSet after changes are incorporated into HL7ATCorePatient
ValueSet: VBPKValueSet
Title: "vbPK ValueSet"
Description: "ValueSet für die vbPKs"
* ^experimental = true
* urn:ietf:rfc:3986#urn:oid:1.2.40.0.34.4.22.1 "vbPK GH oid"
* urn:ietf:rfc:3986#urn:oid:1.2.40.0.34.4.22.2 "vbPK SV oid"
* urn:ietf:rfc:3986#urn:oid:1.2.40.0.34.4.22.3 "vbPK AS oid"