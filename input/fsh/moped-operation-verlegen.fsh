Instance: MOPEDPatientVerlegen
InstanceOf: OperationDefinition
Title: "MOPED Patient $verlegen (POC)"
Description: """
Legende: ~~durchgestrichen~~ heißt, dass es für den IG zwar bedacht wird, für den ersten POC jedoch nicht relevant ist.

**Wer ruft diese Operation in welchem Zusammenhang auf?**

Die Operation wird vom Akteur Krankenhaus (KH) aufgerufen. Die $verlegen Operation wird aufgerufen, wenn ein(e) Patient*in auf eine andere Station verlegt wird. Auch initial, wenn ein Patient auf eine bestimmte Station aufgenommen wird, wird diese Operation aufgerufen (dies passiert automatisch im Zuge der Operation $aufnehmen).

**Voraussetzungen für den Aufruf**

* Account-Status: `Aufnahme in Arbeit` oder `Aufnahme freigegeben`

**Detaillierte Business-Logik**

1. Suche des MOPEDEncounter: Der MOPEDEncounter mit der jeweiligen *aufnahmezahl* lt. Operation-Parameter wird gesucht
2. Neuer Transfer Encounter:
  * Ein neuer MOPEDTransferEncounter wird vorbereitet
  * *MOPEDTransferEncounter.partOf* referenziert den MOPEDEncounter aus Schritt 1.
  * *MOPEDTransferEncounter.actualPeriod.start* wird mit dem *zeitpunkt* lt. Operation-Parameter befüllt.
  * *MOPEDTransferEncounter.serviceProvider* setzt eine Referenz auf die MOPEDOrganizationAbteilung mit dem jeweiligen *funktionscode* bzw. *funktionssubcode* lt. Operation-Parameter. 
  * *MOPEDTransferEncounter.Neugeborenes* wird lt. LKF-Regeln berechnet, anhand des *MOPEDEncounter.subject.birthdate* aus dem Encounter aus Schritt 1 (für Berechnugns-Details siehe Hinweis 1).
  * *MOPEDTransferEncounter.Altersgruppe* wird lt. LKF-Regeln berechnet, anhand des *MOPEDEncounter.subject.birthdate* aus dem Encounter aus Schritt 1 (für Berechnugns-Details siehe Hinweis 2).
  * *MOPEDTransferEncounter.PhysischeAnwesenheit* wird lt. Operation-Parameter befüllt.
3. Account AnzahlVerlegungen: Die Extension *Account.extension.AnzahlVerlegungen* im zur Aufnahmezahl gehöhrenden Account wird um 1 erhöht. Dies ist auch so, wenn es sich bei der Verlegung um einen Urlaub handeln sollte (siehe Hinweis 3).
4. ~~Alter Transfer Encounter:~~
  * ~~Dieser Schritt ist nur relevant, wenn es sich *nicht* um eine Neufaufnahme (lt. Operation-Parameter) handelt.~~
  * ~~Suche des alten MOPEDTransferEncounter: Mit *MOPEDTransferEncounter.partOf* einer Referenz auf den MOPEDEncounter aus Schritt 1 und den Status *in-progress*~~
  * ~~Abschließen des alten MOPEDTransferEncounter: *MOPEDTransferEncounter.status* wird auf *completed* gesetzt~~
  * ~~Endzeitpunkt des alten MOPEDTransferEncounter: *MOPEDTransferEncounter.actualPeriod.end* wird auf den *zeitpunkt* lt. Operation-Parameter gesetzt.~~
  * ~~Abgangsart vom alten MOPEDTransferEncounter: *MOPEDTransferEncounter.abgangsart* wird auf *abgangsart* lt. Operation-Parameter gesetzt.~~
5. ~~Account AnzahlBeurlaubungen:~~
  * ~~Dieser Schritt ist nur relevant, wenn es sich *nicht* um eine Neufaufnahme (lt. Operation-Parameter) handelt.~~
  * ~~War alter MOPEDTransferEncounter aus Schritt 4.2 ein Urlaub (i.e. Funktionscode `10000000`)?~~
    * ~~Wenn ja, dann wird der Counter *Account.extension.AnzahlBeurlaubungen* um 1 erhöht.~~
    
**Validierung / Fehlerbehandlung**
* Bei Neuaufnahme (lt. Operation-Parameter) muss das Feld *AnzahlVerlegungen* nach Ausführen der Operation $verlegen den Wert `1` aufweisen und das Feld *AnzahlBeurlaubungen* den Wert `0`.
* Es kann immer nur einen MOPEDTransferEncounter für den jeweiligen Fall geben der *partOf* eines MOPEDEncounters mit der *aufnahmezahl* ist und den Status *in-progress* hat. 
* Wenn es sich um eine Neuaufnahme (lt. Operation-Parameter) handelt, kann es keine Abgangsart (Operation-Parameter) geben.

**Weitere Hinweise**
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

"""

* id = "MOPED.Patient.Verlegen"
* base = "http://hl7.org/fhir/OperationDefinition/Patient-verlegen"
* comment = "TBD: was passiert, wenn eine $aufnehmen Operation mehrmals mit Status `Aufnahme in Arbeit` aufgerufen wird und damit zu mehreren MOPEDTransferEncounter führt?"
* name = "MOPED_Patient_Verlegen"
* status = #draft
* kind = #operation
* affectsState = true
* resource = #Encounter
* system = false
* type = true
* instance = false
* code = #verlegen
* parameter[+]
  * name = #aufnahmezahl
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "Der *aufnahmezahl* Parameter beinhält den eindeutigen Identifizierer für den relevanten Fall."
  * type = #Identifier
* parameter[+]
  * name = #zeitpunkt
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "Der *zeitpunkt* Parameter definiert zu welchem Zeitpunkt die Verlegung stattfindet."
  * type = #dateTime
* parameter[+]
  * name = #funktionscode
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "Der *funktionscode* Parameter definiert auf welchen Funktionscode die Verlegung stattfindet."
  * type = #string
* parameter[+]
  * name = #funktionssubcode
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "Der *funktionssubcode* Parameter definiert auf welchen Funktionssubcode die Verlegung stattfindet."
  * type = #string
* parameter[+]
  * name = #pysischeAnwesenheit
  * use = #in 
  * min = 0
  * max = "1"
  * documentation = "Der *physischeAnwesenheit* Parameter definiert ob der Patient physisch anwesend ist oder nicht."
  * type = #boolean
* parameter[+]
  * name = #neuaufnahme
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "Der *neuaufnahme* Parameter definiert ob es sich bei der Verlegung um die initiale Aufnahme des Patienten auf eine bestimmte Station handelt."
  * type = #boolean
* parameter[+]
  * name = #abgangsart
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "Der *abgangsart* Parameter definiert die Abgangsart des Patienten vom bisher aktuellen MOPEDTransferEncounter."
  * type = #code
  * binding[+]
    * strength = #required
    * valueSet = "moped-abgangsart-valueset"
* parameter[+]
  * name = #return
  * use = #out
  * min = 1
  * max = "1"
  * documentation = "Der *return* Parameter gibt Auskunft über den Erfolg der Operation."
  * type = #Resource
  * targetProfile[+] = Canonical(OperationOutcome)