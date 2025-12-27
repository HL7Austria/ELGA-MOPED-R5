Instance: MopedAbrechnungEntscheiden
InstanceOf: OperationDefinition
Title: "MOPED ClaimResponse $entscheiden"
Description: "Die $entscheiden Operation wird aufgerufen, wenn eine Abrechnung beantwortet wird und freigegeben wird."
Usage: #definition

* id = "MOPED.ClaimResponse.Entscheiden"
* name = "MOPED_ClaimResponse_Entscheiden"
* status = #draft
* kind = #operation
* affectsState = true
* resource = #Composition
* system = false
* type = false
* instance = true
* code = #entscheiden
* parameter[+]
  * name = #Entscheidung
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "Der *Entscheidung* Parameter beinhaltet ein Bundle mit sämtliche Details zur Antwort auf den Claim."
  * type = #Bundle
  * targetProfile = Canonical(MopedEntscheidenLGFBundle)
* parameter[+]
  * name = #return
  * use = #out
  * min = 1
  * max = "1"
  * documentation = "Der *return* Parameter gibt Auskunft über den Erfolg der Operation."
  * type = #Resource
  * targetProfile[+] = Canonical(OperationOutcome)