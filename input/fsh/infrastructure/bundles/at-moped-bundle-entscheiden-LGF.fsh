Profile: AtMopedBundleEntscheidenLGF
Parent: Bundle
Id: at-moped-bundle-entscheiden-LGF
Title: "AT MOPED Bundle $entscheiden LGF Profil"
Description: """MOPED Profil der Bundle Ressource für die Input-Ressourcen beim Entscheiden (Bestätigen/Ablehnen) von Punkten/Erorrs/Warnings"""



* type = #transaction
* entry 1..*
* entry ^slicing.discriminator[+].type = #type
* entry ^slicing.discriminator[=].path = "resource"
* entry ^slicing.rules = #closed
* entry contains
  LKFResponses 0..
* entry[LKFResponses].resource only AtMopedClaimResponseLKFResponseBasis
* entry[LKFResponses].request.method from HTTPVerbInsertOnlyVS //insert only -> wenn eine LKFResponse nachträglich verändert werden soll wird eine neue Response eingebracht und von Moped automatisch die alte in den status canceled gesetzt
* entry[LKFResponses].request.method ^short = "POST"
* entry contains
  Communication 0..
* entry[Communication].resource only Communication
* entry[Communication].request.method from HTTPVerbInsertOnlyVS
* entry[Communication].request.method ^short = "POST"
* entry contains
  CommunicationRequest 0..
* entry[CommunicationRequest].resource only CommunicationRequest
* entry[CommunicationRequest].request.method from HTTPVerbInsertOnlyVS
* entry[CommunicationRequest].request.method ^short = "POST"
