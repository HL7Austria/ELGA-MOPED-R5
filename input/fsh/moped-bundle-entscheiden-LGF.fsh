Profile: MopedEntscheidenLGFBundle
Parent: Bundle
Title: "MOPED Entscheiden Bundle LGF"
Description: """Bundle für die Input-Ressourcen beim Entscheiden (Bestätigen/Ablehnen) von Punkten/Erorrs/Warnings"""

* implicitRules 0..0

* type = #transaction
* entry 1..*
* entry ^slicing.discriminator[+].type = #type
* entry ^slicing.discriminator[=].path = "resource"
* entry ^slicing.discriminator[+].type = #profile
* entry ^slicing.discriminator[=].path = "resource.resolve()"
* entry ^slicing.rules = #closed
* entry contains
  LKFResp 0..
* entry[LKFResp].resource only MopedLKFResponse
* entry[LKFResp].request.method from HTTPVerbInsertOnlyVS //insert only -> wenn eine LKFResponse nachträglich verändert werden soll wird eine neue Response eingebracht und von Moped automatisch die alte in den status canceled gesetzt
* entry[LKFResp].request.method ^short = "POST"
* entry contains
  Communication 0..
* entry[Communication].resource only MopedCommunication
* entry[Communication].request.method from HTTPVerbInsertOnlyVS
* entry[Communication].request.method ^short = "POST"
* entry contains
  CommunicationRequest 0..
* entry[CommunicationRequest].resource only CommunicationRequest
* entry[CommunicationRequest].request.method from HTTPVerbInsertOnlyVS
* entry[CommunicationRequest].request.method ^short = "POST"
