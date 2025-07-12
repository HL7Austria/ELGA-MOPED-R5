Instance: MopedPatientVerlegen
InstanceOf: OperationDefinition
Title: "MOPED Patient $verlegen"
Description: "Die $verlegen Operation wird aufgerufen, wenn ein(e) Patient*in auf eine andere Station verlegt wird."
Usage: #definition

* id = "MOPED.Patient.Verlegen"
* comment = ""
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
  * name = #compositionID
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "Der *compositionID* Parameter beinhaltet die technische ID (inklusive Version) der Composition des zu verlegenden Falls"
  * type = #id
* parameter[+]
  * name = #aufnahmezahl
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "Der *aufnahmezahl* Parameter beinhaltet den eindeutigen Identifizierer für den relevanten Fall."
  * type = #Identifier
* parameter[+]
  * name = #verlegungen
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "Der *verlegungen* Parameter beinhaltet die Transferencounter inklusive aller notwendigen Informationen (siehe Profil)"
  * type = #Bundle
  * targetProfile[+] = Canonical(MopedVerlegenBundle)
* parameter[+]
  * name = #return
  * use = #out
  * min = 1
  * max = "1"
  * documentation = "Der *return* Parameter gibt Auskunft über den Erfolg der Operation."
  * type = #Resource
  * targetProfile[+] = Canonical(OperationOutcome)