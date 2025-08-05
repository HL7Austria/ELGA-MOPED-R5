Instance: MopedDatenUpdate
InstanceOf: OperationDefinition
Title: "MOPED Daten $update"
Description: "Die $update Operation wird aufgerufen, wenn zusätzliche Informationen zu einem Fall eingebracht/abgeändert werden."
Usage: #definition

* id = "MOPED.Daten.Update"
* comment = ""
* name = "MOPED_Daten_Update"
* status = #draft
* kind = #operation
* affectsState = true
* resource = #Composition
* system = false
* type = false
* instance = true
* code = #update
* parameter[+]
  * name = #Update
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "Der *Update* Parameter beinhaltet ein Bundle mit den relevanten Ressourcen zum Fall die aktualisiert, eingebracht oder gelöscht werden sollen."
  * type = #Bundle
  * targetProfile = Canonical(MopedUpdateBundleKH)
* parameter[+]
  * name = #return
  * use = #out
  * min = 1
  * max = "1"
  * documentation = "Der *return* Parameter gibt Auskunft über den Erfolg der Operation."
  * type = #Resource
  * targetProfile[+] = Canonical(OperationOutcome)