Instance: KostenuebernahmeAnfragen
InstanceOf: OperationDefinition
Title: "MOPED Kostenuebernahme $anfragen (POC)"
Description: """
Die Operation wird vom Akteur Krankenhaus (KH) aufgerufen. Die Kostenübernahme $anfragen Operation wird aufgerufen, um die Kostenübernahme-Anfrage an die SV anzustoßen.
1. Vorbereitung des CoverageEligibilityRequest: Ein CoverageEligibilityRequest mit dem *status* 'active' und *purpose* 'validation' und dem *created* aktuellem Zeitpunkt wird vorbereitet.
2. Suchen des Accounts: Suchen des MOPEDAccounts, der vom MOPEDEncounter mit dem *aufnahmezahl* Parameter als *identifier* im *MOPEDEncounter.account* Feld referenziert wird. 
2. Referenzieren des Patienten: Eine Referenz auf den Patienten der als *subject* im MOPEDAccount geführt ist, wird im *CoverageEligibilityRequest.patient* Element referenziert
3. Referenzieren der Coverage: Die gleiche Referenz wie im *MOPEDAccount.coverage.coverage* wird auch im CoverageEligibilityRequest referenziert. Check erfolgt, ob diese Coverage den gleichen Patienten als *beneficiary* hat wie das *subject* des CoverageEligibilityRequest.
4. Referenzieren des Providers: Als *provider* Element wird die Organization referenziert, die als *owner* im MOPEDAccount referenziert ist. 
5. Einfügen des Versicherers: Als *insurer* Element wird die Organization referenziert, deren *identifier* dem Operation-Parameter *versicherer* entspricht.
6. POSTen des neu erstellten CoverageEligibilityRequest
7. Referenzierung des CoverageEligibilityRequest im MOPEDAccount im Element *coverageEligibilityRequest*. (TBD: erstellung einer Extension im Account)
"""
Usage: #definition 

* id = "MOPED.CoverageEligibilityRequest.Anfragen"
* base = "http://hl7.org/fhir/OperationDefinition/CoverageEligibilityRequest-anfragen"
* name = "MOPED_CoverageEligibilityRequest_Anfragen"
* status = #draft
* kind = #operation 
* affectsState = true
* resource = #Account
* system = false
* type = false
* instance = true
* code = #anfragen
* parameter[+]
  * name = #aufnahmezahl
  * use = #in 
  * min = 1
  * max = "1"
  * documentation = "Der *aufnahmezahl* Parameter beinhält den eindeutigen Identifizierer für den relevanten Fall."
  * type = #string
* parameter[+]
  * name = #versicherer
  * use = #in 
  * min = 1
  * max = "1"
  * documentation = "Der *versicherer* Parameter beinhält den eindeutigen Identifizierer für den Versicherer an dem der CoverageEligibilityRequest gerichtet ist."
  * type = #string
* parameter[+]
  * name = #return
  * use = #out
  * min = 1
  * max = "1"
  * documentation = "Der *return* Parameter gibt Auskunft über den Erfolg der Operation."
  * type = #Resource
  * targetProfile[+] = Canonical(OperationOutcome)
