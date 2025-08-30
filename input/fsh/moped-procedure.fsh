Profile: MopedProcedure
Parent: Procedure
Description: "MOPED Profil der Procedure Ressource für die LDF-Abrechnung"
Title: "MOPED Procedure"

* extension contains Leistungsanzahl named Leistungsanzahl 1..1
* extension[Leistungsanzahl]^short = "Medizinische Leistung – Anzahl"
* encounter only Reference(MopedEncounter)
* encounter 1..1
* subject only Reference(HL7ATCorePatient)
* subject 1..1
//performer.actor kann entweder das Feld "Funktionscode/Fachgebiet leistungserbringend" oder "Krankenanstaltennummer leistungserbringend" darstellen je nach Profil.
//performer.actor ist verpflichtend wenn der performer verwendet wird daher können wir es nicht auf actor und onBehalfOf aufteilen
//"Krankenanstaltennummer leistungserbringend" wird nur befüllt falls es sich um eine extern erbrachte Leistung handelt
* performer.actor ^short = "Referenz auf die Abteilung mit Funktionscode/Fachgebiet leistungserbringend  oder die Krankenanstalt mit Krankenanstaltennummer leistungserbringend bei extern erbrachten Leistungen"
* performer.actor only Reference(MopedOrganizationAbteilung or KHOrganization)
* performer 1..1
* occurrenceDateTime 1..1
* occurrenceDateTime ^short = "Medizinische Leistung Datum und Uhrzeit der Erbringung"
* category.coding ^slicing.rules = #open
* category.coding ^slicing.discriminator.type = #value
* category.coding ^slicing.discriminator.path = "system"
* category.coding ^slicing.ordered = false
* category.coding contains MELGruppe 0..1
* category.coding[MELGruppe] from LKFmedizinischeEinzelleistungenVS (required)
* category.coding[MELGruppe] ^short = "MEL Gruppe"
* category.coding[MELGruppe].system = Canonical(LKFmedizinischeEinzelleistungenCS)
* code 1..1
* code ^short = "Medizinische Leistung – Code: Leistungskatalog BMSGPK"
* code.coding from LKFLeistungskatalogVS (required)
* code.coding.system = $LKFLeistungskatalog
* code.coding 1..
* bodySite from LKFSeitenlokalisationVS
* bodySite ^short = "Seitenlokalisation"