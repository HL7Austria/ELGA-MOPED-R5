## Wer ruft diese Operation in welchem Zusammenhang auf?

Die Operation wird vom Akteur Krankenanstalt (KA) aufgerufen. Die $abrechnen Operation wird aufgerufen, wenn im Zuge des Falles angefallene LKF Punkte abgerechnet werden sollen.

## Voraussetzungen für den Aufruf

* Es darf in Composition.section:LKFRequests keinen aktiven LKF Request geben ohne LKFResponse (siehe Hinweis 1).
* Es darf noch keinen finalen LKFRequest mit positiver LKFResponse geben

Zulässige Abrechnungszustände ([siehe Statusmaschine](AF_moped_fall_abrechnung.html#gültige-zustände)): 
- Keine Abrechnung
- vorläufige Abrechnung abgelehnt
- vorläufige Abrechnung genehmigt
- finale Abrechnung abgelehnt


## Detaillierte Business-Logik

1. Suche der Composition: Die Composition mit der jeweiligen *compositionID* lt. Operation-Parameter wird gesucht
2. Der MopedLKFRequest wird lt. Regeln validiert und erstellt
  * *MopedLKFRequest.patient* mit Composition.subject befüllen
  * *MopedLKFRequest.insurance.coverage* mit *MopedComposition.section:Coverages.entry* befüllen
  * *MopedLKFRequest.provider* mit *MopedComposition.section:zustaendigesKH* befüllen
  * *MopedLKFRequest.insurer* mit *MopedComposition.section:zustaendigeSV* befüllen
  * *MopedLKFRequest.encounter* mit *MopedComposition.encounter* und allen TransferEncounter aus *MopedComposition.section:TransferEncounter* befüllen
3. Falls es in der Composition.section:LKFRequests bereits irgendeinen Claim mit dem Abrechnungsstatus Claim.supportingInfo:FinaleAbrechnung `true` gibt, so darf der Abrechnungsstatus in der eingebrachten ClaimResponse auch nur mehr `true` (also eine finale Abrechnung) sein sonst schlägt die Operation fehl
4. Der vorherige aktive LKFRequest und die zugehörige LKFResponse werden auf `cancelled` gesetzt (siehe Hinweis 2).

## Weitere Hinweise
1. Ein aktiver LKFRequest ohne negative LKFResponse würde bedeuten, dass es bereits eine Abrechnung gibt (bereits bestätigt oder noch in Bearbeitung) -> $abrechnen kann dann nur mehr nach Genehmigung einer vorläufigen bzw. Ablehnung einer vorläufigen oder finalen Abrechnung inklusive ClaimResponse erneut aufgerufen werden. Dadurch wird sichergestellt, dass das KH nach einer Abrechnung nur mehr nach einer Antwort des LGF Änderungen durchführen kann
2. Es kann zu jedem Zeitpunkt nur maximal einen aktiven LKFRequest und eine aktive LKFResponse geben. Wird $abrechnen erfolgreich durchgeführt und dadurch ein neuer LKFRequest eingebracht so muss der alte LKFRequest und die dazugehörige LKFResponse auf `cancelled` gesetzt werden.

## Annahmen an das BeS
* Es wurde vorab geprüft, ob das `system` des identifiers in Composition.encounter.identifer dem GDA entspricht, der die Operation aufruft. Somit ist sichergestellt, dass nur eigene Fälle verändert werden können.
