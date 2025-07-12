## Wer ruft diese Operation in welchem Zusammenhang auf?

Die Operation wird vom Akteur Krankenhaus (KH) aufgerufen. Die $verlegen Operation wird aufgerufen, wenn ein(e) Patient*in auf eine andere Station verlegt wird.

## Voraussetzungen für den Aufruf
* MopedEncounter exisitert in der Composition und besitzt den status *in-progress*

## Detaillierte Business-Logik

1. Suche der Composition: Die Composition mit der jeweiligen *compositionID* lt. Operation-Parameter wird gesucht
2. Die TransferEncounter werden laut transaction Bundle im Parameter *verlegungen* eingespielt. Wird dabei eine Verlegung gelöscht, die es nicht gibt so schlägt die Operation fehl. Dies passiert auch, wenn ein update auf eine Verlegung gemacht werden soll, die nicht existiert.
3. Composition sections aktualisieren: 
  * *MopedTransferEncounter.partOf* referenziert den MopedEncounter
  * Jede neu angelegte Verlegung wird in die Composition.section:TransferEncounter eingefügt.
  * Jede gelöschte Verlegung wird aus der section entfernt.
  * Bei aktualisierten Verlegungen ändert sich nichts.
4. Anzahl Verlegungen:
  * Composition.extension:AnzahlVerlegungen wird durch ein count() von Composition.section:TransferEncounter.entry ermittelt (Hinweis 1)
5. AnzahlBeurlaubungen:
  Die Anzahl der Beurlaubungen wird ermittelt indem alle TransferEncounter gezählt werden, die als Abteilung einen Funktionscode `10000000` hinterlegt haben.

## Validierung
* Es muss überprüft werden, ob der Parameter *aufnahmezahl* mit dem Encounter.identifier:Aufnahmezahl der Composition aus Schritt 1 übereinstimmt.

## Weitere Hinweise
* Hinweis 1: Der Counter für AnzahlVerlegungen zählt auch Beurlaubung als ganz normale Verlegungen.

## Annahmen an das BeS
* Es wurde vorab geprüft, ob das `system` des Parameters `aufnahmezahl` dem GDA entspricht, der die Operation aufruft. Somit ist sichergestellt, dass nur eigene Fälle verlegt werden können.
