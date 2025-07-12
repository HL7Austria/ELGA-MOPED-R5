Instance: MopedPatientAufnehmen
InstanceOf: OperationDefinition
Title: "MOPED Patient $aufnehmen"
Description: "Die $aufnehmen Operation wird aufgerufen, wenn ein(e) Patient*in in das Krankenhaus aufgenommen wird."
Usage: #definition

* id = "MOPED.Patient.Aufnehmen"
* name = "MOPED_Patient_Aufnehmen"
* status = #draft
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
  * documentation = "Der *falldaten* Parameter beinhaltet die nötigen Elemente um die Details zum Fall zu beschreiben die bei Patientenaufnahme bekannt sind, inklusive Patient, Encounter und Aufnahmediagnose."
  * type = #Resource
  * targetProfile[+] = Canonical(MopedAufnahmeBundle)
* parameter[+]
  * name = #freigeben
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "Mit Hilfe des *freigeben* Parameters wird angegeben, ob es sich bei der Patienten-Aufnahme um eine geplante oder vollständige Aufnahme handelt."
  * type = #boolean
* parameter[+]
  * name = #Fondsrelevanz
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "Mit Hilfe des *Fondsrelevanz* Parameters wird festgehalten, ob es sich bei dem Fall um einen relevanten Fall für den Fonds handelt."
  * type = #code
  * binding[+]
    * strength = #required
    * valueSet = Canonical(FondsrelevanzVS)
* parameter[+]
  * name = #return
  * use = #out
  * min = 1
  * max = "1"
  * documentation = "Der *return* Parameter gibt Auskunft über den Erfolg der Operation. Wenn der *modus* Parameter auf 'freigeben' gesetzt war, ist die Operation erfolgreich, wenn die Daten validiert wurden und abgespeichert werden konnten. Wenn der *modus* Parameter auf *zwischenspeichern* gesetzt war, ist für eine erfolgreiche Durchführung der Operation lediglich ein erfolgreiches Speichern vorausgesetzt. Schlägt die Operation fehl, wird eine entsprechende Meldung ausgegeben."
  * type = #Resource
  * targetProfile[+] = Canonical(OperationOutcome)