## Wer ruft diese Operation in welchem Zusammenhang auf?

Die Operation wird vom Akteur Krankenhaus (KH) aufgerufen. Die $wechseln Operation wird aufgerufen, wenn die Versicherung gewechselt wird.

## Voraussetzungen für den Aufruf
* MopedEncounter exisitert in der Composition und es gibt noch keine endgültige Meldung von Seite des KH

## Detaillierte Business-Logik

1. Suche der Composition: Die Composition mit der jeweiligen *compositionID* lt. Operation-Parameter wird gesucht
2. Alter VAERequests:
  * Falls es einen aktiven, unbeantworteten (keine VAEResponse die darauf verweist) VAERequest in der Composition.section:VAERequests gibt, dann soll darin der status von *active* zu *cancelled* geändert werden
3. Alte Coverage:
  * Suchen und löschen der alten Coverage in Composition.section:Coverages 
4. Alte zuständige SV:
  * Suchen und herausnehmen der alten zuständigen SV in Composition.section:zustaendigeSV falls diese existiert. Im Fall eines Selbstzahlers gibt es keine vorher zuständige SV.
5. Alter Hauptversicherter:
  * Suchen und löschen der alten RelatedPersion in Composition.section:Hauptversicherter
6. Neue Coverage:
  * neue Coverage laut Operation Parameter *coverage* in der Composition.section:Coverages einfügen
7. Neue zuständige SV:
  * neue zuständige SV laut Operation Parameter *zustaendigeSV* in der Composition.section:zustaendigeSV einfügen

# Validierung
* Es muss überprüft werden, ob der Parameter *aufnahmezahl* mit dem Encounter.identifier:Aufnahmezahl der Composition aus Schritt 1 übereinstimmt.

## Annahmen an das BeS
* Es wurde vorab geprüft, ob das `system` des Parameters `aufnahmezahl` dem GDA entspricht, der die Operation aufruft. Somit ist sichergestellt, dass nur eigene Fälle bearbeitet werden können.
