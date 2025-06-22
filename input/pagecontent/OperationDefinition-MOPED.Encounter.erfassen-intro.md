## Wer ruft diese Operation in welchem Zusammenhang auf?

Die Operation wird vom Akteur Krankenhaus (KH) aufgerufen. Die $erfassen Operation wird aufgerufen, wenn ein(e) im Zuge des Falles erbrachte Leistung und Diagnosen eingemeldet wird.

## Voraussetzungen für den Aufruf

* Es gibt keine aktive endgültige LKFResponse

## Detaillierte Business-Logik

1. Suche der Composition: Die Composition mit der jeweiligen *compositionID* lt. Operation-Parameter wird gesucht
2. Für jedes Procedure und jede Condition wird die jeweilige Composition section durchsucht (Composition.section:Leistungen für Procedures und Composition.section:Diagnosen.subsection:Aufnahme-/Haupt-/Zusatzdiagnosen für Diagnosen), ob es bereits eine Leistung/Diagnose mit der jeweiligen id gibt:
    * Hinweis: Falls der Parameter *löschen* true ist gilt das für alle weiteren Schritte und es wird statt Update/Erstellung die Ressource gelöscht falls sie gefunden wird.
    * Existiert bereits eine Leistung/Diagnose mit der id so wird sie durch die derzeitige mit einem Update ersetzt oder gelöscht
    * falls *löschen* = true und sie existiert nicht so schlägt die Operation fehl
    * Existiert die Leistung/Diagnose in der angegebenen section noch nicht so wird sie angelegt (dabei ist Hinweis 2 zu beachten)
3. Existiert nach Schritt 2. keine Hauptdiagnose mehr und Composition.useContext:Workflow besitzt bereits einen Eintrag "Entlassung vollständig" so muss dieser entfernt werden und der Composition.Enocunter auf den status = `discharged`gesetzt werden. Wird die Hauptdiagnose aktualisiert und existiert weiterhin so ist dies nicht notwendig. 
4. Wird eine Haupt-, oder Nebendiagnose aktualisiert so muss falls ein aktiver vorläufiger LKFRequest existiert dessen status auf `cancelled` gesetzt werden, da sich dadurch die LKF Punkte ändern und der alte Claim nicht mehr valide ist. Das KH muss daraufhin erneut $abrechnen. 

## Validierung / Fehlerbehandlung

* Wird eine Ressource, welche durch eine id gekennzeichnet ist, nicht gefundne so schlägt die Operation fehl.
* Ist *löschen* true und eine Ressource besitzt keine id dann schlägt die Operation ebenfalls fehl
* Mindestens ein leistungs- oder ein diagnose-Parameter müssen befüllt sein

## Weitere Hinweise

* Hinweis 1: Leistungen melden kann ein Krankenhaus beliebig oft. Eine Status-Änderung erfolgt dadurch nicht. Erst zu einem bestimmten Zeitpunkt, sobald sich das Krankenhaus für die Abrechnung ($abrechnen) entschließt, wird im Zuge dieser weiterführenden Operation die Abrechnung und somit eine Status-Änderung angestoßen.
* Hinweis 2: Eine Diagnose kann auch in mehreren Sections/Subsections vorkommen, falls sie beiden Kategorien entspricht (z.b. kann eine Aufnahmediagnose gleichzeitig Zusatzdiagnose sein). Haupt- und Zusatzdiagnosen schließen einander jedoch aus.

## Annahmen an das BeS
* Es wurde vorab geprüft, ob das `system` des Parameters `aufnahmezahl` dem GDA entspricht, der die Operation aufruft. Somit ist sichergestellt, dass nur Procedures/Conditions für die eigenen Fälle eingemeldet werden können.
