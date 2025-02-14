Instance: MopedAbrechnungFreigeben
InstanceOf: OperationDefinition
Title: "MOPED LKFRequest $freigeben (POC)"
Description: "Die $freigeben Operation wird aufgerufen, wenn eine Abrechnung beantwortet wird und freigegeben wird."
Usage: #definition
* purpose = """

**Wer ruft diese Operation in welchem Zusammenhang auf?**

Die Operation wird vom Akteur Landesgesundheitsfonds (LFG) aufgerufen. Die $freigeben Operation wird aufgerufen, wenn die Abrechnung eines Krankenhauses freigegeben wird.

**Voraussetzungen für den Aufruf**

* Account-Status: `Vorläufige Meldung` oder `Endgültige Meldung`

**Detaillierte Business-Logik**

1. Die MopedLKFResponse wird lt. Regeln (siehe unten) validiert und eingespielt
2. Falls Schritt 1 erfolgreich war, wird der MopedLKFResponse.encounter.account.workflowStatus (MopedLKFResponse aus Operation-Parameter; der Encounter vom Profil MopedEncounter) wird auf 
   * `Vorläufige Freigabe` gesetzt, falls der vorherige Status `Vorläufige Meldung` war
   * `Endgültige Freigabe` gesetzt, falls der vorherige Status `Endgültige Meldung` war
3. Alle Referenzen sollen versionsspezifisch aufgelöst werden.

**Validierung / Fehlerbehandlung**

* MopedLKFResponse.status muss `active` sein (lt. Profil)
* MopedLKFResponse.type muss `institutional` sein (lt. Profil)
* MopedLKFResponse.use muss `claim` sein (lt. Profil)
* MopedLKFResponse.patient muss gleich MopedLKFResponse.request.patient sein
* MopedLKFResponse.insurer muss gleich MopedLKFResponse.request.insurer sein
* MopedLKFResponse.requestor muss gleich MopedLKFResponse.request.provider sein
* MopedLKFResponse.outcome muss `complete` oder `partial` sein
* MopedLKFResponse.insurance.coverage muss gleich der Claim.insurance.coverage sein

**Weitere Hinweise**

* Hinweis 1: Für den Fehlerfall gibt es eine weitere Operation die eine Korrekturaufforderung anstelle einer Freigabe macht

**Annahmen an das BeS**
* Es wurde vorab geprüft, ob die MopedLKFResponse auch dem LGF entspricht, der die Operation aufruft. Somit ist sichergestellt, dass jeder LGF nur eigene Claims beantworten kann.

"""

* id = "MOPED.ClaimResponse.Freigeben"
* name = "MOPED_ClaimResponse_Freigeben"
* status = #draft
* kind = #operation
* affectsState = true
* resource = #ClaimResponse
* system = false
* type = true
* instance = false
* code = #freigeben
* parameter[+]
  * name = #MopedLKFResponse
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "Der *MopedLKFResponse* Parameter beinhaltet sämtliche Details zur Antwort auf den Claim."
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