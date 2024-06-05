Profile: MOPEDAdmissionEncounter
Parent: Encounter
Description: "MOPED Profil der Encounter Ressource für die Krankenanstaltenaufnahme"


* subject only Reference(HL7ATCorePatient)
* admission.origin only Reference(HL7ATCoreOrganization)
* admission.destination only Reference(HL7ATCoreOrganization)
* serviceProvider only Reference(MOPEDOrganizationAbteilung)


//Slice for Identifier
* identifier ^slicing.rules = #open
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "type.coding.code"
* identifier ^slicing.ordered = false
* identifier contains Aufnahmezahl 0..1 and Fallnummer 0..1
* identifier[Aufnahmezahl].type from https://termgit.elga.gv.at/ValueSet/hl7-at-patientidentifier (required)
* identifier[Aufnahmezahl].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203" (exactly)
* identifier[Aufnahmezahl].type.coding.code = HL7V2#PI (exactly)
* identifier[Aufnahmezahl].assigner only Reference(HL7ATCoreOrganization)

* identifier[Fallnummer].type from https://termgit.elga.gv.at/ValueSet/hl7-at-patientidentifier (required)
* identifier[Fallnummer].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203" (exactly)
* identifier[Fallnummer].type.coding.code = HL7V2#VN (exactly)
* identifier[Fallnummer].assigner only Reference(HL7ATCoreOrganization)

* actualPeriod ^short = "Aufnahme- und Entlassungsdatum"

* admission.dischargeDisposition ^short = "Entlassungsart"
* admission.admitSource ^short = "Ereignisart"
* reason ^short = "Ursache der Behandlung"
//Slice for class
* class ^slicing.rules = #open
* class ^slicing.discriminator.type = #value
* class ^slicing.discriminator.path = "coding.code"
* class ^slicing.ordered = false
* class contains Aufnahmeart 0..1
* class[Aufnahmeart] ^short = "Aufnahmeart"