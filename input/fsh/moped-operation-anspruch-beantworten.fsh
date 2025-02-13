Instance: MopedAnspruchBeantworten
InstanceOf: OperationDefinition
Title: "MOPED VAERequest $beantworten (POC)"
Description: "Die $beantworten Operation wird aufgerufen, wenn eine Versichertenanspruchserklärung beantwortet wird."
Usage: #definition
* purpose = """

**Wer ruft diese Operation in welchem Zusammenhang auf?**

Die Operation wird vom Akteur Sozialversicherung (SV) aufgerufen. Die $beantworten Operation wird aufgerufen, wenn der MopedVAERequest eines Krankenhauses beantwortet wird.

**Voraussetzungen für den Aufruf**

* Account-Status: `Aufnahme Freigegeben`

**Detaillierte Business-Logik**

1. Die MopedVAEResponse wird lt. Regeln (siehe unten) validiert und eingespielt
2. Falls Schritt 1 erfolgreich war, wird die Ressource Account gesucht (`MopedVAEResponse.request.encounter[MopedEncounter].account`; MopedVAEResponse lt. Operation-Parameter) und auf `SV verarbeitet` gesetzt

**Validierung / Fehlerbehandlung**

* MopedVAEResponse.patient muss gleich mit `MopedVAEResponse.request.patient`und mit `MopedVAEResponse.request.encounter[MopedEncounter].subject` und mit `MopedVAEResponse.request.encounter[MopedEncounter].account.subject` sein
* MopedVAEResponse.requestor muss gleich sein mit `MopedVAEResponse.request.provider` und mit `MopedVAEResponse.request.encounter.serviceProvider`

**Weitere Hinweise**

**Annahmen an das BeS**
* Es wurde vorab geprüft, ob *MopedVAEResponse.insurance* auch der SV entspricht, der die Operation aufruft. Somit ist sichergestellt, dass jede SV nur eigene MopedVAERequests beantworten kann.

"""

* id = "MOPED.MopedVAEResponse.Beantworten"
* name = "MOPED_MopedVAEResponse_Beantworten"
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
  * documentation = "Der *MopedVAEResponse* Parameter beinhält sämtliche Details zur Antwort auf den VAERequest."
  * type = #ClaimResponse
* parameter[+]
  * name = #return
  * use = #out
  * min = 1
  * max = "1"
  * documentation = "Der *return* Parameter gibt Auskunft über den Erfolg der Operation."
  * type = #Resource
  * targetProfile[+] = Canonical(OperationOutcome)