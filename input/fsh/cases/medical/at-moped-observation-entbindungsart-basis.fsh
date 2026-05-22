Profile: AtMopedObservationEntbindungsartBasis
Parent: AtMopedObservationGenerisch
Id: at-moped-observation-entbindungsart-basis
Title: "AT MOPED Observation Entbindungsart Basis Profil"
Description: "MOPED Basis Profil der Observation Ressource für die Entbindungsart"
* insert MappingHeaderEinfuegen
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

* subject only Reference(AtMopedPatientvbPKBasis or AtMopedPatientKlarnameBasis)
* subject 1..1
* insert MopedHandleObligation(subject)
* encounter only Reference(AtMopedEncounterAufenthaltStationaerBasis or AtMopedEncounterBesuchAmbulantBasis)
* encounter 1..1
* insert MopedHandleObligation(encounter)