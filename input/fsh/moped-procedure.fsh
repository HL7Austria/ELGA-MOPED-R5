Profile: MopedProcedure
Parent: Procedure
Description: "MOPED Profil der Procedure Ressource für die LDF-Abrechnung"
Title: "MOPED Procedure"

* identifier ^slicing.rules = #open
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "type.coding.code"
* identifier ^slicing.ordered = false
* identifier contains MopedProcedureIdentifier 1..1
* identifier[MopedProcedureIdentifier].type from http://terminology.hl7.org/ValueSet/v2-0203 (required)
* identifier[MopedProcedureIdentifier].type.coding.code = #RI (exactly)
* identifier[MopedProcedureIdentifier] ^short = "MOPED Identifier = Aufnahmezahl-Procedure.code-Procedure.occurrence(YYYY-MM-DDTHH:MM)"
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
