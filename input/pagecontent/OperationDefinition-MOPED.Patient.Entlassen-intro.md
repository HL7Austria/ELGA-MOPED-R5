## Wer ruft diese Operation in welchem Zusammenhang auf?

Die Operation wird vom Akteur Krankenhaus (KH) aufgerufen. Die $entlassen Operation wird aufgerufen, wenn ein(e) Patient*in aus dem Krankenhaus entlassen wurde.

## Voraussetzungen für den Aufruf

* MopedEncounter existiert und besitzt den Status *in-progress* oder *discharged* (wenn es bereits eine Entlassung Aviso gibt)

## Detaillierte Business-Logik

1. Suche der Composition: Die Composition mit der jeweiligen *compositionID* lt. Operation-Parameter wird gesucht
2. Update des MopedEncounters (Composition.encounter):
  * *MopedEncounter.actualPeriod.end* mit dem *zeitpunkt* lt. Operation-Parameter befüllen
  * *MopedEncounter.status* mit `discharged` oder `complete`  befüllen je nach Ausprägung von *aviso* (siehe Hinweis 1)
  * *MopedEncounter.admission.dischargeDisposition* mit *entlassungsart* lt. Operation-Parameter befüllen
  * *MopedEncounter.extension:Altersgruppe.extension:beiEntlassung* berechnen und befüllen (siehe Hinweis 2)

## Validierung
* Es muss überprüft werden, ob der Parameter *aufnahmezahl* mit dem Encounter.identifier:Aufnahmezahl der Composition aus Schritt 1 übereinstimmt.

## Workflowstatus Tracking
* *Composition.useContext:Workflow* wird um einen Eintrag "Entlassung Aviso" oder "Entlassung vollständig" erweitert je nach Wert des Parameters *aviso* und nur sofern der status nicht bereits existiert

## Weitere Hinweise
* Hinweis 1: *aviso* = true führt zum Encounter.status `discharged` und *aviso* = false führt zum Encounter.status `complete`
* Hinweis 2: LKF 4.1.9 Altersgruppe bei Entlassung/Kontakt
  * Vollendete Lebensjahre sind ausschlaggebend
  * 0: 0
  * 1-4: 1
  * 5-9: 5
  * 10-14: 10
  * 15-19: 15
  * 20-24: 20
  * ... immer weiter so, die untere Grenze des Alters in 5er-Schritten
  * 85-89: 85
  * 90-95: 90
  * 95 und älter: 95
  Bei ambulanten Fällen mit dem Aufnahmedatum und bei stationären mit dem Entlassungsdatum berechnen

## Annahmen an das BeS
* Es wurde vorab geprüft, ob das `system` des Parameters `aufnahmezahl` dem GDA entspricht, der die Operation aufruft. Somit ist sichergestellt, dass nur eigene Fälle entlassen werden können.
