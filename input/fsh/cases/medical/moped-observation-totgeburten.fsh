Profile: MopedObservationTotgeburten
Parent: Observation
Description: "MOPED Profil der Observation Ressource für die Anzahl der Totgeburten"
Title: "MOPED Observation Totgeburten"

* status 1..1
* insert ShallPopulateObligation(status, MopedKHActor)
* code = http://loinc.org#57062-2 "[#] Births.stillborn"
* code 1..1
* insert ShallPopulateObligation(code, MopedKHActor)
* valueQuantity 1..1
* valueQuantity.value ^short = "KaOrg: Anzahl der Totgeburten"
* valueQuantity.value 1..1
* insert legacyMapping(valueQuantity.value, KaOrg, Anzahl der Totgeburten)
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