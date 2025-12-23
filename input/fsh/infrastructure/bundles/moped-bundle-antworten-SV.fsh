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
  VAEResponses 0..
* entry[VAEResponses].resource only MopedVAEResponse
* entry[VAEResponses].request.method from HTTPVerbInsertOnlyVS //insert only -> wenn eine VAE nachträglich abgelehnt werden soll wird eine neue eingebracht und von Moped automatisch die alte in den status canceled gesetzt
* entry[VAEResponses].request.method ^short = "POST"
* entry contains
  ARKRueckmeldung 0..
* entry[ARKRueckmeldung].resource only MopedARKResponse
* entry[ARKRueckmeldung].request.method from HTTPVerbInsertOnlyVS
* entry[ARKRueckmeldung].request.method ^short = "POST"
* entry contains
  ARKStatusUpdate 0..
* entry[ARKStatusUpdate].resource only MopedARKStatusUpdate
* entry[ARKStatusUpdate].request.method from HTTPVerbInsertOnlyVS 
* entry[ARKStatusUpdate].request.method ^short = "POST"
* entry contains
  Communication 0..
* entry[Communication].resource only CommunicationRequest
* entry[Communication].request.method from HTTPVerbInsertOnlyVS
* entry[Communication].request.method ^short = "POST"
* entry contains
  CommunicationRequest 0..
* entry[CommunicationRequest].resource only CommunicationRequest
* entry[CommunicationRequest].request.method from HTTPVerbInsertOnlyVS
* entry[CommunicationRequest].request.method ^short = "POST"