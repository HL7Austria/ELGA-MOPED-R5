Profile: MopedAbrechnenBundleKH
Parent: Bundle
Title: "MOPED Abrechnen Bundle KH"
Description: """Bundle für die Input-Ressourcen beim Abrechnen (KH)"""

* implicitRules 0..0

* type = #transaction
* entry 1..1
* entry ^slicing.discriminator[+].type = #type
* entry ^slicing.discriminator[=].path = "resource"
* entry ^slicing.rules = #closed
* entry contains
  LKFReq 1..1
* entry[LKFReq].resource only MopedLKFRequest
* entry[LKFReq].request.method from HTTPVerbInsertOnlyVS
* entry[LKFReq].request.method ^short = "POST"
