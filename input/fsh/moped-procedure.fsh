Profile: MopedProcedure
Parent: Procedure
Description: "MOPED Profil der Procedure Ressource für die LDF-Abrechnung"
Title: "MOPED Procedure"

* extension contains Leistungsanzahl named Leistungsanzahl 1..1
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
* subject 1..1
//performer.actor kann entweder das Feld "Funktionscode/Fachgebiet leistungserbringend" oder "Krankenanstaltennummer leistungserbringend" darstellen je nach Profil.
//performer.actor ist verpflichtend wenn der performer verwendet wird daher können wir es nicht auf actor und onBehalfOf aufteilen
//"Krankenanstaltennummer leistungserbringend" wird nur befüllt falls es sich um eine extern erbrachte Leistung handelt
* performer.actor only Reference(MopedOrganizationAbteilung or KHOrganization)
* performer 1..1
* occurrenceDateTime 1..1
* category.coding ^slicing.rules = #open
* category.coding ^slicing.discriminator.type = #value
* category.coding ^slicing.discriminator.path = "system"
* category.coding ^slicing.ordered = false
* category.coding contains MELGruppe 0..1
* category.coding[MELGruppe] from LKFmedizinischeEinzelleistungenVS (required)
* category.coding[MELGruppe].system = Canonical(LKFmedizinischeEinzelleistungenCS)
* code 1..1
* code ^short = "Leistungskatalog BMSGPK"
* code.coding from LKFLeistungskatalogVS (required)
* code.coding.system = $LKFLeistungskatalog
* code.coding 1..
* bodySite from LKFSeitenlokalisationVS