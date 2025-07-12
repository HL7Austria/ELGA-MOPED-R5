## Wer ruft diese Operation in welchem Zusammenhang auf?

Die Operation wird vom Akteur Krankenhaus (KH) aufgerufen. Die $abrechnen Operation wird aufgerufen, wenn im Zuge des Falles angefallene LKF Punkte abgerechnet werden sollen.

## Voraussetzungen für den Aufruf

* Es darf keinen aktiven, unbeantworteten VAE Request geben. (siehe Hinweis 1)

## Detaillierte Business-Logik

1. Suche der Composition: Die Composition mit der jeweiligen *compositionID* lt. Operation-Parameter wird gesucht
2. Falls es in der Composition.section:LKFRequests bereits einen Claim mit dem status `draft` gibt so wird der status zu `canceled` geändert.
3. Der Claim wird lt. Regeln (siehe unten) validiert und eingespielt
4. Falls Schritt 3 erfolgreich war, wird der Composition.useContext:Workflow (sofern der status noch nicht existiert) ergänzt um: 
   * `Vorläufige Meldung` falls der `abschliessen`-Parameter `false` ist
   * `Endgültige Meldung` falls der `abschliessen`-Parameter `true` ist

## Validierung / Fehlerbehandlung

Es muss überprüft werden, ob der Parameter aufnahmezahl mit dem Encounter.identifier:Aufnahmezahl der Composition aus Schritt 1 übereinstimmt.

## Weitere Hinweise
1. Ein aktiver unbeantworteter VAERequest würde bedeuten, dass es bereits eine endgültige Meldung gibt -> $abrechnen kann dann nur mehr nach Korrekturaufforderung inklusive ClaimResponse mit Ablehnung erneut aufgerufen werden

## Annahmen an das BeS
* Es wurde vorab geprüft, ob das `system` des Parameters `aufnahmezahl` dem GDA entspricht, der die Operation aufruft. Somit ist sichergestellt, dass nur eigene Fälle abgerechnet werden können.
