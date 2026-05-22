Profile: AtMopedBundleMeldenLGF
Parent: Bundle
Id: at-moped-bundle-melden-LGF
Title: "AT MOPED Bundle $melden LGF"
Description: """MOPED Profil der Bundle Ressource für die Input-Ressourcen beim Melden von Informationen"""



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

