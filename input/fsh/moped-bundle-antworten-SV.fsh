Profile: MopedAntwortenBundleSV
Parent: Bundle
Title: "MOPED Antworten Bundle SV"
Description: """Bundle für die Input-Ressourcen beim Einbringen von Antworten der SV"""

* implicitRules 0..0

* type = #transaction
* entry 1..*
* entry ^slicing.discriminator[+].type = #type
* entry ^slicing.discriminator[=].path = "resource"
* entry ^slicing.rules = #closed
* entry contains
  VAEResp 0..
* entry[VAEResp].resource only MopedVAEResponse
* entry[VAEResp].request.method from HTTPVerbInsertOnlyVS //insert only -> wenn eine VAE nachträglich abgelehnt werden soll wird eine neue eingebracht und von Moped automatisch die alte in den status canceled gesetzt
* entry[VAEResp].request.method ^short = "POST"
* entry contains
  ARKResp 0..
* entry[ARKResp].resource only MopedARKResponse
* entry[ARKResp].request.method from HTTPVerbInsertOnlyVS
* entry[ARKResp].request.method ^short = "POST"
* entry contains
  ARKStatusUpdate 0..
* entry[ARKStatusUpdate].resource only MopedARKStatusUpdate
* entry[ARKStatusUpdate].request.method from HTTPVerbInsertOnlyVS 
* entry[ARKStatusUpdate].request.method ^short = "POST"
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