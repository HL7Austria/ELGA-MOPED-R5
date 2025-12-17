Profile: MopedProcedure
Parent: Procedure
Description: "MOPED Profil der Procedure Ressource für die LDF-Abrechnung"
Title: "MOPED Procedure"

* extension contains Leistungsanzahl named Leistungsanzahl 1..1
* extension[Leistungsanzahl] ^short = "LKF: Medizinische Leistung – Anzahl"
* insert ShallPopulateObligation(extension[Leistungsanzahl], MopedKHActor)
* encounter only Reference(MopedEncounter)
* encounter 1..1
* insert MopedHandleObligation(encounter)
* subject only Reference(MopedPatient)
* subject 1..1
* insert MopedHandleObligation(subject)
//performer.actor kann entweder das Feld "Funktionscode/Fachgebiet leistungserbringend" oder "Krankenanstaltennummer leistungserbringend" darstellen je nach Profil.
//performer.actor ist verpflichtend wenn der performer verwendet wird daher können wir es nicht auf actor und onBehalfOf aufteilen
//"Krankenanstaltennummer leistungserbringend" wird nur befüllt falls es sich um eine extern erbrachte Leistung handelt
* performer.actor ^short = "LKF: Referenz auf die Abteilung mit Funktionscode/Fachgebiet leistungserbringend oder die Krankenanstalt mit Krankenanstaltennummer leistungserbringend bei extern erbrachten Leistungen"
* performer.actor only Reference(MopedKHOrganisationseinheit or KHOrganization)
* performer.actor 1..1
* insert ShallPopulateObligation(performer.actor, MopedKHActor)
* performer 1..1
* performer.onBehalfOf only Reference(KHOrganization)
* performer.onBehalfOf ^short = "Referenz auf die Krankenanstalt, in der der Patient aufgenommen wurde."
* performer.onBehalfOf 1..1
* insert MopedHandleObligation(performer.onBehalfOf)
* occurrenceDateTime 1..1
* occurrenceDateTime ^short = "LKF: Medizinische Leistung Datum und Uhrzeit der Erbringung"
* insert ShallPopulateObligation(occurrenceDateTime, MopedKHActor)
* category.coding ^slicing.rules = #open
* category.coding ^slicing.discriminator.type = #value
* category.coding ^slicing.discriminator.path = "system"
* category.coding ^slicing.ordered = false
* category.coding contains MELGruppe 0..1
* category.coding[MELGruppe] from LKFmedizinischeEinzelleistungenVS (required)
* category.coding[MELGruppe] ^short = "MEL Gruppe"
* category.coding[MELGruppe].system = Canonical(LKFmedizinischeEinzelleistungenCS)
* code 1..1
* code ^short = "LKF: Medizinische Leistung – Code"
* code.coding from LKFLeistungskatalogVS (required)
* code.coding.system = $LKFLeistungskatalog
* code.coding 1..
* insert ShallPopulateObligation(code, MopedKHActor)
* bodySite from LKFSeitenlokalisationVS
* bodySite ^short = "LKF: Medizinische Leistung – Seitenlokalisation "
* insert ShallPopulateObligation(bodySite, MopedKHActor)

* obeys moped-externe-Leistung-KH

Invariant: moped-externe-Leistung-KH
Severity: #error
Description: "Wird bei performer.actor eine KHOrganization angegeben so muss sich diese unterscheiden von der referenzierten Krankenanstalt in perfomer.onBehalfOf"
Expression: ""