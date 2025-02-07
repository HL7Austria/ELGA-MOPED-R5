Instance: MopedPatientBeurlauben
InstanceOf: OperationDefinition
Title: "MOPED Patient $beurlauben"
Description: """
Die Patient $beurlauben Operation wird aufgerufen, wenn ein(e) Patient*in in das Krankenhaus aufgenommen wurde und während eines laufenden Falles beurlaubt wird. Die Operation $verlegen wird aufgerufen mit dem Funktionscode '10000000' als Parameter, der Abgangsart '1' und ohne physische Anwesenheit. 

Die Operation wird vom Akteur Krankenhaus (KH) aufgerufen.

**Annahmen an das BeS**
* Es wurde vorab geprüft, ob das `system` des Parameters `aufnahmezahl` dem GDA entspricht, der die Operation aufruft. Somit ist sichergestellt, dass nur eigene Fälle beurlaubt werden können.

"""
Usage: #definition

* id = "MOPED.Patient.Beurlauben"
* name = "MOPED_Patient_Beurlauben"
* status = #draft
* kind = #operation 
* affectsState = true
* resource = #Encounter
* system = false
* type = true
* instance = false
* code = #beurlauben
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
  * name = #return
  * use = #out
  * min = 1
  * max = "1"
  * documentation = "Der *return* Parameter gibt Auskunft über den Erfolg der Operation."
  * type = #Resource
  * targetProfile[+] = Canonical(OperationOutcome)
