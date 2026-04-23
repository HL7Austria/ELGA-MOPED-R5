Profile: Hauptversicherter
Parent: RelatedPerson
Title: "MOPED Hauptversicherter"
Description: "MOPED Profil der Person Ressource für den Hauptversicherten"
* insert MappingHeaderEinfuegen()
* name.family ^short = "KaOrg: Zuname des Hauptversicherten"
* insert legacyMapping(name.family, KaOrg, [[Zuname des Hauptversicherten]])
* insert ShallPopulateObligation(name.family, MopedKAActor)
* name.given ^short = "KaOrg: Vorname des Hauptversicherten"
* insert legacyMapping(name.given, KaOrg, [[Vorname des Hauptversicherten]])
* insert ShallPopulateObligation(name.given, MopedKAActor)
* gender ^short = "KaOrg: Geschlecht des Hauptversicherten"
* insert legacyMapping(gender, KaOrg, [[Geschlecht des Hauptversicherten]])
* insert ShallPopulateObligation(gender, MopedKAActor)
* birthDate ^short = "KaOrg: Geburtsdatum des Hauptversicherten"
* insert legacyMapping(birthDate, KaOrg, [[Geburtsdatum des Hauptversicherten]])
* insert ShallPopulateObligation(birthDate, MopedKAActor)
* identifier.type from $HL7ATPatientIdentifier (extensible)
//Slice for Identifier, order matters
* identifier ^slicing.rules = #open
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "type.coding.code"
* identifier ^slicing.ordered = false
* identifier contains socialSecurityNumber 0..1
* identifier[socialSecurityNumber] ^short = "KaOrg: Versicherungsnummer des Hauptversicherten"
* insert legacyMapping(identifier[socialSecurityNumber].value, KaOrg, [[Versicherungsnummer des Hauptversicherten]])
* insert ShallPopulateObligation(identifier[socialSecurityNumber].value, MopedKAActor)
* identifier[socialSecurityNumber].type from $HL7ATPatientIdentifier (required)
* identifier[socialSecurityNumber].type.coding.system = $HL7V2 (exactly)
* identifier[socialSecurityNumber].type.coding.code = $HL7V2#SS (exactly)
* identifier[socialSecurityNumber].system 1..1
* identifier[socialSecurityNumber].system = $SVNROID (exactly)
* identifier[socialSecurityNumber].system ^short = "OID for the Social Security Number in Austria"
//* identifier[socialSecurityNumber].assigner.reference = "https://www.gesundheit.gv.at/OID_Frontend/oiddetail.htm?smallView=true&actualOid=1.2.40.0.10.1.4.3.1" (exactly)
* identifier[socialSecurityNumber].assigner.display = "Dachverband der österreichischen Sozialversicherungsträger" (exactly)
* insert ShallPopulateObligation(identifier[socialSecurityNumber], MopedKAActor)

* patient only Reference(MopedPatient)
* insert MopedHandleObligation(patient)
* address only HL7ATCoreAddress
* insert ShallPopulateObligation(address, MopedKAActor)
