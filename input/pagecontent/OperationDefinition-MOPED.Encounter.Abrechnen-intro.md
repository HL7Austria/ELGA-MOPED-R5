## Wer ruft diese Operation in welchem Zusammenhang auf?

Die Operation wird vom Akteur Krankenanstalt (KA) aufgerufen. Die $abrechnen Operation wird aufgerufen, wenn im Zuge des Falles angefallene LKF Punkte abgerechnet werden sollen.

## Voraussetzungen für den Aufruf

* In Composition.section:LKFRequests darf kein aktiver LKF-Request ohne zugehörige LKFResponse vorhanden sein (siehe Hinweis 1).
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
  * *MopedLKFRequest.provider* mit *MopedComposition.section:zustaendigeKA* befüllen
  * *MopedLKFRequest.insurer* mit *MopedComposition.section:zustaendigeSV* befüllen
  * *MopedLKFRequest.encounter* mit *MopedComposition.encounter* und allen TransferEncounter aus *MopedComposition.section:TransferEncounter* befüllen

3. Falls in Composition.section:LKFRequests bereits ein inaktiver Claim mit `Claim.subtype = #final` vorhanden ist, darf auch im eingebrachten Claim der Abrechnungsstatus ausschließlich `#final` sein (d. h. es muss sich ebenfalls um eine finale Abrechnung handeln). Andernfalls schlägt die Operation fehl.
4. Falls es sich um die erste finale Abrechnung handelt und es derzeit noch einen aktiven vorläufigen Request gibt wird der vorherige aktive LKFRequest und die zugehörige LKFResponse auf `cancelled` gesetzt (siehe Hinweis 2). 

## Weitere Hinweise
1. Ein aktiver LKFRequest ohne negative LKFResponse bedeutet, dass bereits eine Abrechnung existiert (entweder bereits bestätigt oder noch in Bearbeitung). In diesem Fall kann $abrechnen erst erneut aufgerufen werden, nachdem auf eine vorläufige Abrechnung vom LGF rückgemeldet wurde oder eine finale Abrechnung abgelehnt wurde.
Dadurch wird sichergestellt, dass eine KA nach einer erfolgten Abrechnung Änderungen nur mehr nach einer Rückmeldung des LGF durchführen kann.

2. Es kann zu jedem Zeitpunkt nur maximal einen aktiven LKFRequest und eine aktive LKFResponse geben. Wird $abrechnen erfolgreich durchgeführt und dadurch ein neuer finaler LKFRequest eingebracht so muss der alte LKFRequest und die dazugehörige LKFResponse auf `cancelled` gesetzt werden.

## Annahmen an das BeS
* Es wurde vorab geprüft, ob das `system` des identifiers in Composition.encounter.identifer dem GDA entspricht, der die Operation aufruft. Somit ist sichergestellt, dass nur eigene Fälle verändert werden können.
