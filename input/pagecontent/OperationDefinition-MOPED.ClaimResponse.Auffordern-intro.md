## Wer ruft diese Operation in welchem Zusammenhang auf?

Die Operation wird vom Akteur Landesgesundheitsfonds (LFG) aufgerufen. Die $auffordern Operation wird aufgerufen, wenn die Abrechnung eines Krankenhauses nicht freigegeben wird, sondern eine Korrektur der Abrechnung angefordert wird.

## Voraussetzungen für den Aufruf

* Account-Status: `Vorläufige Meldung` oder `Endgültige Meldung`

## Detaillierte Business-Logik

1. Die ClaimResponse wird lt. Regeln (siehe unten) validiert und eingespielt
2. Falls Schritt 1 erfolgreich war, wird der ClaimResponse.encounter.account.workflowStatus (ClaimResponse aus Operation-Parameter; der Encounter vom Profil MopedEncounter) wird auf 
   * `LGF Korrekturaufforderung` gesetzt, falls der vorherige Status `Vorläufige Meldung` war
   * `Endgültige Korrekturaufforderung` gesetzt, falls der vorherige Status `Endgültige Meldung` war
3. Alle Referenzen sollen versionsspezifisch aufgelöst werden.

## Validierung / Fehlerbehandlung

* ClaimResponse.status muss `active` sein (lt. Profil)
* ClaimResponse.type muss `institutional` sein (lt. Profil)
* ClaimResponse.use muss `claim` sein (lt. Profil)
* ClaimResponse.patient muss gleich ClaimResponse.request.patient sein
* ClaimResponse.insurer muss gleich ClaimResponse.request.insurer sein
* ClaimResponse.requestor muss gleich ClaimResponse.request.provider sein
* ClaimResponse.outcome muss `error` sein
* ClaimResponse.insurance.coverage muss gleich der Claim.insurance.coverage sein
* ClaimResponse.error muss befüllt sein

## Weitere Hinweise

* Hinweis 1: Für den Fall, dass ein Claim freigegeben wird und kein Fehler auftritt, gibt es eine weitere Operation die anstelle einer Korrekturaufforderung eine Freigabe definiert

## Annahmen an das BeS
* Es wurde vorab geprüft, ob die ClaimResponse auch dem LGF entspricht, der die Operation aufruft. Somit ist sichergestellt, dass jeder LGF nur eigene Claims beantworten kann.
