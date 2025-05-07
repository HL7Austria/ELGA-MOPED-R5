Instance: MopedLeistungEinmelden
InstanceOf: OperationDefinition
Title: "MOPED Encounter Leistung und Diagnosen $erfassen (POC)"
Description: "Die $erfassen Operation wird aufgerufen, wenn eine erbrachte Leistungen und Diagnosen eingemeldet wird."
Usage: #definition

* id = "MOPED.Encounter.erfassen"
* name = "MOPED_Encounter_erfassen"
* status = #draft
* kind = #operation
* affectsState = true
* resource = #Encounter
* system = false
* type = true
* instance = false
* code = #erfassen
* parameter[+]
  * name = #aufnahmezahl
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "Der *aufnahmezahl* Parameter beinhaltet den eindeutigen Identifizierer für den relevanten Fall."
  * type = #Identifier
* parameter[+]
  * name = #leistung
  * use = #in
  * min = 0
  * max = "*"
  * documentation = "Der *leistung* Parameter beinhaltet eine erbrachte Leistung in MEL-Codierung."
  * type = #Procedure
  * targetProfile = Canonical(MopedProcedure)
* parameter[+]
  * name = #diagnose
  * use = #in
  * min = 0
  * max = "*"
  * documentation = "Der *diagnose* Parameter beinhaltet eine Diagnose in HDG-Codierung."
  * type = #Condition
  * targetProfile = Canonical(MopedCondition)
* parameter[+]
  * name = #return
  * use = #out
  * min = 1
  * max = "1"
  * documentation = "Der *return* Parameter gibt Auskunft über den Erfolg der Operation."
  * type = #Resource
  * targetProfile[+] = Canonical(OperationOutcome)