Profile: MopedInputBundleKH
Parent: Bundle
Title: "MOPED Input Bundle KH"
Description: """Bundle für die Input-Ressourcen beim Update von Informationen zu einem Fall"""

* implicitRules 0..0

* type = #transaction
* entry 1..*
* entry ^slicing.discriminator[+].type = #type
* entry ^slicing.discriminator[=].path = "resource"
* entry ^slicing.discriminator[+].type = #value
* entry ^slicing.discriminator[=].path = "resource.ofType(Encounter).type"
* entry ^slicing.rules = #closed
* entry contains
  Aufenthalt 0..1
* entry[Aufenthalt].resource only MopedEncounter //TBD nach Entscheidung zu ambulantem Fall den generischen "MopedEncounter" ersetzen durch "MopedEncounterA or MopedEncounterS"  
* entry[Aufenthalt].request.method from HTTPVerbInsertUpdateVS
* entry[Aufenthalt].request.method ^short = "POST | PUT"
* entry contains
  Patient 0..1
* entry[Patient].resource only MopedPatient
* entry[Patient].request.method from HTTPVerbInsertUpdateVS
* entry[Patient].request.method ^short = "POST | PUT"
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
  Entbindung 0..
* entry[Entbindung].resource only Observation //TBD Moped Observation Profile
* entry[Entbindung].request.method from HTTPVerbInsertUpdateDeleteVS
* entry[Entbindung].request.method ^short = "POST | PUT | DELETE"
* entry contains
  Bewegungen 0..
* entry[Bewegungen].resource only MopedTransferEncounter
* entry[Bewegungen].request.method from HTTPVerbInsertUpdateDeleteVS
* entry[Bewegungen].request.method ^short = "POST | PUT | DELETE"
* entry contains
  Versichertenanspruch 0..1
* entry[Versichertenanspruch].resource only MopedCoverage or MopedCoverageSelbstzahler
* entry[Versichertenanspruch].request.method from HTTPVerbInsertUpdateDeleteVS //TBD -> wirklich alle Methoden bei Coverage möglich?
* entry[Versichertenanspruch].request.method ^short = "POST | PUT | DELETE"
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
* entry[Frageboegen].resource only MopedQuestionnaireResponseFallbezogen
* entry[Frageboegen].request.method from HTTPVerbInsertUpdateDeleteVS
* entry[Frageboegen].request.method ^short = "POST | PUT | DELETE"
* entry contains
  Communication 0..
* entry[Communication].resource only Communication
* entry[Communication].request.method from HTTPVerbInsertOnlyVS
* entry[Communication].request.method ^short = "POST"
* entry contains
  CommunicationRequest 0..
* entry[CommunicationRequest].resource only CommunicationRequest
* entry[CommunicationRequest].request.method from HTTPVerbInsertOnlyVS
* entry[CommunicationRequest].request.method ^short = "POST"
