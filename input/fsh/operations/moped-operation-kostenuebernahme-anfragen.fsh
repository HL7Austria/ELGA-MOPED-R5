Instance: VersichertenanspruchserklärungAnfragen
InstanceOf: OperationDefinition
Title: "MOPED Versichertenanspruchserklärung $anfragen (POC)"
Description: "Die Versichertenanspruchserklärung $anfragen Operation wird aufgerufen, um die Versichertenanspruchserklärung-Anfrage an die SV anzustoßen. Diese Operation ist irrelevant für Selbstzahler (-> wenn es keine zuständige SV gibt darf die Operation $anfragen nicht ausgeführt werden)."
Usage: #definition 

* id = "MOPED.VAERequest.Anfragen"
* name = "MOPED_VAERequest_Anfragen"
* status = #draft
* kind = #operation 
* affectsState = true
* resource = #Claim
* system = false
* type = true
* instance = false
* code = #anfragen
* parameter[+]
  * name = #compositionID
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "Der *compositionID* Parameter beinhaltet die technische ID (inklusive Version) der Composition des zu bearbeitenden Falls"
  * type = #id
* parameter[+]
  * name = #aufnahmezahl
  * use = #in 
  * min = 1
  * max = "1"
  * documentation = "Der *aufnahmezahl* Parameter beinhaltet den eindeutigen Identifizierer für den relevanten Fall."
  * type = #Identifier
* parameter[+]
  * name = #vae
  * use = #in
  * min = 1
  * max = "*"
  * documentation = "Der *vae* Parameter beinhaltet die Versichertenanspruchserklärung"
  * type = #Claim
  * targetProfile = Canonical(MopedVAERequest)
* parameter[+]
  * name = #return
  * use = #out
  * min = 1
  * max = "1"
  * documentation = "Der *return* Parameter gibt Auskunft über den Erfolg der Operation."
  * type = #Resource
  * targetProfile[+] = Canonical(OperationOutcome)
