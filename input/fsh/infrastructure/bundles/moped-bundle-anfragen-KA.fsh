Profile: MopedAnfragenBundleKA
Parent: Bundle
Title: "MOPED Anfragen Bundle KA"
Description: """Bundle für die Input-Ressourcen beim Anfragen (KA)"""



* type = #transaction
* entry 1..1
* entry ^slicing.discriminator[+].type = #type
* entry ^slicing.discriminator[=].path = "resource"
* entry ^slicing.rules = #closed
* entry contains
  VAERequests 1..1
* entry[VAERequests].resource only MopedVAERequestVerlaengerung or MopedVAERequestInitial
* entry[VAERequests].request.method from HTTPVerbInsertOnlyVS
* entry[VAERequests].request.method ^short = "POST"
