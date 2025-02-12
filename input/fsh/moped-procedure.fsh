Profile: MopedProcedure
Parent: Procedure
Description: "MOPED Profil der Procedure Ressource für die LDF-Abrechnung"
* identifier ^slicing.rules = #open
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "type.coding.code"
* identifier ^slicing.ordered = false
* identifier contains MopedConditionIdentifier 1..1
* identifier[MopedConditionIdentifier].type from https://termgit.elga.gv.at/ValueSet/hl7-at-patientidentifier (required)
* identifier[MopedConditionIdentifier].type.coding.code = #RI (exactly)
* identifier[MopedConditionIdentifier] ^short = "MOPED Identifier = Aufnahmezahl+ICD10Code+Procedure.occurrence(YYYY-MM-DDTHH:MM)" //TBD With or without time?
* encounter only Reference(MopedEncounter)
* encounter 1..1
* subject only Reference(HL7ATCorePatient)
* performer.actor only Reference(MopedOrganizationAbteilung)
* performer.onBehalfOf only Reference(HL7ATCoreOrganization)
* performer.onBehalfOf 1..1
* occurrence[x] 1..1
* category.coding ^slicing.rules = #open
* category.coding ^slicing.discriminator.type = #value
* category.coding ^slicing.discriminator.path = "system"
* category.coding ^slicing.ordered = false
* category.coding contains MELGruppe 0..1
* category.coding[MELGruppe] from LKFmedizinischeEinzelleistungen (required)
* category.coding[MELGruppe].system = $LKFmedizinischeEinzelleistungen
* code 1..1
* code ^short = "Leistungskatalog BMSGPK"
* code.coding from LKFLeistungskatalog (required)
* code.coding.system = $LKFLeistungskatalog
