Instance: MopedHealthcareServiceEinspielen
InstanceOf: OperationDefinition
Title: "MOPED HealthcareService $einspielen"
Description: "Die $einspielen Operation wird aufgerufen, wenn HealthcareServices eingemeldet/aktualisiert werden sollen."
Usage: #definition

* id = "MOPED.HealthcareService.Einspielen"
* name = "MOPED_HealthcareService_Einspielen"
* status = #draft
* kind = #operation
* affectsState = true
* resource = #HealthcareService
* system = false
* type = true
* instance = false
* code = #einspielen
* parameter[+]
  * name = #HealthcareServices
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "Der *HealthcareServices* Parameter beinhaltet ein Bundle mit sämtlichen HealthcareServices die eingebracht/aktualisiert werden sollen."
  * type = #Bundle
  * targetProfile = Canonical(MopedHealthcareServiceEinspielenBundle)
* parameter[+]
  * name = #return
  * use = #out
  * min = 1
  * max = "1"
  * documentation = "Der *return* Parameter gibt Auskunft über den Erfolg der Operation."
  * type = #Resource
  * targetProfile[+] = Canonical(OperationOutcome)