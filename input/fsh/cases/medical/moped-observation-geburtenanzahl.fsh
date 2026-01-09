Profile: MopedObservationGeburtenanzahl
Parent: Observation
Description: "MOPED Profil der Observation Ressource für die Anzahl der Geburten"
Title: "MOPED Observation Geburtenanzahl"

* status 1..1
* insert ShallPopulateObligation(status, MopedKHActor)
* code from GeburtenanzahlVS (required)
* code 1..1
* insert ShallPopulateObligation(code, MopedKHActor)
* valueQuantity 1..1
* valueQuantity.value ^short = "KaOrg: Anzahl der Lebendgeburten, Anzahl der Totgeburten"
* valueQuantity.value 1..1
* valueQuantity.value ^mapping[+].identity = "KaOrg"
* valueQuantity.value ^mapping[=].map = "Anzahl der Lebendgeburten, Anzahl der Totgeburten"
* insert ShallPopulateObligation(valueQuantity.value, MopedKHActor)

* effectiveDateTime 1..1
* effectiveDateTime ^short = "KaOrg: Entbindungsdatum"
* insert legacyMapping(effectiveDateTime, KaOrg, Entbindungsdatum)
* insert ShallPopulateObligation(effectiveDateTime, MopedKHActor)

* subject only Reference(MopedPatient)
* subject 1..1
* insert MopedHandleObligation(subject)
* encounter only Reference(MopedEncounter)
* encounter 1..1
* insert MopedHandleObligation(encounter)