Profile: MopedVerlegenBundle
Parent: Bundle
Title: "MOPED Verlegen Bundle"
Description: """Bundle für die Input-Ressourcen beim Erfassen von Verlegungen"""

* implicitRules 0..0

* type = #transaction
* entry 1..*
* entry ^slicing.discriminator[+].type = #type
* entry ^slicing.discriminator[=].path = "resource"
* entry ^slicing.rules = #closed
* entry contains
  Verlegungen 1..
* entry[Verlegungen].resource only MopedTransferEncounterA or MopedTransferEncounterI or MopedTransferEncounterS
* entry[Verlegungen].resource 1..1
* entry[Verlegungen].request 1..1
