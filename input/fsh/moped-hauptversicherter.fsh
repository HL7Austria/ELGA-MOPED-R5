Alias: HL7V2 = http://terminology.hl7.org/CodeSystem/v2-0203

Profile: Hauptversicherter
Parent: RelatedPerson
Title: "MOPED Hauptversicherter"
Description: "MOPED Profil der Person Ressource für den Hauptversicherten"

* identifier.type from https://termgit.elga.gv.at/ValueSet/hl7-at-patientidentifier (extensible)
//Slice for Identifier, order matters
* identifier ^slicing.rules = #open
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "type.coding.code"
* identifier ^slicing.ordered = false
* identifier contains socialSecurityNumber 0..1
* identifier[socialSecurityNumber].type from https://termgit.elga.gv.at/ValueSet/hl7-at-patientidentifier (required)
* identifier[socialSecurityNumber].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203" (exactly)
* identifier[socialSecurityNumber].type.coding.code = HL7V2#SS (exactly)
* identifier[socialSecurityNumber].system 1..1
* identifier[socialSecurityNumber].system = "urn:oid:1.2.40.0.10.1.4.3.1" (exactly)
* identifier[socialSecurityNumber].system ^short = "OID for the Social Security Number in Austria"
//* identifier[socialSecurityNumber].assigner.reference = "https://www.gesundheit.gv.at/OID_Frontend/oiddetail.htm?smallView=true&actualOid=1.2.40.0.10.1.4.3.1" (exactly)
* identifier[socialSecurityNumber].assigner.display = "Dachverband der österreichischen Sozialversicherungsträger" (exactly)

* patient only Reference(HL7ATCorePatient)
* address only HL7ATCoreAddress

* relationship from MopedRelatedPersonRelationshipTypeVS (required)
* relationship.coding.code = http://terminology.hl7.org/CodeSystem/v3-RoleCode#SELF (exactly)
