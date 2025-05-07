Instance: MopedPatientEntlassen
InstanceOf: OperationDefinition
Title: "MOPED Patient $entlassen (POC)"
Description: "Die $entlassen Operation wird aufgerufen, wenn ein(e) Patient*in aus dem Krankenhaus entlassen wurde."
Usage: #definition

* id = "MOPED.Patient.Entlassen"
* name = "MOPED_Patient_Entlassen"
* status = #draft
* comment = "TBD: Abgangsart beim MopedTransferEncounter falls intensiv, muss befüllt werden; In dieser Operation werden noch keine Leitungen erfasst, hier muss eine Möglichkeit gegeben werden, dies nachzuholen - in einer separaten Transaction/Operation.; Der Status 'SV verarbeitet' stimmt zwar als Voraussetzung für den ersten Schritt. Kann das aber so weiterverfolgt werden, sobald Selbstzahler / private Versicherungen hinzukommen? Was passiert in einer schnellen Entlassung, wenn die SV sich noch nicht zurück gemeldet hat?"
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
  * documentation = "Der *aufnahmezahl* Parameter beinhaltet den eindeutigen Identifizierer für den relevanten Fall."
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
    * valueSet = Canonical(EntlassungsartVS)
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