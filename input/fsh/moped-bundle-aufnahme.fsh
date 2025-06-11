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
  Coverage 1..1
* entry[Coverage].resource only MopedCoverage
* entry contains
  Patient 1..1
* entry[Patient].resource only HL7ATCorePatient
* entry contains
  Hauptversicherter 0..1
* entry[Hauptversicherter].resource only Hauptversicherter
