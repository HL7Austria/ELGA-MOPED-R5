Profile: MOPEDProcedure
Parent: Procedure
Description: "MOPED Profil der Procedure Ressource für die LDF-Abrechnung"
Title: "MOPED Procedure"

* identifier ^slicing.rules = #open
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "type.coding.code"
* identifier ^slicing.ordered = false
* identifier contains MOPEDConditionIdentifier 1..1
* identifier[MOPEDConditionIdentifier].type from http://terminology.hl7.org/ValueSet/v2-0203 (required)
* identifier[MOPEDConditionIdentifier].type.coding.code = #RI (exactly)
* identifier[MOPEDConditionIdentifier] ^short = "MOPED Identifier = Aufnahmezahl+ICD10Code+Procedure.occurrence(YYYY-MM-DDTHH:MM)" //TBD With or without time?
* encounter only Reference(MOPEDEncounter)
* encounter 1..1
* subject only Reference(HL7ATCorePatient)
* performer.actor only Reference(MOPEDOrganizationAbteilung)
* performer.onBehalfOf only Reference(HL7ATCoreOrganization)
* performer.onBehalfOf 1..1
* occurrence[x] 1..1
* code from LKFmedizinischeEinzelleistungen
* code 1..1
