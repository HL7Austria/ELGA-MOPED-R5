Instance: MOPEDPatientEntlassen
InstanceOf: OperationDefinition
Title: "MOPED Patient $entlassen (POC)"
Description: """
Diese Operation wurde noch nicht ausdefiniert - die Kommentare unterhalb dienen lediglich zur Orientierung und müssen noch stark verändert und erweitert werden.

Die Patient $entlassen Operation wird aufgerufen, wenn ein(e) Patient*in aus dem Krankenhaus entlassen wurde.

Die Operation wird vom Akteur Krankenhaus (KH) aufgerufen.

1. Der Encounter erhält ein End-Datum (*MOPEDEncounter.actualPeriod.end*); der *MOPEDEncounter.status* wird auf *discharged* gesetzt
2. Das Element *MOPEDEncounter.admission.dischargeDisposition* wird mit dem Operation-Parameter *entlassungsart* befüllt.
3. Der alte MOPEDTransferEncounter der *partOf* des MOPEDEncounters mit der jeweiligen Aufnahmezahl war und noch den Status *in-progress* hat, wird gesucht. Der Status wird auf *completed* gesetzt und die *MOPEDTransferEncounter.actualPeriod.end* mit dem *zeitpunkt* der Entlassung versehen. 
4. Ein MOPEDClaim mit dem Status *draft* wird erstellt und in *MOPEDAccount.claim* referenziert.
5. Änderungen am Account: der *MOPEDAccount.WorkflowStatus* wird auf *Entlassungs Aviso* gesetzt.
"""
Usage: #definition 

* id = "MOPED.Patient.Entlassen"
* base = "http://hl7.org/fhir/OperationDefinition/Patient-entlassen"
* name = "MOPED_Patient_Entlassen"
* status = #draft
* comment = "TBD: Schritt 3: eine Abgangsart vom TransferEncounter muss hinzugefügt werden, welchen fixen wert enthält diese bei Enlassung? Die Extension für Claim-Account ref ist derzeit in Claim, sollte aber zu Account wandern. In dieser Operation werden noch keine Leitungen erfasst, hier muss eine Möglichkeit gegeben werden, dies nachzuholen - ggf. in einer separaten Operation. Was ist, wenn ein Patient stirbt? Wird hier eine Verlegung mit spezieller Abgangsart vorab angestoßen oder findet sich diese Ergeignis erst in der Entlassung wieder?"
* kind = #operation 
* affectsState = true
* resource = #Encounter
* system = false
* type = true
* instance = false
* code = #entlassen
* parameter[+]
  * name = #aufnahmezahl
  * use = #in 
  * min = 1
  * max = "1"
  * documentation = "Der *aufnahmezahl* Parameter beinhält den eindeutigen Identifizierer für den relevanten Fall."
  * type = #Identifier
* parameter[+]
  * name = #zeitpunkt
  * use = #in 
  * min = 1
  * max = "1"
  * documentation = "Der *zeitpunkt* Parameter definiert zu welchem Zeitpunkt die Beurlaubung startet."
  * type = #dateTime
* parameter[+]
  * name = #entlassungsart
  * use = #in 
  * min = 1
  * max = "1"
  * documentation = "Der *entlassungsart* Parameter definiert die Entlassungsart des Patienten."
  * type = #code
  * binding[+]
    * strength = #required
    * valueSet = "moped-entlassungsart-valueset"
* parameter[+]
  * name = #return
  * use = #out
  * min = 1
  * max = "1"
  * documentation = "Der *return* Parameter gibt Auskunft über den Erfolg der Operation."
  * type = #Resource
  * targetProfile[+] = Canonical(OperationOutcome)
