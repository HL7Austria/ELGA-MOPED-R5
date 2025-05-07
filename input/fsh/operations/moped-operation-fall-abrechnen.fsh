Instance: MopedFallAbrechnen
InstanceOf: OperationDefinition
Title: "MOPED Encounter $abrechnen (POC)"
Description: "Die $abrechnen Operation wird aufgerufen, wenn ein Fall abgerechnet werden sollte."
Usage: #definition

* id = "MOPED.Encounter.Abrechnen"
* name = "MOPED_Encounter_Abrechnen"
* status = #draft
* kind = #operation
* affectsState = true
* resource = #Encounter
* system = false
* type = true
* instance = false
* code = #abrechnen
* parameter[+]
  * name = #aufnahmezahl
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "Der *aufnahmezahl* Parameter beinhaltet den eindeutigen Identifizierer für den relevanten Fall."
  * type = #Identifier
* parameter[+]
  * name = #abschliessen
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "Mit Hilfe des *abschliessen* Parameters wird angegeben, ob es sich bei der Fall-Abrechnung um die endgültige Meldung handeln soll."
  * type = #boolean
* parameter[+]
  * name = #claim
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "Der *claim* Parameter beinhaltet sämtliche Details zur Abrechnung lt. MopedLKFRequest Profil."
  * type = #Claim
  * targetProfile = Canonical(MopedLKFRequest)
* parameter[+]
  * name = #return
  * use = #out
  * min = 1
  * max = "1"
  * documentation = "Der *return* Parameter gibt Auskunft über den Erfolg der Operation."
  * type = #Resource
  * targetProfile[+] = Canonical(OperationOutcome)