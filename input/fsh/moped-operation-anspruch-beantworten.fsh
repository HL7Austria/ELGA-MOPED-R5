Instance: MOPEDAnspruchBeantworten
InstanceOf: OperationDefinition
Title: "MOPED VAEClaim $beantworten (POC)"
Description: "Die $beantworten Operation wird aufgerufen, wenn eine Versichertenanspruchserklärung beantwortet wird."
Usage: #definition
* purpose = """

**Wer ruft diese Operation in welchem Zusammenhang auf?**

Die Operation wird vom Akteur Sozialversicherung (SV) aufgerufen. Die $beantworten Operation wird aufgerufen, wenn der CoverageEligibilityRequest eines Krankenhauses beantwortet wird.

**Voraussetzungen für den Aufruf**

* Account-Status: `Aufnahme Freigegeben`

**Detaillierte Business-Logik**

1. Die VAEClaimResponse wird lt. Regeln (siehe unten) validiert und eingespielt
2. Falls Schritt 1 erfolgreich war, wird die Ressource Account gesucht, die eine Referenz auf den VAEClaimResponse.request beihält (VAEClaimResponse lt. Operation-Parameter) und auf `SV verarbeitet` gesetzt

**Validierung / Fehlerbehandlung**

* VAEClaimResponse.patient muss gleich VAEClaimResponse.request.patient sein

**Weitere Hinweise**

**Annahmen an das BeS**
* Es wurde vorab geprüft, ob *VAEClaimResponse.insurance* auch der SV entspricht, der die Operation aufruft. Somit ist sichergestellt, dass jede SV nur eigene CoverageEligibilityRequests beantworten kann.

"""

* id = "MOPED.VAEClaimResponse.Beantworten"
* name = "MOPED_VAEClaimResponse_Beantworten"
* status = #draft
* kind = #operation
* affectsState = true
* resource = #ClaimResponse
* system = false
* type = true
* instance = false
* code = #beantworten
* parameter[+]
  * name = #VAEClaimResponse
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "Der *VAEClaimResponse* Parameter beinhält sämtliche Details zur Antwort auf den VAEClaim."
  * type = #ClaimResponse
* parameter[+]
  * name = #return
  * use = #out
  * min = 1
  * max = "1"
  * documentation = "Der *return* Parameter gibt Auskunft über den Erfolg der Operation."
  * type = #Resource
  * targetProfile[+] = Canonical(OperationOutcome)