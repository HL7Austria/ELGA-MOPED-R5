Profile: MopedObservationGeburtenanzahl
Parent: Observation
Description: "MOPED Profil der Observation Ressource für die Anzahl der Geburten"
Title: "MOPED Observation Geburtenanzahl"

* status 1..1
* insert ShallPopulateObligation(status, MopedKAActor)
* code from GeburtenanzahlVS (required)
* code 1..1
* insert ShallPopulateObligation(code, MopedKAActor)
* valueQuantity 1..1
* valueQuantity.value ^short = "Anzahl der Lebendgeburten; Anzahl der Totgeburten"
* valueQuantity.value 1..1
* insert ShallPopulateObligation(valueQuantity.value, MopedKAActor)
* insert legacyMapping(valueQuantity.value, KaOrg, Anzahl der Lebendgeburten)
* insert legacyMapping(valueQuantity.value, KaOrg, Anzahl der Totgeburten)

* effectiveDateTime 1..1
* effectiveDateTime ^short = "Entbindungsdatum"
* insert legacyMapping(effectiveDateTime, KaOrg, Entbindungsdatum)
* insert ShallPopulateObligation(effectiveDateTime, MopedKAActor)

* subject only Reference(MopedBasisPatientvbPK or MopedBasisPatientKlarname)
* subject 1..1
* insert MopedHandleObligation(subject)
* encounter only Reference(MopedEncounter)
* encounter 1..1
* insert MopedHandleObligation(encounter)