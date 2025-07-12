## Wer ruft diese Operation in welchem Zusammenhang auf?

Die Operation wird vom Akteur Krankenhaus (KH) aufgerufen. Die $erfassen Operation wird aufgerufen, wenn ein(e) im Zuge des Falles erbrachte Leistung und Diagnosen eingemeldet wird.

## Voraussetzungen für den Aufruf

* Es gibt keine aktive endgültige LKFResponse

## Detaillierte Business-Logik

1. Suche der Composition: Die Composition mit der jeweiligen *compositionID* lt. Operation-Parameter wird gesucht
2. Die Procedures und Conditions werden laut transaction Bundle im Parameter *leistungenDiagnosen* eingespielt. Wird dabei eine Diagnose/Leistung gelöscht, die es nicht gibt so schlägt die Operation fehl. Dies passiert auch, wenn ein update auf eine Leistung/Diagnose gemacht werden soll, die nicht existiert.
3. Composition sections aktualisieren: 
    - Jede neu angelegte Diagnose/Leistung wird in der jeweiligen Section eingefügt. Diagnosen werden dabei in die generelle section unter Composition.section:Diagnosen.entry und nicht in eine der kategorisierten subsections eingefügt (siehe Hinweis 2).
    - Jede gelöschte Diagnose/Leistung wird aus der/den jeweiligen section(s)/subsection(s) entfernt in der/denen sie derzeit referenziert wird (dabei ist Hinweis 3 zu beachten).
    - Bei aktualisierten Diagnosen/Leistungen ändert sich nichts.
4. Existiert nach Schritt 2. keine Hauptdiagnose mehr und Composition.useContext:Workflow besitzt bereits einen Eintrag "Entlassung vollständig" so muss dieser entfernt werden und der Composition.Enocunter auf den status = `discharged`gesetzt werden. Wird die Hauptdiagnose aktualisiert und existiert weiterhin so ist dies nicht notwendig. 
5. Wird eine Haupt-, oder Nebendiagnose aktualisiert so muss falls ein aktiver vorläufiger LKFRequest existiert dessen status auf `cancelled` gesetzt werden, da sich dadurch die LKF Punkte ändern und der alte Claim nicht mehr valide ist. Das KH muss daraufhin erneut $abrechnen. 

## Validierung / Fehlerbehandlung

* Wird eine Ressource, welche durch eine id gekennzeichnet ist, nicht gefundne so schlägt die Operation fehl.
* Mindestens ein leistungs- oder ein diagnose-entry im Bundle müssen befüllt sein

## Weitere Hinweise

* Hinweis 1: Leistungen melden kann ein Krankenhaus beliebig oft. Eine Status-Änderung erfolgt dadurch nicht. Erst zu einem bestimmten Zeitpunkt, sobald sich das Krankenhaus für die Abrechnung ($abrechnen) entschließt, wird im Zuge dieser weiterführenden Operation die Abrechnung und somit eine Status-Änderung angestoßen.
* Hinweis 2: Die Zuordnung zu den subsections und den jeweiligen Kategorien (Haupt-/Zusatzdiagnose) erfolgt bei der Entlassung in $entlassen. Diese Zuordnung ist für die SV von großer Bedeutung - daher können Änderungen des Diagnosetyps nach der Entlassung nur mehr mit einem $update durchgeführt werden.
* Hinweis 3: Eine Diagnose kann auch in mehreren Sections/Subsections vorkommen, falls sie beiden Kategorien entspricht (z.b. kann eine Aufnahmediagnose gleichzeitig Zusatzdiagnose sein). Haupt- und Zusatzdiagnosen schließen einander jedoch aus.


## Annahmen an das BeS
* Es wurde vorab geprüft, ob das `system` des Parameters `aufnahmezahl` dem GDA entspricht, der die Operation aufruft. Somit ist sichergestellt, dass nur Procedures/Conditions für die eigenen Fälle eingemeldet werden können.
