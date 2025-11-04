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
* resource = #Composition
* system = false
* type = false
* instance = true
* code = #entlassen
* parameter[+]
  * name = #Entlassung
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "Der *Entlassung* Parameter beinhaltet ein Bundle mit einem Update für den jeweiligen Aufenthalt der alle verpflichtenden Felder der Entlassung enthält."
  * type = #Bundle
  * targetProfile = Canonical(MopedEntlassenBundle)
* parameter[+]
  * name = #return
  * use = #out
  * min = 1
  * max = "1"
  * documentation = "Der *return* Parameter gibt Auskunft über den Erfolg der Operation."
  * type = #Resource
  * targetProfile[+] = Canonical(OperationOutcome)