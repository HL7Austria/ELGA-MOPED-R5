Profile: MOPEDProcedure
Parent: Procedure
Description: "MOPED Profil der Procedure Ressource für die LDF-Abrechnung"
* identifier ^slicing.rules = #open
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "type.coding.code"
* identifier ^slicing.ordered = false
* identifier contains MOPEDConditionIdentifier 0..1
* identifier[MOPEDConditionIdentifier].type from https://termgit.elga.gv.at/ValueSet/hl7-at-patientidentifier (required)
* identifier[MOPEDConditionIdentifier].type.coding.code = #RI (exactly)
* identifier[MOPEDConditionIdentifier] ^short = "MOPED Identifier = Aufnahmezahl+ICD10Code+Procedure.occurrence(YYYY-MM-DDTHH:MM)" //TBD With or without time?

* encounter only Reference(MOPEDTransferEncounter)
* subject only Reference(HL7ATCorePatient)
* performer.actor only Reference(MOPEDOrganizationAbteilung)
* code from LKFmedizinischeEinzelleistungen
