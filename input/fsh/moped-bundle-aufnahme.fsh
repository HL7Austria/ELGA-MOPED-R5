Profile: MopedAufnahmeBundle
Parent: Bundle
Title: "MOPED Aufnahme Bundle"
Description: """Bundle für die Input-Ressourcen bei Patienten-Aufnahme"""

* implicitRules 0..0

* type = #transaction
* entry 1..*
* entry ^slicing.discriminator[+].type = #type
* entry ^slicing.discriminator[=].path = "resource"
* entry ^slicing.rules = #open
* entry contains
  Encounter 1..1
* entry[Encounter].resource only MopedEncounter
* entry contains
  Aufnahmediagnose 1..
* entry[Aufnahmediagnose].resource only MopedCondition
* entry contains
  Patient 1..1
* entry[Patient].resource only HL7ATCorePatient
