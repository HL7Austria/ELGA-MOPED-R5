## Wer ruft diese Operation in welchem Zusammenhang auf?

Die Operation wird vom Akteur Krankenhaus (KH) aufgerufen. Die $aufnehmen Operation wird aufgerufen, wenn ein(e) Patient*in in das Krankenhaus aufgenommen wird.

## Voraussetzungen für den Aufruf

* TBD

## Detaillierte Business-Logik

1. Ressourcen der Transaction erstellen: FHIR Transaction ausführen, wie im Operation-Parameter *falldaten* mitgegeben. Dabei soll geprüft werden, ob bereits ein Patient mit dem jeweiligen identifier (bPK bzw. Sozialversicherungsnummer) vorliegt um Duplikate zu vermeiden. Das gleiche gilt für die anderen Ressourcen im Bundle, und kann technisch mit Hilfe von conditional References im Input-Bundle realisiert werden.
2. Composition anlegen:
   * *Composition.extension:Fondsrelevanz*: befüllen lt. Beschreibung der Werte-Ausprägungen des *Fondsrelevanz* Parameter 
   * *Composition.subject* mit dem Patienten aus dem Operation Parameter Bundle "falldaten" befüllen
   * *Composition.encounter* mit dem Encounter aus dem Operation Parameter Bundle "falldaten" befüllen
   * *Composition.section:Diagnosen.section:Aufnahmediagnosen* mit den Conditions aus dem Operation Parameter Bundle "falldaten" befüllen
   * *Composition.section:zustaendigesKH.entry* wird mit der Encounter.serviceProvider Referenz aus dem Encounter befüllt
   * *Composition.section:zustaendigerLGF.entry* wird mit *TBD* befüllt
3. Berechnung der Datensatz-ID:
  * Die Datensatz-ID wird aus der Aufnahmezahl lt. LKF Dokumentation als SHA-256 Hash berechnet und in das entsprechende Identifier-Slice des MopedEncounter eingefügt.

## Validierung / Fehlerbehandlung

TBD

## Weitere Hinweise

* Hinweis 1: Die Werte-Ausprägung des *freigeben* Parameters haben eine Auswirkung auf das Verhalten der Operation:
  * *false*: TBD
  * *true*: Die Patientenaufnahme ist vollständig und es ist zu erwarten, dass alle nötigen Felder befüllt sind. Schlägt die Validierung der *falldaten* fehl, kann die Operation nicht erfolgreich durchgeführt werden.
* Hinweis 2: Es ist nicht nötig, bei dieser Operation den GDA-Identifier als Kontext mitzugeben. Auf den GDA wird im *falldaten*-Bundle als conditional Reference mittels entsprechendem Identifier im MopedEncounter verwiesen. Somit wird auch vermieden, dass Duplikate einer GDA-Organization-Ressource am Server angelegt/verwendet werden.


## Annahmen an das BeS
* Es wurde vorab geprüft, ob das `system` des Parameters *falldaten*.encounter.identifier dem GDA entspricht, der die Operation aufruft. Somit ist sichergestellt, dass nur eigene Fälle aufgenommen werden können.