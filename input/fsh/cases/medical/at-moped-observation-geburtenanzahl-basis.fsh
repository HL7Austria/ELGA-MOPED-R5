Profile: MopedObservationGeburtenanzahl
Parent: AtMopedObservationGenerisch
Id: at-moped-observation-geburtenanzahl-basis
Title: "AT MOPED Observation Geburtenanzahl Basis Profil"
Description: "MOPED Basis Profil der Observation Ressource für die Anzahl der Geburten"
* insert MappingHeaderEinfuegen
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

* subject only Reference(AtMopedPatientvbPKBasis or AtMopedPatientKlarnameBasis)
* subject 1..1
* insert MopedHandleObligation(subject)
* encounter only only Reference(AtMopedEncounterAufenthaltStationaerBasis or AtMopedEncounterBesuchAmbulantBasis)
* encounter 1..1
* insert MopedHandleObligation(encounter)