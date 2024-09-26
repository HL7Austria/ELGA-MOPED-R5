Instance: MOPEDPatientEntlassen
InstanceOf: OperationDefinition
Title: "MOPED Patient $entlassen (POC)"
Description: """
Die Operation wird vom Akteur Krankenhaus (KH) aufgerufen.

Die Patient $entlassen Operation wird aufgerufen, wenn ein(e) Patient*in aus dem Krankenhaus entlassen wurde.

Voraussetzungen für den Aufruf:
* Account-Status: SV verarbeitet

1. Der Encounter erhält ein End-Datum (*MOPEDEncounter.actualPeriod.end*); der *MOPEDEncounter.status* wird auf *discharged* gesetzt
2. Das Element *MOPEDEncounter.admission.dischargeDisposition* wird mit dem Operation-Parameter *entlassungsart* befüllt.
3. Der alte MOPEDTransferEncounter der *partOf* des MOPEDEncounters mit der jeweiligen Aufnahmezahl war und noch den Status *in-progress* hat, wird gesucht. Der Status wird auf *completed* gesetzt und die *MOPEDTransferEncounter.actualPeriod.end* mit dem *zeitpunkt* der Entlassung versehen. 
4. Ein MOPEDClaim mit dem Status *draft* wird erstellt und in *MOPEDAccount.claim* referenziert.
5. Änderungen am Account: der *MOPEDAccount.WorkflowStatus* wird auf *Entlassungs Aviso* gesetzt, oder, falls der *freigeben*-Parameter auf *true* gesetzt war und die Validierung erfolgreich war, wird *MOPEDAccount.WorkflowStatus* auf *Entlassung vollständig* gesetzt. Ebenso im *MOPEDAccount* im Element *TageOhneKostenbeitrag* wird der gleichnamige Opeartion-Parameter abgespeichert. Dieser ist verpflichtend zu befüllen, wenn der *freigeben*-Parameter auf *true* gestellt ist.

Validierung / Fehlerbehandlung:
* Wenn der *freigeben*-Parameter auf *true* ist, muss eine Validierung aller Ressourcen (MOPEDEncounter, Account) erfolgreich sein, oder die Operation schlägt fehl.
* Wurden bei der Suche in Schritt 3 mehrere MOPEDTransferEncounter gefunden, liegen inkonsistente Daten vor und die Operation schlägt fehl.
"""
Usage: #definition 

* id = "MOPED.Patient.Entlassen"
* base = "http://hl7.org/fhir/OperationDefinition/Patient-entlassen"
* name = "MOPED_Patient_Entlassen"
* status = #draft
* comment = "TBD: Schritt 3: eine Abgangsart vom TransferEncounter muss hinzugefügt werden, welchen fixen wert enthält diese bei Enlassung? In dieser Operation werden noch keine Leitungen erfasst, hier muss eine Möglichkeit gegeben werden, dies nachzuholen - in einer separaten Transaction/Operation.; Der Status 'SV verarbeitet' stimmt zwar als Voraussetzung für den ersten Schritt. Kann das aber so weiterverfolgt werden, sobald Selbstzahler / private Versicherungen hinzukommen? Was passiert in einer schnellen Entlassung, wenn die SV sich noch nicht zurück gemeldet hat?"
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
  * name = #tageOhneKostenbeitrag
  * use = #in 
  * min = 0
  * max = "1"
  * documentation = "Der *tageOhneKostenbeitrag* Parameter definiert zu für wie viele Tage kein Kostenbeitrag eingehoben wurde."
  * type = #unsignedInt
* parameter[+]
  * name = #freigeben
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "Mit Hilfe des *freigeben* Parameters wird angegeben, ob es sich bei der Patienten-Entlassung um vollständige Daten handelt (*freigeben* = *true*) und somit eine Validierung erfolgen soll, oder ob lediglich unvollständige Daten zwischengespeichert werden (*freigeben* = *false*) - in diesem Fall wird ein Entlassungs-Aviso erstellt."
  * type = #boolean
* parameter[+]
  * name = #return
  * use = #out
  * min = 1
  * max = "1"
  * documentation = "Der *return* Parameter gibt Auskunft über den Erfolg der Operation."
  * type = #Resource
  * targetProfile[+] = Canonical(OperationOutcome)
