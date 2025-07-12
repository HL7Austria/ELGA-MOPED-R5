Profile: MopedErfassenBundle
Parent: Bundle
Title: "MOPED Erfassen Bundle"
Description: """Bundle für die Input-Ressourcen beim Erfassen von Leistungen und Diagnosen"""

* implicitRules 0..0

* type = #transaction
* entry 1..*
* entry ^slicing.discriminator[+].type = #type
* entry ^slicing.discriminator[=].path = "resource"
* entry ^slicing.rules = #closed
* entry contains
  Leistungen 0..
* entry[Leistungen].resource only MopedProcedure
* entry[Leistungen].resource 1..1
* entry[Leistungen].request 1..1
* entry contains
  Diagnosen 0..
* entry[Diagnosen].resource only MopedCondition
* entry[Diagnosen].resource 1..1
* entry[Diagnosen].request 1..1
