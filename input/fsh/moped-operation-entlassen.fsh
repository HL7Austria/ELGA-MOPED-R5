Instance: MOPEDPatientEntlassen
InstanceOf: OperationDefinition
Title: "MOPED Patient $entlassen (POC)"
Description: """

**Wer ruft diese Operation in welchem Zusammenhang auf?**

Die Operation wird vom Akteur Krankenhaus (KH) aufgerufen. Die $entlassen Operation wird aufgerufen, wenn ein(e) Patient*in aus dem Krankenhaus entlassen wurde.

**Voraussetzungen für den Aufruf**

* Account-Status: `SV verarbeitet`

**Detaillierte Business-Logik**

1. Suche des MOPEDEncounter: Der MOPEDEncounter mit der jeweiligen *aufnahmezahl* lt. Operation-Parameter wird gesucht
2. Update des MOPEDEncounters:
  * *MOPEDEncounter.actualPeriod.end* mit dem *zeitpunkt* lt. Operation-Parameter befüllen
  * *MOPEDEncounter.status* mit `discharged`  befüllen
  * *MOPEDEncounter.admission.dischargeDisposition* mit *entlassungsart* lt. Operation-Parameter befüllen
3. Suche des letzten MOPEDTransferEncounter: Mit *MOPEDTransferEncounter.partOf* einer Referenz auf den MOPEDEncounter aus Schritt 1 und den Status *in-progress*
4. Update des letzten MOPEDTransferEncounter:
  * *MOPEDTransferEncounter.status* mit `completed` befüllen gesetzt 
  * *MOPEDTransferEncounter.actualPeriod.end* mit *zeitpunkt* lt. Operation-Parameter befüllen 
4. Erstellung eines leeren *MOPEDClaim*: 
  * *MOPEDClaim.status* mit `draft` befüllen
  * *MOPEDClaim.patient* mit MOPEDAccount.subject befüllen
5. Änderungen im Account:
  * *MOPEDAccount.ClaimRef* mit der Referenz aus Schritt 4 befüllen  
  * *MOPEDAccount.WorkflowStatus* mit `Entlassungs Aviso` befüllen, oder, falls der *freigeben*-Operation-Parameter auf `true` gesetzt war und die Validierung erfolgreich war, wird *MOPEDAccount.WorkflowStatus* mit `Entlassung vollständig` befüllt. 
  * *MOPEDAccount.TageOhneKostenbeitrag* lt. gleichnamigen Opeartion-Parameter befüllen

**Validierung / Fehlerbehandlung**

* Wenn der *freigeben*-Parameter auf *true* ist, muss eine Validierung aller Ressourcen (MOPEDEncounter, Account) erfolgreich sein, oder die Operation schlägt fehl.
* Wenn der *freigeben*-Parameter auf *true* ist, muss Information zu den Tagen ohne Kostenbeitrag vorliegen (i.e. der Operation-Parameter *TageOhneKostenbeitrag* muss befüllt sein)
* Wurden bei der Suche in Schritt 4 mehrere MOPEDTransferEncounter gefunden, liegen inkonsistente Daten vor und die Operation schlägt fehl.

**Weitere Hinweise**

* Hinweis 1: Wurde der Patient direkt aus der Intensivstation entlassen, so müsste auch eine Abgangsart im MOPEDTransferEncounter gesetzt werden. Dieser Spezialfall wurde noch nicht berücksichtigt.
"""
Usage: #definition 

* id = "MOPED.Patient.Entlassen"
* base = "http://hl7.org/fhir/OperationDefinition/Patient-entlassen"
* name = "MOPED_Patient_Entlassen"
* status = #draft
* comment = "TBD: Abgangsart beim MOPEDTransferEncounter falls intensiv, muss befüllt werden; In dieser Operation werden noch keine Leitungen erfasst, hier muss eine Möglichkeit gegeben werden, dies nachzuholen - in einer separaten Transaction/Operation.; Der Status 'SV verarbeitet' stimmt zwar als Voraussetzung für den ersten Schritt. Kann das aber so weiterverfolgt werden, sobald Selbstzahler / private Versicherungen hinzukommen? Was passiert in einer schnellen Entlassung, wenn die SV sich noch nicht zurück gemeldet hat?"
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
