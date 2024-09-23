Instance: KostenuebernahmeAnfragenAbholen
InstanceOf: OperationDefinition
Title: "Kostenübernahme-Anfragen $abholen (POC)"
Description: """
Die Operation wird vom Akteur Sozialversicherung (SV) aufgerufen. Die Kostenübernahme-Anfragen $abholen Operation wird aufgerufen, um alle noch offenen Kostenübernahme-Anfragen, die bisher seitens SV noch nicht bearbeitet wurden, abgeholt werden können.
1. Suche nach relevanten Requests: Alle CoverageEligibilityRequests, 
  * die im Feld *CoverageEligibilityRequest.insurer* die Organization mit *Organization.identifier* = Operation-Parameter *versicherer* referenziert haben UND
  * die noch keine gezugehörigen CoverageEligibilityResponse haben (CoverageEligibilityRequest CEReq where not exists CoverageEligibilityResponse with *CoverageEligibilityResponse.request* = CEReq). Der Status der Resposne ist dabei irrelevant.
2. Zusammenstellen des Return-Bundles:
   Mit der gleichen Logik wie der *_include* Suchparameter um die relevanten Ressourcen (Patient, Coverage) direkt mitbekommen zu können.
3. Erstellung eine Draft CoverageEligibilityResponse für jeden der ausgelieferten Requests:
   * mit Feld *CoverageEligibilityResponse.status* = *draft*
   * mit Feld *CoverageEligibilityResponse.request* = Referenz auf jeweiligen Request
   * mit Feld *CoverageEligibilityResponse.outcome* = *queued*
"""
Usage: #definition 

* id = "MOPED.CoverageEligibilityRequest.Abholen"
* base = "http://hl7.org/fhir/OperationDefinition/CoverageEligibilityRequest-abholen"
* name = "MOPED_CoverageEligibilityRequest_Abholen"
* status = #draft
* comment = "TBD: Es ist auch der Wunsch der Krankenanstalten tracken zu können, ob die SV den Request (1) abgefragt hat (status draft, outcome queued), (2) derzeit bearbeitet oder (status draft; outcome *queued*) (3) abgeschlossen hat (outcome *complete* OR *error* OR *partial* und der *status* auf *active*).
Somit brauchen wir noch Möglichkeiten im Workflow, wie die erstellte Draft-Response weiter bearbeitet werden kann."
* kind = #operation 
* affectsState = true
* resource = #CoverageEligibilityRequest
* system = false
* type = true
* instance = false
* code = #abholen
* parameter[+]
  * name = #versicherer
  * use = #in 
  * min = 1
  * max = "1"
  * documentation = "Der *versicherer* Parameter beinhält den eindeutigen Identifizierer für den Versicherer der die $abholen Operation aufruft."
  * type = #identifier
* parameter[+]
  * name = #return
  * use = #out
  * min = 1
  * max = "1"
  * documentation = "Der *return* Parameter gibt Auskunft über den Erfolg der Operation."
  * type = #Resource
  * targetProfile[+] = Canonical(Bundle)
  * targetProfile[+] = Canonical(OperationOutcome)
