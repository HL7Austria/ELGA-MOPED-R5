Profile: MopedAnfragenBundleKH
Parent: Bundle
Title: "MOPED Anfragen Bundle KH"
Description: """Bundle für die Input-Ressourcen beim Anfragen (KH)"""

* implicitRules 0..0

* type = #transaction
* entry 1..1
* entry ^slicing.discriminator[+].type = #type
* entry ^slicing.discriminator[=].path = "resource"
* entry ^slicing.rules = #closed
* entry contains
  VAEReq 1..1
* entry[VAEReq].resource only MopedVAERequest
* entry[VAEReq].request.method from HTTPVerbInsertOnlyVS
* entry[VAEReq].request.method ^short = "POST"
