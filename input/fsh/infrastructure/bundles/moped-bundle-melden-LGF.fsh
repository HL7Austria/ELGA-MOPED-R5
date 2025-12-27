Profile: MopedMeldenLGFBundle
Parent: Bundle
Title: "MOPED Melden Bundle LGF"
Description: """Bundle für die Input-Ressourcen beim Melden von Informationen"""

* implicitRules 0..0

* type = #transaction
* entry 1..1
* entry ^slicing.discriminator[+].type = #type
* entry ^slicing.discriminator[=].path = "resource"
* entry ^slicing.rules = #closed
* entry contains
  ARKKostenInformation 1..1
* entry[ARKKostenInformation].resource only MopedARKRequest
* entry[ARKKostenInformation].request.method from HTTPVerbInsertOnlyVS
* entry[ARKKostenInformation].request.method ^short = "POST"

