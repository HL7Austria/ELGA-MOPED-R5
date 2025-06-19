Instance: MopedVAEBeantworten
InstanceOf: OperationDefinition
Title: "MOPED VAERequest $beantworten"
Description: "Die $beantworten Operation wird aufgerufen, wenn eine Versichertenanspruchserklärung beantwortet wird."
Usage: #definition

* id = "MOPED.VAEResponse.Beantworten"
* name = "MOPED_VAEResponse_Beantworten"
* status = #draft
* kind = #operation
* affectsState = true
* resource = #ClaimResponse
* system = false
* type = true
* instance = false
* code = #beantworten
* parameter[+]
  * name = #MopedVAEResponse
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "Der *MopedVAEResponse* Parameter beinhaltet sämtliche Details zur Antwort auf den VAERequest."
  * type = #ClaimResponse
* parameter[+]
  * name = #return
  * use = #out
  * min = 1
  * max = "1"
  * documentation = "Der *return* Parameter gibt Auskunft über den Erfolg der Operation."
  * type = #Resource
  * targetProfile[+] = Canonical(OperationOutcome)