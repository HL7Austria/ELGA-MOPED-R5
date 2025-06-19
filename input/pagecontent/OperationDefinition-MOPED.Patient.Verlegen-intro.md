## Wer ruft diese Operation in welchem Zusammenhang auf?

Die Operation wird vom Akteur Krankenhaus (KH) aufgerufen. Die $verlegen Operation wird aufgerufen, wenn ein(e) Patient*in auf eine andere Station verlegt wird.

## Voraussetzungen für den Aufruf
* MopedEncounter exisitert in der Composition und besitzt den status *in-progress*

## Detaillierte Business-Logik

1. Suche der Composition: Die Composition mit der jeweiligen *compositionID* lt. Operation-Parameter wird gesucht
2. Alter Transfer Encounter:
  * Suche des alten MopedTransferEncounter
  * Abschließen des alten MopedTransferEncounter: *MopedTransferEncounter.status* wird von *in-progress* auf *completed* gesetzt
  * Endzeitpunkt des alten MopedTransferEncounter: *MopedTransferEncounter.actualPeriod.end* wird auf den *zeitpunkt* lt. Operation-Parameter gesetzt.
  * Abgangsart vom alten MopedTransferEncounter: *MopedTransferEncounter.abgangsart* wird auf *abgangsart* lt. Operation-Parameter gesetzt.
  * *MopedTransferEncounter.Altersgruppe:beiEntlassung wird lt. LKF-Regeln berechnet, anhand des *Composition.patient* (für Berechnugns-Details siehe Hinweis 1).
3. Der neue TransferEncounter:
  * *MopedTransferEncounter.partOf* referenziert den MopedEncounter
  * Der neue Transferencounter wird in die Composition.section:Transferencounter.section eingefügt, welche dem Encounter.meta.profile entspricht
4. Anzahl Verlegungen:
  * Composition.extension:AnzahlVerlegungen wird um 1 erhöht. **TBD noch abzuklären:** Dies ist auch so, wenn es sich bei der Verlegung um einen Urlaub handeln sollte (siehe Hinweis 2).
5. **TBD noch abzuklären:** AnzahlBeurlaubungen:
  * War alter MopedTransferEncounter aus Schritt 2 ein Urlaub (i.e. Funktionscode `10000000`)?
    * Wenn ja, dann wird der Counter *Composition.extension:AnzahlBeurlaubungen* um 1 erhöht.

# Validierung
* Es muss überprüft werden, ob der Parameter *aufnahmezahl* mit dem Encounter.identifier:Aufnahmezahl der Composition aus Schritt 1 übereinstimmt.

## Weitere Hinweise
* Hinweis 1: LKF 4.1.9 Altersgruppe bei Entlassung/Kontakt
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
* Hinweis 2: Der Counter für AnzahlVerlegungen wird auch im Falle einer Beurlaubung erhöht, bei der eine reguläre Verlegung-Operation aufgerufen wird.

## Annahmen an das BeS
* Es wurde vorab geprüft, ob das `system` des Parameters `aufnahmezahl` dem GDA entspricht, der die Operation aufruft. Somit ist sichergestellt, dass nur eigene Fälle verlegt werden können.
