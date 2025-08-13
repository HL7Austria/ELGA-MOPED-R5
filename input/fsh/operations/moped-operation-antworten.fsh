Instance: MopedAntworten
InstanceOf: OperationDefinition
Title: "MOPED auf VAERequest oder ARKRequest $antworten"
Description: "Die $antworten Operation wird aufgerufen, wenn eine Versichertenanspruchserklärung oder eine Kosteninformation beantwortet wird."
Usage: #definition

* id = "MOPED.Auf.Request.Antworten"
* name = "MOPED_Auf_Request_Antworten"
* status = #draft
* kind = #operation
* affectsState = true
* resource = #Composition
* system = false
* type = false
* instance = true
* code = #antworten
* parameter[+]
  * name = #Antwort
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "Der *Antwort* Parameter beinhaltet sämtliche Details zur Antwort auf den VAE/ARKRequest oder zusätzlich eingebrachte Kommunikation."
  * type = #Bundle
  * targetProfile[+] = Canonical(MopedAntwortenBundleSV)
* parameter[+]
  * name = #return
  * use = #out
  * min = 1
  * max = "1"
  * documentation = "Der *return* Parameter gibt Auskunft über den Erfolg der Operation."
  * type = #Resource
  * targetProfile[+] = Canonical(OperationOutcome)