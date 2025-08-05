## Wer ruft diese Operation in welchem Zusammenhang auf?

Die Operation wird vom Akteur Landesgesundheitsfonds (LFG) aufgerufen. Die $entscheiden Operation wird aufgerufen, wenn die Abrechnung eines Krankenhauses (inklusive Errors und Warnings) beantwortet und entweder bestätigt oder mit Korrekturaufforderunge abgelehnt wird. Die Operation kann außerdem dafür verwendet werden Kommunikation zum Fall einzubringen wie z.B. die Anforderung von Dokumenten. 

## Voraussetzungen für den Aufruf

* Es existiert ein aktiver LKFRequest

## Detaillierte Business-Logik

1. Die ClaimResponse, CommunicationRequest oder Communication wird lt. Profil validiert und eingespielt

2. Falls eine ClaimResponse eingebracht wird und es bereits eine aktive LKFResponse in der Composition.section:LKFResponses gibt so wird der status auf *cancelled* gesetzt. Die neue LKFResponse wird in die Section eingefügt und ist ab jetzt die gültige LKFResponse.

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
