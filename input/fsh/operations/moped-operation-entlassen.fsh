Instance: MopedPatientEntlassen
InstanceOf: OperationDefinition
Title: "MOPED Patient $entlassen"
Description: "Die $entlassen Operation wird aufgerufen, wenn ein(e) Patient*in aus dem Krankenhaus entlassen wurde."
Usage: #definition

* id = "MOPED.Patient.Entlassen"
* name = "MOPED_Patient_Entlassen"
* status = #draft
* kind = #operation
* affectsState = true
* resource = #Encounter
* system = false
* type = true
* instance = false
* code = #entlassen
* parameter[+]
  * name = #compositionID
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "Der *compositionID* Parameter beinhaltet die technische ID (inklusive Version) der Composition des zu bearbeitenden Falls"
  * type = #id
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
  * min = 0
  * max = "1"
  * documentation = "Der *zeitpunkt* Parameter definiert zu welchem Zeitpunkt die Entlassung stattfindet. Verpflichtend bei stationären Entlassungen."
  * type = #dateTime
* parameter[+]
  * name = #tageOhneKostenbeitrag
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "Der *tageOhneKostenbeitrag* Parameter definiert die Anzahl der Tage, für welche kein Kostenbeitrag seitens der Krankenanstalt eingehoben wurde"
  * type = #unsignedInt
* parameter[+]
  * name = #entlassungsart
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "Der *entlassungsart* Parameter definiert die Entlassungsart des Patienten. Verpflichtend bei stationären Entlassungen."
  * type = #code
  * binding[+]
    * strength = #required
    * valueSet = Canonical(EntlassungsartVS)
* parameter[+]
  * name = #zugewiesenAn
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "Der *zugewiesenAn* Parameter beinhaltet eine Referenz auf die Organization an die der Patient zugewiesen wird. Verpflichtend bei einem Transfer."
  * type = #Reference
  * targetProfile[+] = Canonical(KHOrganization)
* parameter[+]
  * name = #aviso
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "Mit Hilfe des *aviso* Parameters wird angegeben, ob es sich bei der Patienten-Entlassung um vollständige Daten inklusive Hauptdiagnose handelt (*aviso* = *false*) und somit eine Validierung erfolgen soll, oder ob lediglich eine unvollständige Entlassung zwischengespeichert werden soll (*aviso* = *true*) - in diesem Fall wird ein Entlassungs-Aviso erstellt."
  * type = #boolean
* parameter[+]
  * name = #return
  * use = #out
  * min = 1
  * max = "1"
  * documentation = "Der *return* Parameter gibt Auskunft über den Erfolg der Operation."
  * type = #Resource
  * targetProfile[+] = Canonical(OperationOutcome)