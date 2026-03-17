Profile: MopedAbrechnenBundleKH
Parent: Bundle
Title: "MOPED Abrechnen Bundle KH"
Description: """Bundle für die Input-Ressourcen beim Abrechnen (KH)"""



* type = #transaction
* entry 1..1
* entry ^slicing.discriminator[+].type = #type
* entry ^slicing.discriminator[=].path = "resource"
* entry ^slicing.rules = #closed
* entry contains
  LKFRequests 1..1
* entry[LKFRequests].resource only MopedLKFRequest
* entry[LKFRequests].request.method from HTTPVerbInsertOnlyVS
* entry[LKFRequests].request.method ^short = "POST"
