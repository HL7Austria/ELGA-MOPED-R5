Profile: MopedProcedure
Parent: Procedure
Description: "MOPED Profil der Procedure Ressource für die LDF-Abrechnung"
Title: "MOPED Procedure"

* identifier ^slicing.rules = #open
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "type.coding.code"
* identifier ^slicing.ordered = false
* identifier contains MopedConditionIdentifier 1..1
* identifier[MopedConditionIdentifier].type from http://terminology.hl7.org/ValueSet/v2-0203 (required)
* identifier[MopedConditionIdentifier].type.coding.code = #RI (exactly)
* identifier[MopedConditionIdentifier] ^short = "MOPED Identifier = Aufnahmezahl-Procedure.code-Procedure.occurrence(YYYY-MM-DDTHH:MM)"
* encounter only Reference(MopedEncounter)
* encounter 1..1
* subject only Reference(HL7ATCorePatient)
* performer.actor only Reference(MopedOrganizationAbteilung)
* performer.onBehalfOf only Reference(HL7ATCoreOrganization)
* performer.onBehalfOf 1..1
* occurrence[x] 1..1
* code from LKFmedizinischeEinzelleistungen
* code 1..1 MS
