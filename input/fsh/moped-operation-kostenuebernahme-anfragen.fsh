Instance: VersichertenanspruchserklärungAnfragen
InstanceOf: OperationDefinition
Title: "MOPED Versichertenanspruchserklärung $anfragen (POC)"
Description: """
Die Operation wird vom Akteur Krankenhaus (KH) aufgerufen. 

Voraussetzungen für den Aufruf:
* Account-Status: 'Aufnahme freigegeben'

Die Versichertenanspruchserklärung $anfragen Operation wird aufgerufen, um die Versichertenanspruchserklärung-Anfrage an die SV anzustoßen. Diese Operation ist irrelevant für Selbstzahler (das ist wichtig für künftige weiterentwicklung - wenn im Account auf eine Coverage-Ressource für Selbstzahler referenziert wird, darf die Operation $anfragen nicht ausgeführt werden).

1. Vorbereitung des CoverageEligibilityRequest: Ein CoverageEligibilityRequest mit dem *status* 'active' und *purpose* 'validation' und dem *created* aktuellem Zeitpunkt wird vorbereitet. Die Extension *ExtensionDays* wird mit dem Operation-Parameter *verlaengerungstage* befüllt, die Extension *PremiumClass* mit dem Operation-Parameter *sonderklasse*.
2. Suchen des MOPEDAccounts: Über die Referenz der Ressource *MOPEDEncounter.account*. Dabei handelt es sich um jenen Encounter, der den *aufnahmezahl* Parameter als *identifier* gespeichert hat. 
3. Referenzieren des Patienten: Eine Referenz auf den Patienten der als *subject* im MOPEDAccount geführt ist, wird im *CoverageEligibilityRequest.patient* Element referenziert
4. Referenzieren der Coverage: Die gleiche Referenz wie im *MOPEDAccount.coverage.coverage* wird auch im CoverageEligibilityRequest referenziert. Check erfolgt, ob diese Coverage den gleichen Patienten als *beneficiary* hat wie das *subject* des CoverageEligibilityRequest. Außerdem wird geprüft, ob der *versicherer* an dem der Request gerichtet ist, auch tatsächlich als Coverage.insurer gelistet ist. Sollten im Account mehrere Coverages referenziert sein, so ist nur diejenige mitzusenden, die als *Coverage.insurer* den *versicherer* aus dem Operation-Parameter gespeichert hat.
4. Referenzieren des Providers: Als *provider* Element wird die Organization referenziert, die als *owner* im MOPEDAccount referenziert ist. 
5. Einfügen des Versicherers: Als *insurer* Element wird die Organization referenziert, deren *identifier* dem Operation-Parameter *versicherer* entspricht.
6. POSTen des neu erstellten CoverageEligibilityRequest
7. Referenzierung des CoverageEligibilityRequest im MOPEDAccount im Element *coverageEligibilityRequest*. 
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
