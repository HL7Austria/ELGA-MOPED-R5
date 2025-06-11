Instance: MopedPatientAufnehmen
InstanceOf: OperationDefinition
Title: "MOPED Patient $aufnehmen (POC)"
Description: "Die $aufnehmen Operation wird aufgerufen, wenn ein(e) Patient*in in das Krankenhaus aufgenommen wird."
Usage: #definition

* id = "MOPED.Patient.Aufnehmen"
* name = "MOPED_Patient_Aufnehmen"
* status = #draft
* comment = "TBD: möchten wir zusätzlich zur GDA-Referenz einen Input-Parameter, der gleich sein muss? Um in einem Extra-Schritt zusätzlich auf Gleichheit mit der Referenz in falldaten.MopedEncounter.serviceProvider prüfen zu können?; Frage an Architektur: gibt es Möglichkeiten, einen solchen Input-Parameter (GDA als Kontext) automatisiert auf einem anderen Sicherheits-Level zu befüllen als der Inhalt des Transaction Body?; Check, wo version-specific References nötig sind - ggf. relevant für Account.subject, Account.owner und Account.coverage sobald Modus auf *freigeben*. Überlegen, für was der Status Aufnahme in Arbeit tatsächlich nützlich ist und wenn dieser wirklich nötig ist, was passiert, wenn diese Operation mehrfach aufgerufen wird (speziell mit Hauptversicherten beim Einbringen von Coverages, das Anlegen von MopedTransfer Encounters via $verlgen ect.)"
* kind = #operation
* affectsState = true
* resource = #Encounter
* system = false
* type = true
* instance = false
* code = #aufnehmen
* parameter[+]
  * name = #falldaten
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "Der *falldaten* Parameter beinhaltet die nötigen Elemente um die Details zum Fall zu beschreiben die bei Patientenaufnahme bekannt sind, inklusive Patient, Encounter und Coverage."
  * type = #Resource
  * targetProfile[+] = Canonical(MopedAufnahmeBundle)
* parameter[+]
  * name = #freigeben
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "Mit Hilfe des *freigeben* Parameters wird angegeben, ob es sich bei der Patienten-Aufnahme um vollständige Daten handelt und somit eine Validierung erfolgen soll (*freigeben* = *true*), oder ob lediglich unvollständige Daten zwischengespeichert werden (*freigeben* = *false*)."
  * type = #boolean
* parameter[+]
  * name = #verdachtArbeitsSchuelerunfall
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "Mit Hilfe des *verdachtArbeitsSchuelerunfall* Parameters wird festgehalten, ob es bei der Patienten-Aufnahme einen Verdacht auf einen Schüler- oder Arbeitsunfall gibt. Wird dieser Parameter mitgegeben, ist im Account das entsprechende Feld zu befüllen."
  * type = #code
  * binding[+]
    * strength = #required
    * valueSet = Canonical(VerdachtArbeitsSchuelerunfallVS)
* parameter[+]
  * name = #verdachtFremdverschulden
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "Mit Hilfe des *verdachtFremdverschulden* Parameters wird festgehalten, ob es bei der Patienten-Aufnahme einen Verdacht auf Fremdverschulden gibt. Wird dieser Parameter mitgegeben, ist im Account das entsprechende Feld zu befüllen."
  * type = #boolean
* parameter[+]
  * name = #anwesenheitsart
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "Der *anwesenheitsart* Parameter definiert in welcher art der Pateint anwesend ist."
  * type = #code
  * binding[+]
    * strength = #required
    * valueSet = Canonical(AnwesenheitsartVS)
* parameter[+]
  * name = #funktionscode
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "Der *funktionscode* Parameter definiert auf welchen Funktionscode die Neuaufnahme stattfindet."
  * type = #string
* parameter[+]
  * name = #funktionssubcode
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "Der *funktionssubcode* Parameter definiert auf welchen Funktionssubcode die Neuaufnahme stattfindet."
  * type = #string
* parameter[+]
  * name = #return
  * use = #out
  * min = 1
  * max = "1"
  * documentation = "Der *return* Parameter gibt Auskunft über den Erfolg der Operation. Wenn der *modus* Parameter auf 'freigeben' gesetzt war, ist die Operation erfolgreich, wenn die Daten validiert wurden und abgespeichert werden konnten. Wenn der *modus* Parameter auf *zwischenspeichern* gesetzt war, ist für eine erfolgreiche Durchführung der Operation lediglich ein erfolgreiches Speichern vorausgesetzt. Schlägt die Operation fehl, wird eine entsprechende Meldung ausgegeben."
  * type = #Resource
  * targetProfile[+] = Canonical(OperationOutcome)