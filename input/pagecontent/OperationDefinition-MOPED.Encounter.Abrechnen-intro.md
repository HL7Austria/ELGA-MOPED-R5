## Wer ruft diese Operation in welchem Zusammenhang auf?

Die Operation wird vom Akteur Krankenhaus (KH) aufgerufen. Die $abrechnen Operation wird aufgerufen, wenn ein(e) im Zuge des Falles erbrachte Leistung abgerechnet werden soll.

## Voraussetzungen für den Aufruf

* Account-Status: `Entlassung vollständig`, `Vorläufige Meldung`, `Vorläufige Freigabe`, `LGF Korrekturaufforderung` oder `Endgültige Korrekturaufforderung`

## Detaillierte Business-Logik

1. Suche des MopedEncounter: Der MopedEncounter mit der jeweiligen *aufnahmezahl* lt. Operation-Parameter wird gesucht
2. Suche aller MopedProcedures und MopedConditions, die auf den Encounter aus Schritt 1 referenzieren
3. Suche aller MopedTransferEncounter die *partOf* den MopedEncounter aus Schritt 1 referenzieren
4. Der Claim wird lt. Regeln (siehe unten) validiert und eingespielt
5. Falls Schritt 4 erfolgreich war, wird der Encounter.account.workflowStatus (Encounter aus Schritt 1) wird auf 
   * `Vorläufige Meldung` gesetzt, falls der `abschliessen`-Parameter `false` ist
   * `Endgültige Meldung` gesetzt, falls der `abschliessen`-Parameter `true` ist
6. Alle Referenzen sollen versionsspezifisch aufgelöst werden.

## Validierung / Fehlerbehandlung

* Alle Procedures und Conditions aus Schritt 2 müssen im Claim vorkommen (referenziert unter `Claim.diagnosis` oder `Claim.procedure`)
* Alle TransferEncounter aus Schritt 3 müssen in *Claim.encounter* vorkommen
* Claim.encounter.identifier des Slice *MopedEncounter* muss der Aufnahmezahl lt. Operation-Parameter entsprechen
* Claim.status soll `draft` sein, falls der `abschließen`-Parameter = `false` ist. 
* Claim.status soll `active` sein, falls der `abschließen`-Parameter = `true` ist. 
* Claim.patient muss gleich wie Encounter.subject sein (Encounter aus Schritt 1).
* Claim.billablePeriod muss innerhalb des Encounter.actualPeriod sein (Encounter aus Schritt 1).
* Claim.insurer muss gleich sein wie Encounter.account.coverage.insurer (falls dieser befüllt ist; Encounter aus Schritt 1).
* Claim.provider muss gleich sein wie Encounter.serviceProvider (Encounter aus Schritt 1).
* Claim.insurance.coverage muss gleich sein wie Encounter.account.coverage (falls diese beüllt ist; Encounter aus Schritt 1)
* Claim.accident muss befüllt sein, falls Encounter.account.VerdachtArbeitsSchuelerunfall	!= `0` ist


## Weitere Hinweise

* Hinweis 1: Die Referenzen zu Diagnosis und Claims die bereits nach $leistungMelden am Server liegen werden mit Hilfe der logischen Identifier hergestellt

## Annahmen an das BeS
* Es wurde vorab geprüft, ob das `system` des Parameters `aufnahmezahl` dem GDA entspricht, der die Operation aufruft. Somit ist sichergestellt, dass nur eigene Fälle abgerechnet werden können.
