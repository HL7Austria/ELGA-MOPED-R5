## Wer ruft diese Operation in welchem Zusammenhang auf?

Die Operation wird vom Akteur Krankenhaus (KH) aufgerufen. Die $verlegen Operation wird aufgerufen, wenn ein(e) Patient*in auf eine andere Station verlegt wird. Auch initial, wenn ein Patient auf eine bestimmte Station aufgenommen wird, wird diese Operation aufgerufen (dies passiert automatisch im Zuge der Operation $aufnehmen).

## Voraussetzungen für den Aufruf

* Account-Status: `Aufnahme in Arbeit`, `Aufnahme freigegeben` oder `SV verarbeitet`

## Detaillierte Business-Logik

1. Suche des MopedEncounter: Der MopedEncounter mit der jeweiligen *aufnahmezahl* lt. Operation-Parameter wird gesucht
2. Neuer Transfer Encounter:
  * Ein neuer MopedTransferEncounter wird vorbereitet
  * *MopedTransferEncounter.partOf* referenziert den MopedEncounter aus Schritt 1.
  * *MopedTransferEncounter.actualPeriod.start* wird mit dem *zeitpunkt* lt. Operation-Parameter befüllt.
  * *MopedTransferEncounter.serviceProvider* setzt eine Referenz auf die MopedOrganizationAbteilung mit dem jeweiligen *funktionscode* bzw. *funktionssubcode* lt. Operation-Parameter.
  * *MopedTransferEncounter.Neugeborenes* wird lt. LKF-Regeln berechnet, anhand des *MopedEncounter.subject.birthdate* aus dem Encounter aus Schritt 1 (für Berechnugns-Details siehe Hinweis 1).
  * *MopedTransferEncounter.Altersgruppe* wird lt. LKF-Regeln berechnet, anhand des *MopedEncounter.subject.birthdate* aus dem Encounter aus Schritt 1 (für Berechnugns-Details siehe Hinweis 2).
  * *MopedTransferEncounter.subjectStatus.code* enthält den code lt. Operations-Parameter anwesenheitsart, und zusätzlich wird aus dem ValueSet der Display-Wert ausgelesen und in MopedTransferEncounter.subjectStatus.display gepseichert
3. Account AnzahlVerlegungen: Die Extension *Account.extension.AnzahlVerlegungen* im zur Aufnahmezahl gehöhrenden Account wird um 1 erhöht. Dies ist auch so, wenn es sich bei der Verlegung um einen Urlaub handeln sollte (siehe Hinweis 3).
4. Alter Transfer Encounter:
  * Dieser Schritt ist nur relevant, wenn es sich *nicht* um eine Neufaufnahme (lt. Operation-Parameter) handelt.
  * Suche des alten MopedTransferEncounter: Mit *MopedTransferEncounter.partOf* einer Referenz auf den MopedEncounter aus Schritt 1 und den Status *in-progress*
  * Abschließen des alten MopedTransferEncounter: *MopedTransferEncounter.status* wird auf *completed* gesetzt
  * Endzeitpunkt des alten MopedTransferEncounter: *MopedTransferEncounter.actualPeriod.end* wird auf den *zeitpunkt* lt. Operation-Parameter gesetzt.
  * Abgangsart vom alten MopedTransferEncounter: *MopedTransferEncounter.abgangsart* wird auf *abgangsart* lt. Operation-Parameter gesetzt.
5. Account AnzahlBeurlaubungen:
  * Dieser Schritt ist nur relevant, wenn es sich *nicht* um eine Neufaufnahme (lt. Operation-Parameter) handelt.
  * War alter MopedTransferEncounter aus Schritt 4.2 ein Urlaub (i.e. Funktionscode `10000000`)?
    * Wenn ja, dann wird der Counter *Account.extension.AnzahlBeurlaubungen* um 1 erhöht.

## Validierung / Fehlerbehandlung
* Bei Neuaufnahme (lt. Operation-Parameter) muss das Feld *AnzahlVerlegungen* nach Ausführen der Operation $verlegen den Wert `1` aufweisen und das Feld *AnzahlBeurlaubungen* den Wert `0`.
* Es kann immer nur einen MopedTransferEncounter für den jeweiligen Fall geben der *partOf* eines MopedEncounters mit der *aufnahmezahl* ist und den Status *in-progress* hat.
* Wenn es sich um eine Neuaufnahme (lt. Operation-Parameter) handelt, kann es keine Abgangsart (Operation-Parameter) geben.

## Weitere Hinweise
* Hinweis 1: LKF 4.2.16 Neugeborenes
  * Ja (Alter zum Zugangszeitpunkt auf die Abteilung <28 Tage)
  * Nein (Alter zum Zugangszeitpunkt auf die Abteilung >=28 Tage)
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
* Hinweis 3: Der Counter für AnzahlVerlegungen wird auch im Falle einer Beurlaubung erhöht, bei der eine reguläre Verlegung-Operation aufgerufen wird.

## Annahmen an das BeS
* Es wurde vorab geprüft, ob das `system` des Parameters `aufnahmezahl` dem GDA entspricht, der die Operation aufruft. Somit ist sichergestellt, dass nur eigene Fälle verlegt werden können.
