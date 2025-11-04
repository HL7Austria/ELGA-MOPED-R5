Profile: MopedUpdateBundleKH
Parent: Bundle
Title: "MOPED Update Bundle KH"
Description: """Bundle für die Input-Ressourcen beim Update von Informationen zu einem Fall"""

* implicitRules 0..0

* type = #transaction
* entry 1..*
* entry ^slicing.discriminator[+].type = #type
* entry ^slicing.discriminator[=].path = "resource"
* entry ^slicing.discriminator[+].type = #profile
* entry ^slicing.discriminator[=].path = "resource.resolve()"
* entry ^slicing.rules = #closed
* entry contains
  Aufenthalt 0..1
* entry[Aufenthalt].resource only MopedEncounter //TBD nach Entscheidung zu ambulantem Fall den generischen "MopedEncounter" ersetzen durch "MopedEncounterA or MopedEncounterS"  
* entry[Aufenthalt].request.method from HTTPVerbUpdateOnlyVS
* entry[Aufenthalt].request.method ^short = "PUT"
* entry contains
  Patient 0..1
* entry[Patient].resource only MopedPatient
* entry[Patient].request.method from HTTPVerbUpdateOnlyVS
* entry[Patient].request.method ^short = "PUT"
* entry contains
  Diagnosen 0..
* entry[Diagnosen].resource only MopedCondition
* entry[Diagnosen].request.method from HTTPVerbInsertUpdateDeleteVS
* entry[Diagnosen].request.method ^short = "POST | PUT | DELETE"
* entry contains
  Leistungen 0..
* entry[Leistungen].resource only MopedProcedure
* entry[Leistungen].request.method from HTTPVerbInsertUpdateDeleteVS
* entry[Leistungen].request.method ^short = "POST | PUT | DELETE"
* entry contains
  Observations 0..
* entry[Observations].resource only Observation //TBD Moped Observation Profile
* entry[Observations].request.method from HTTPVerbInsertUpdateDeleteVS
* entry[Observations].request.method ^short = "POST | PUT | DELETE"
* entry contains
  Verlegungen 0..
* entry[Verlegungen].resource only MopedTransferEncounter
* entry[Verlegungen].request.method from HTTPVerbInsertUpdateDeleteVS
* entry[Verlegungen].request.method ^short = "POST | PUT | DELETE"
* entry contains
  Coverage 0..1
* entry[Coverage].resource only MopedCoverage or MopedCoverageSelbstzahler
* entry[Coverage].request.method from HTTPVerbInsertUpdateDeleteVS //TBD -> wirklich alle Methoden bei Coverage möglich?
* entry[Coverage].request.method ^short = "POST | PUT | DELETE"
* entry contains
  Hauptversicherter 0..1
* entry[Hauptversicherter].resource only Hauptversicherter
* entry[Hauptversicherter].request.method from HTTPVerbInsertUpdateDeleteVS
* entry[Hauptversicherter].request.method ^short = "POST | PUT | DELETE"
* entry contains
  UeberweisendeOrganization 0..1
* entry[UeberweisendeOrganization].resource only HL7ATCoreOrganization
* entry[UeberweisendeOrganization].request.method from HTTPVerbInsertUpdateDeleteVS
* entry[UeberweisendeOrganization].request.method ^short = "POST | PUT | DELETE"
* entry contains
  Frageboegen 0..
* entry[Frageboegen].resource only MopedQuestionnaireResponse
* entry[Frageboegen].request.method from HTTPVerbInsertUpdateDeleteVS
* entry[Frageboegen].request.method ^short = "POST | PUT | DELETE"
* entry contains
  Communication 0..
* entry[Communication].resource only CommunicationRequest
* entry[Communication].request.method from HTTPVerbInsertOnlyVS
* entry[Communication].request.method ^short = "POST"
* entry contains
  CommunicationRequest 0..
* entry[CommunicationRequest].resource only CommunicationRequest
* entry[CommunicationRequest].request.method from HTTPVerbInsertOnlyVS
* entry[CommunicationRequest].request.method ^short = "POST"
