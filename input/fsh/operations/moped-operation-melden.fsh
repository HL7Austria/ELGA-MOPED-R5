Instance: MopedKostenInformationMelden
InstanceOf: OperationDefinition
Title: "MOPED Kosteninformation $melden"
Description: "Die $melden Operation wird aufgerufen, wenn eine Kosteninformation an die SV gemeldet werden soll."
Usage: #definition

* id = "MOPED.Claim.Melden"
* name = "MOPED_Claim_Melden"
* status = #draft
* kind = #operation
* affectsState = true
* resource = #Composition
* system = false
* type = false
* instance = true
* code = #melden
* parameter[+]
  * name = #Kosteninformation
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "Der *Kosteninformation* Parameter beinhaltet ein Bundle mit sämtlichen Details zur Kosteninformation lt. MopedARKRequest Profil."
  * type = #Bundle
  * targetProfile = Canonical(MopedMeldenLGFBundle)
* parameter[+]
  * name = #return
  * use = #out
  * min = 1
  * max = "1"
  * documentation = "Der *return* Parameter gibt Auskunft über den Erfolg der Operation."
  * type = #Resource
  * targetProfile[+] = Canonical(OperationOutcome)