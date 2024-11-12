Instance: MOPEDAbrechnungFreigeben
InstanceOf: OperationDefinition
Title: "MOPED ClaimResponse $freigeben (POC)"
Description: "Die $freigeben Operation wird aufgerufen, wenn eine Abrechnung beantwortet wird und freigegeben wird."
Usage: #definition
* purpose = """

**Wer ruft diese Operation in welchem Zusammenhang auf?**

Die Operation wird vom Akteur Landesgesundheitsfonds (LFG) aufgerufen. Die $freigeben Operation wird aufgerufen, wenn die Abrechnung eines Krankenhauses freigegeben wird.

**Voraussetzungen für den Aufruf**

* Account-Status: `Vorläufige Meldung` oder `Endgültige Meldung`

**Detaillierte Business-Logik**

1. Die ClaimResponse wird lt. Regeln (siehe unten) validiert und eingespielt
2. Falls Schritt 1 erfolgreich war, wird der ClaimResponse.encounter.account.workflowStatus (ClaimResponse aus Operation-Parameter; der Encounter vom Profil MOPEDEncounter) wird auf 
   * `Vorläufige Freigabe` gesetzt, falls der vorherige Status `Vorläufige Meldung` war
   * `Endgültige Freigabe` gesetzt, falls der vorherige Status `Endgültige Meldung` war
3. Alle Referenzen sollen versionsspezifisch aufgelöst werden.

**Validierung / Fehlerbehandlung**

* ClaimResponse.status muss `active` sein (lt. Profil)
* ClaimResponse.type muss `institutional` sein (lt. Profil)
* ClaimResponse.use muss `claim` sein (lt. Profil)
* ClaimResponse.patient muss gleich ClaimResponse.request.patient sein
* ClaimResponse.insurer muss gleich ClaimResponse.request.insurer sein
* ClaimResponse.requestor muss gleich ClaimResponse.request.provider sein
* ClaimResponse.outcome muss `completed` oder `partial` sein
* ClaimResponse.insurance.coverage muss gleich der Claim.insurance.coverage sein

**Weitere Hinweise**

* Hinweis 1: Für den Fehlerfall gibt es eine weitere Operation die eine Korrekturaufforderung anstelle einer Freigabe macht

**Annahmen an das BeS**
* Es wurde vorab geprüft, ob die ClaimResponse auch dem LGF entspricht, der die Operation aufruft. Somit ist sichergestellt, dass jeder LGF nur eigene Claims beantworten kann.

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
  * name = #claimResponse
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "Der *claimResponse* Parameter beinhält sämtliche Details zur Antwort auf den Claim."
  * type = #ClaimResponse
  * targetProfile = "MOPEDClaimResponse"
* parameter[+]
  * name = #return
  * use = #out
  * min = 1
  * max = "1"
  * documentation = "Der *return* Parameter gibt Auskunft über den Erfolg der Operation."
  * type = #Resource
  * targetProfile[+] = Canonical(OperationOutcome)