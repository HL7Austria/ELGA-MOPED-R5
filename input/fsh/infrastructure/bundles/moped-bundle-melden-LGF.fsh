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
  ARKReq 1..1
* entry[ARKReq].resource only MopedARKRequest
* entry[ARKReq].request.method from HTTPVerbInsertOnlyVS
* entry[ARKReq].request.method ^short = "POST"

