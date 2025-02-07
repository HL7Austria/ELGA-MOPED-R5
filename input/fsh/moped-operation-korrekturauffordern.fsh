Instance: MOPEDAbrechnungKorrekturAuffordern
InstanceOf: OperationDefinition
Title: "MOPED LKF Korrektur $auffordern (POC)"
Description: "Die $auffordern Operation wird aufgerufen, wenn eine Abrechnung beantwortet wird und das Krankehaus zu einer Korrektur aufgefordert wird."
Usage: #definition
* purpose = """

**Wer ruft diese Operation in welchem Zusammenhang auf?**

Die Operation wird vom Akteur Landesgesundheitsfonds (LFG) aufgerufen. Die $auffordern Operation wird aufgerufen, wenn die Abrechnung eines Krankenhauses nicht freigegeben wird, sondern eine Korrektur der Abrechnung angefordert wird.

**Voraussetzungen für den Aufruf**

* Account-Status: `Vorläufige Meldung` oder `Endgültige Meldung`

**Detaillierte Business-Logik**

1. Die MopedLKFResponse wird lt. Regeln (siehe unten) validiert und eingespielt
2. Falls Schritt 1 erfolgreich war, wird der MopedLKFResponse.encounter.account.workflowStatus (MopedLKFResponse aus Operation-Parameter; der Encounter vom Profil MOPEDEncounter) wird auf 
   * `LGF Korrekturaufforderung` gesetzt, falls der vorherige Status `Vorläufige Meldung` war
   * `Endgültige Korrekturaufforderung` gesetzt, falls der vorherige Status `Endgültige Meldung` war
3. Alle Referenzen sollen versionsspezifisch aufgelöst werden.


**Validierung / Fehlerbehandlung**

* MopedLKFResponse.status muss `active` sein (lt. Profil)
* MopedLKFResponse.type muss `institutional` sein (lt. Profil)
* MopedLKFResponse.use muss `claim` sein (lt. Profil)
* MopedLKFResponse.patient muss gleich MopedLKFResponse.request.patient sein
* MopedLKFResponse.insurer muss gleich MopedLKFResponse.request.insurer sein
* MopedLKFResponse.requestor muss gleich MopedLKFResponse.request.provider sein
* MopedLKFResponse.outcome muss `error` sein
* MopedLKFResponse.insurance.coverage muss gleich der Claim.insurance.coverage sein
* MopedLKFResponse.error muss befüllt sein

**Weitere Hinweise**

* Hinweis 1: Für den Fall, dass ein Claim freigegeben wird und kein Fehler auftritt, gibt es eine weitere Operation die anstelle einer Korrekturaufforderung eine Freigabe definiert

**Annahmen an das BeS**
* Es wurde vorab geprüft, ob die MopedLKFResponse auch dem LGF entspricht, der die Operation aufruft. Somit ist sichergestellt, dass jeder LGF nur eigene Claims beantworten kann.

"""

* id = "MOPED.MopedLKFResponse.Auffordern"
* name = "MOPED_MopedLKFResponse_Auffordern"
* status = #draft
* kind = #operation
* affectsState = true
* resource = #ClaimResponse
* system = false
* type = true
* instance = false
* code = #auffordern
* parameter[+]
  * name = #MopedLKFResponse
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "Der *MopedLKFResponse* Parameter beinhält sämtliche Details zur Antwort auf den Claim."
  * type = #MopedLKFResponse
  * targetProfile = Canonical(MopedLKFResponse)
* parameter[+]
  * name = #return
  * use = #out
  * min = 1
  * max = "1"
  * documentation = "Der *return* Parameter gibt Auskunft über den Erfolg der Operation."
  * type = #Resource
  * targetProfile[+] = Canonical(OperationOutcome)