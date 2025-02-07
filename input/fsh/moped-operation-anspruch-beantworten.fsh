Instance: MopedAnspruchBeantworten
InstanceOf: OperationDefinition
Title: "MOPED CoverageEligibilityResponse $beantworten (POC)"
Description: "Die $beantworten Operation wird aufgerufen, wenn eine Versichertenanspruchserklärung beantwortet wird."
Usage: #definition
* purpose = """

**Wer ruft diese Operation in welchem Zusammenhang auf?**

Die Operation wird vom Akteur Sozialversicherung (SV) aufgerufen. Die $beantworten Operation wird aufgerufen, wenn der CoverageEligibilityRequest eines Krankenhauses beantwortet wird.

**Voraussetzungen für den Aufruf**

* Account-Status: `Aufnahme Freigegeben`

**Detaillierte Business-Logik**

1. Die CoverageEligibilityResponse wird lt. Regeln (siehe unten) validiert und eingespielt
2. Falls Schritt 1 erfolgreich war, wird die Ressource Account gesucht, die eine Referenz auf den CoverageEligibilityResponse.request beihält (CoverageEligibilityResponse lt. Operation-Parameter) und auf `SV verarbeitet` gesetzt

**Validierung / Fehlerbehandlung**

* CoverageEligibilityResponse.patient muss gleich CoverageEligibilityResponse.request.patient sein

**Weitere Hinweise**

**Annahmen an das BeS**
* Es wurde vorab geprüft, ob *CoverageEligibilityResponse.insurance* auch der SV entspricht, der die Operation aufruft. Somit ist sichergestellt, dass jede SV nur eigene CoverageEligibilityRequests beantworten kann.

"""

* id = "MOPED.CoverageEligibilityResponse.Beantworten"
* name = "MOPED_CoverageEligibilityResponse_Beantworten"
* status = #draft
* kind = #operation
* affectsState = true
* resource = #CoverageEligibilityResponse
* system = false
* type = true
* instance = false
* code = #beantworten
* parameter[+]
  * name = #coverageEligibilityResponse
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "Der *coverageEligibilityResponse* Parameter beinhaltet sämtliche Details zur Antwort auf den CoverageEligibilityRequest."
  * type = #CoverageEligibilityResponse
* parameter[+]
  * name = #return
  * use = #out
  * min = 1
  * max = "1"
  * documentation = "Der *return* Parameter gibt Auskunft über den Erfolg der Operation."
  * type = #Resource
  * targetProfile[+] = Canonical(OperationOutcome)