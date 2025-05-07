Instance: MopedPatientVerlegen
InstanceOf: OperationDefinition
Title: "MOPED Patient $verlegen (POC)"
Description: "Die $verlegen Operation wird aufgerufen, wenn ein(e) Patient*in auf eine andere Station verlegt wird. Auch initial, wenn ein Patient auf eine bestimmte Station aufgenommen wird, wird diese Operation aufgerufen (dies passiert automatisch im Zuge der Operation $aufnehmen)."
Usage: #definition

* id = "MOPED.Patient.Verlegen"
* comment = "TBD: was passiert, wenn eine $aufnehmen Operation mehrmals mit Status `Aufnahme in Arbeit` aufgerufen wird und damit zu mehreren MopedTransferEncounter führt?"
* name = "MOPED_Patient_Verlegen"
* status = #draft
* kind = #operation
* affectsState = true
* resource = #Encounter
* system = false
* type = true
* instance = false
* code = #verlegen
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
  * documentation = "Der *zeitpunkt* Parameter definiert zu welchem Zeitpunkt die Verlegung stattfindet."
  * type = #dateTime
* parameter[+]
  * name = #funktionscode
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "Der *funktionscode* Parameter definiert auf welchen Funktionscode die Verlegung stattfindet."
  * type = #string
* parameter[+]
  * name = #funktionssubcode
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "Der *funktionssubcode* Parameter definiert auf welchen Funktionssubcode die Verlegung stattfindet."
  * type = #string
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
  * name = #neuaufnahme
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "Der *neuaufnahme* Parameter definiert ob es sich bei der Verlegung um die initiale Aufnahme des Patienten auf eine bestimmte Station handelt."
  * type = #boolean
* parameter[+]
  * name = #abgangsart
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "Der *abgangsart* Parameter definiert die Abgangsart des Patienten vom bisher aktuellen MopedTransferEncounter."
  * type = #code
  * binding[+]
    * strength = #required
    * valueSet = Canonical(AbgangsartVS)
* parameter[+]
  * name = #return
  * use = #out
  * min = 1
  * max = "1"
  * documentation = "Der *return* Parameter gibt Auskunft über den Erfolg der Operation."
  * type = #Resource
  * targetProfile[+] = Canonical(OperationOutcome)