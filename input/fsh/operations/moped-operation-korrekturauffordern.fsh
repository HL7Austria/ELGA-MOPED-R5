Instance: MopedAbrechnungKorrekturAuffordern
InstanceOf: OperationDefinition
Title: "MOPED ClaimResponse $auffordern (POC)"
Description: "Die $auffordern Operation wird aufgerufen, wenn eine Abrechnung beantwortet wird und das Krankehaus zu einer Korrektur aufgefordert wird."
Usage: #definition

* id = "MOPED.ClaimResponse.Auffordern"
* name = "MOPED_ClaimResponse_Auffordern"
* status = #draft
* kind = #operation
* affectsState = true
* resource = #ClaimResponse
* system = false
* type = true
* instance = false
* code = #auffordern
* parameter[+]
  * name = #claimResponse
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "Der *claimResponse* Parameter beinhaltet sämtliche Details zur Antwort auf den Claim."
  * type = #ClaimResponse
  * targetProfile = Canonical(MopedLKFResponse)
* parameter[+]
  * name = #return
  * use = #out
  * min = 1
  * max = "1"
  * documentation = "Der *return* Parameter gibt Auskunft über den Erfolg der Operation."
  * type = #Resource
  * targetProfile[+] = Canonical(OperationOutcome)