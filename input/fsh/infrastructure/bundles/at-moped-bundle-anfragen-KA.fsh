Profile: AtMopedBundleAnfragenKA
Parent: Bundle
Id: at-moped-bundle-anfragen-KA
Title: "AT MOPED Bundle $anfragen KA Profil"
Description: """MOPED Profil der Bundle Ressource für die Input-Ressourcen beim $anfragen (KA)"""



* type = #transaction
* entry 1..1
* entry ^slicing.discriminator[+].type = #type
* entry ^slicing.discriminator[=].path = "resource"
* entry ^slicing.rules = #closed
* entry contains
  VAERequests 1..1
* entry[VAERequests].resource only AtMopedClaimVAERequestVerlaengerung or AtMopedClaimVAERequestInitial
* entry[VAERequests].request.method from HTTPVerbInsertOnlyVS
* entry[VAERequests].request.method ^short = "POST"
