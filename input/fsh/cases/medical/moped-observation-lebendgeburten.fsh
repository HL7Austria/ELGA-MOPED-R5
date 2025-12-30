Profile: MopedObservationLebendgeburten
Parent: Observation
Description: "MOPED Profil der Observation Ressource für die Anzahl der Lebendgeburten"
Title: "MOPED Observation Lebendgeburten"

* status 1..1
* insert ShallPopulateObligation(status, MopedKHActor)
* code = http://loinc.org#11636-8 "[#] Births.live"
* code 1..1
* insert ShallPopulateObligation(code, MopedKHActor)
* valueQuantity 1..1
* valueQuantity.value ^short = "KaOrg: Anzahl der Lebendgeburten"
* valueQuantity.value 1..1
* insert legacyMapping(valueQuantity.value, KaOrg, Anzahl der Lebendgeburten)
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