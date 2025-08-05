Instance: MopedFallAbrechnen
InstanceOf: OperationDefinition
Title: "MOPED Encounter $abrechnen"
Description: "Die $abrechnen Operation wird aufgerufen, wenn ein Fall abgerechnet werden soll."
Usage: #definition

* id = "MOPED.Encounter.Abrechnen"
* name = "MOPED_Encounter_Abrechnen"
* status = #draft
* kind = #operation
* affectsState = true
* resource = #Composition
* system = false
* type = false
* instance = true
* code = #abrechnen
* parameter[+]
  * name = #Abrechnung
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "Der *Abrechnung* Parameter beinhaltet ein Bundle mit sämtlichen Details zur Abrechnung lt. MopedLKFRequest Profil."
  * type = #Bundle
  * targetProfile = Canonical(MopedAbrechnenBundleKH)
* parameter[+]
  * name = #return
  * use = #out
  * min = 1
  * max = "1"
  * documentation = "Der *return* Parameter gibt Auskunft über den Erfolg der Operation."
  * type = #Resource
  * targetProfile[+] = Canonical(OperationOutcome)