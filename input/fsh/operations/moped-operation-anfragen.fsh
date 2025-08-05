Instance: VersichertenanspruchserklärungAnfragen
InstanceOf: OperationDefinition
Title: "MOPED Versichertenanspruchserklärung $anfragen"
Description: "Die Versichertenanspruchserklärung $anfragen Operation wird aufgerufen, um die Versichertenanspruchserklärung-Anfrage an die SV anzustoßen. Diese Operation ist irrelevant für Selbstzahler (-> wenn es keine zuständige SV gibt darf die Operation $anfragen nicht ausgeführt werden)."
Usage: #definition 

* id = "MOPED.VAERequest.Anfragen"
* name = "MOPED_VAERequest_Anfragen"
* status = #draft
* kind = #operation 
* affectsState = true
* resource = #Composition
* system = false
* type = false
* instance = true
* code = #anfragen
* parameter[+]
  * name = #Anfrage
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "Der *Anfrage* Parameter beinhaltet ein Bundle mit den Informationen für die Versichertenanspruchserklärung"
  * type = #Bundle
  * targetProfile = Canonical(MopedAnfragenBundleKH)
* parameter[+]
  * name = #return
  * use = #out
  * min = 1
  * max = "1"
  * documentation = "Der *return* Parameter gibt Auskunft über den Erfolg der Operation."
  * type = #Resource
  * targetProfile[+] = Canonical(OperationOutcome)
