Instance: VersichertenanspruchserklärungAnfragen
InstanceOf: OperationDefinition
Title: "MOPED Versichertenanspruchserklärung $anfragen (POC)"
Description: """
Legende: ~~durchgestrichen~~ heißt, dass es für den IG zwar bedacht wird, für den ersten POC jedoch nicht relevant ist.

**Wer ruft diese Operation in welchem Zusammenhang auf?**

Die Operation wird vom Akteur Krankenhaus (KH) aufgerufen. Die Versichertenanspruchserklärung $anfragen Operation wird aufgerufen, um die Versichertenanspruchserklärung-Anfrage an die SV anzustoßen. ~~Diese Operation ist irrelevant für Selbstzahler (das ist wichtig für künftige weiterentwicklung - wenn im Account auf eine Coverage-Ressource für Selbstzahler referenziert wird, darf die Operation $anfragen nicht ausgeführt werden).~~

**Voraussetzungen für den Aufruf**

* Account-Status: : 'Aufnahme freigegeben'

**Detaillierte Business-Logik**

1. Suche des MOPEDEncounter: Der MOPEDEncounter mit der jeweiligen *aufnahmezahl* lt. Operation-Parameter wird gesucht
2. Suchen des MOPEDAccounts: Die Referenz des *MOPEDEncounter.account* aus Schritt 1.
3. Erstellung des MOPEDCoverageEligibilityRequest: 
  a. *MOPEDCoverageEligibilityRequest.status* mit 'active' befüllen
  b. *MOPEDCoverageEligibilityRequest.purpose* mit 'validation' befüllen
  c. *MOPEDCoverageEligibilityRequest.created* mit dem aktuellem Zeitpunkt befüllen
  d. *MOPEDCoverageEligibilityRequest.ExtensionDays* mit *verlaengerungstage* lt. Operation-Parameter befüllen
  e. *MOPEDCoverageEligibilityRequest.PremiumClass* mit *sonderklasse* lt. Operation-Parameter befüllen
  f. *MOPEDCoverageEligibilityRequest.patient* mit *MOPEDAccount.subject* befüllen
  g. *MOPEDCoverageEligibilityRequest.insurance.coverage* mit *MOPEDAccount.coverage.coverage* befüllen
  h. *MOPEDCoverageEligibilityRequest.provider* mit *MOPEDAccount.owner* befüllen
  i. *MOPEDCoverageEligibilityRequest.insurer* mit einer Referenz auf jene Organization befüllen, deren *Organization.identifier* dem Identifier *versicherer* lt. Operation-Parameter entspricht
6. POSTen des neu erstellten CoverageEligibilityRequest
7. Referenz im MOPEDAccount:
  a. *MOPEDAccount.coverageEligibilityRequest* mit Hilfe der resultierenden ID aus Schritt 6 referenzieren

**Validierung / Fehlerbehandlung**
* *MOPEDAccount.coverage* darf nur eine Versicherung gelistet haben
* *CoverageEligibilityRequest.subject* muss mit *Coverage.beneficiary* aus Schritt 3g übereinstimmen
* *MOPEDCoverageEligibilityRequest.insurer* muss mit *Coverage.insurer* aus Schritt 3g übereinstimmen
* ~~*MOPEDCoverageEligibilityRequest.provider* muss gleichzeitig die gleiche Organisation sein, die lt. Token die Operation aufgerufen hat.~~

**Weitere Hinweise**

* Hinweis 1: Nach dieser Operation findet lt. Soll-Prozess kein Update des Status *MOPEDAccount.workflowStatus* statt.
"""
Usage: #definition 

* id = "MOPED.CoverageEligibilityRequest.Anfragen"
* base = "http://hl7.org/fhir/OperationDefinition/CoverageEligibilityRequest-anfragen"
* comment = "TBD: Ist hier evtl. eine Transaction die bessere Lösung? Bei dieser Operation findet keine Status-Änderung statt. Lediglich auf die Precondition des Workflow-Status müsste geachtet werden."
* name = "MOPED_CoverageEligibilityRequest_Anfragen"
* status = #draft
* kind = #operation 
* affectsState = true
* resource = #Account
* system = false
* type = true
* instance = false
* code = #anfragen
* parameter[+]
  * name = #aufnahmezahl
  * use = #in 
  * min = 1
  * max = "1"
  * documentation = "Der *aufnahmezahl* Parameter beinhält den eindeutigen Identifizierer für den relevanten Fall."
  * type = #Identifier
* parameter[+]
  * name = #versicherer
  * use = #in 
  * min = 1
  * max = "1"
  * documentation = "Der *versicherer* Parameter beinhält den eindeutigen Identifizierer für den Versicherer an dem der CoverageEligibilityRequest gerichtet ist."
  * type = #Identifier
* parameter[+]
  * name = #verlaengerungstage
  * use = #in 
  * min = 0
  * max = "1"
  * documentation = "Der *verlaengerungstage* beschreibt, um wie viele Verlängerungstage angefragt wird."
  * type = #unsignedInt
* parameter[+]
  * name = #sonderklasse
  * use = #in 
  * min = 0
  * max = "1"
  * documentation = "Der *sonderklasse* codiert, ob der Aufenthalt in der Allgemeine Gebührenklasse oder Sonderklasse stattfindet, da es bei speziellen Versicherungsträgern dafür Optionen gibt."
  * type = #code
  * binding[+]
    * strength = #required
    * valueSet = "moped-sonderklasse-valueset"
* parameter[+]
  * name = #return
  * use = #out
  * min = 1
  * max = "1"
  * documentation = "Der *return* Parameter gibt Auskunft über den Erfolg der Operation."
  * type = #Resource
  * targetProfile[+] = Canonical(OperationOutcome)
