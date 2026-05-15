Profile: MopedObservationEntbindungsart
Parent: Observation
Description: "MOPED Profil der Observation Ressource für die Entbindungsart"
Title: "MOPED Observation Entbindungsart"

* status 1..1
* insert ShallPopulateObligation(status, MopedKAActor)
//* code = $SNOMED#364336006 "Art der Entbindung" //TBD fachlich hinterfragen
* code 1..1
* insert ShallPopulateObligation(code, MopedKAActor)
* valueCodeableConcept from MopedEntbindungsartVS
* valueCodeableConcept 1..1
* valueCodeableConcept ^short = "Art der Entbindung"
* insert ShallPopulateObligation(valueCodeableConcept, MopedKAActor)
* insert legacyMapping(valueCodeableConcept, KaOrg, Art der Entbindung)

* effectiveDateTime 1..1
* effectiveDateTime ^short = "Entbindungsdatum"
* insert legacyMapping(effectiveDateTime, KaOrg, Entbindungsdatum)
* insert ShallPopulateObligation(effectiveDateTime, MopedKAActor)

* subject only Reference(MopedPatient)
* subject 1..1
* insert MopedHandleObligation(subject)
* encounter only Reference(MopedEncounter)
* encounter 1..1
* insert MopedHandleObligation(encounter)