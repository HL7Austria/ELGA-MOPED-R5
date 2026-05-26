Profile: AtMopedBundleAbrechnenKA
Parent: Bundle
Id: at-moped-bundle-abrechnen-KA
Title: "AT MOPED Bundle $abrechnen KA Profil"
Description: """MOPED Profil der Bundle Ressource für die Input-Ressourcen beim Abrechnen (KA)"""

* type = #transaction
* entry 1..1
* entry ^slicing.discriminator[+].type = #type
* entry ^slicing.discriminator[=].path = "resource"
* entry ^slicing.rules = #closed
* entry contains
  LKFRequests 1..1
* entry[LKFRequests].resource only AtMopedClaimLKFRequestBasis
* entry[LKFRequests].request.method from HTTPVerbInsertOnlyVS
* entry[LKFRequests].request.method ^short = "POST"
