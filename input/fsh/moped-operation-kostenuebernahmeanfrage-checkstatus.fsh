Instance: VersichertenanspruchserklärungAnfrageCheckStatus
InstanceOf: OperationDefinition
Title: "Versichertenanspruchserklärung-Anfrage $checkStatus"
Description: "Die Versichertenanspruchserklärung-Anfrage $checkStatus Operation wird aufgerufen, um zu überprüfen, in welchem Status sich die Bearbeitung seitens SV derzeit befindet. Die Operation wird vom Akteur Krankenhaus (KH) aufgerufen."
Usage: #definition 
* purpose = """Die Versichertenanspruchserklärung-Anfrage $checkStatus Operation wird aufgerufen, um zu überprüfen, in welchem Status sich die Bearbeitung seitens SV derzeit befindet. Die Operation wird vom Akteur Krankenhaus (KH) aufgerufen.

1. Suchen des MOPEDAccounts: Über die Referenz der Ressource *MOPEDEncounter.account*. Dabei handelt es sich um jenen Encounter, der den *aufnahmezahl* Parameter als *identifier* gespeichert hat. 
2. Suchen des Requests: Es geht um jenen Request, der in *MOPEDAccount.coverageEligibilityRequest* Feld referenziert wurde
3. Suche nach einer CoverageEligibilityResponse die im Feld *CoverageEligibilityResponse.request* den Request aus Schritt 2 referenziert
  * Sollte es mehrere Responses zu einem Request geben, ist das eine Inkonsistenz die zu einer Fehlermeldung führen soll
  * Gibt es eine Response, so ist zu prüfen in welchem *CoverageEligibilityResponse.status* die Ressource aufscheint:
     * *draft*: Draft in Kombination mit dem *outcome*-Wert *queued* heißt, dass die SV den jeweiligen Request bereits ausgeliefert bekommen hat, jedoch die Bearbeitung noch nicht begonnen hat. Ein *draft*-Status in Kombination mit einem anderen *outcome*-Wert ist ungültig und sollte zu einer Fehlermeldung führen.
     * *active*: Active in Kombination mit dem *outcome*-Wert *queued* bedeutet, dass die SV aktiv gestartet hat, den CoverageEligibilityRequest zu bearbeiten, es jedoch noch kein Resultat gibt. Ist der *outcome* mit dem Wert *completed*, *error* oder *partial* befüllt, ist die SV mit der Response fertig und eine Meldung kann ausgegeben werden, dass die freigegebene CoverageEligibilityResponse vom Krankenhaus abgeholt werden kann. 
"""
* id = "MOPED.CoverageEligibilityRequest.CheckStatus"
* base = "http://hl7.org/fhir/OperationDefinition/CoverageEligibilityRequest-checkStatus"
* name = "MOPED_CoverageEligibilityRequest_Check_Status"
* status = #draft
* kind = #operation
* affectsState = false
* resource = #CoverageEligibilityRequest
* system = false
* type = true
* instance = false
* code = #checkStatus
* parameter[+]
  * name = #aufnahmezahl
  * use = #in 
  * min = 1
  * max = "1"
  * documentation = "Der *aufnahmezahl* Parameter beinhält den eindeutigen Identifizierer für den relevanten Fall dessen Versichertenanspruchserklärung-Status überprüft werden soll."
  * type = #Identifier
* parameter[+]
  * name = #return
  * use = #out
  * min = 1
  * max = "1"
  * documentation = "Der *return* Parameter gibt Auskunft über den Erfolg der Operation."
  * type = #Resource
  * targetProfile[+] = Canonical(OperationOutcome)
