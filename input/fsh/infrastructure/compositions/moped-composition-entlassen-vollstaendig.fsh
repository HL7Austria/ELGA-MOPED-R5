Profile: MopedEntlassenVollstaendigComposition
Parent: MopedComposition
Description: "MOPED Profil der Composition Ressource nach $entlassen bei Entlassung vollständig"
Title: "MOPED Entlassung vollständig Composition"
* ^experimental = true
* status = #partial
* encounter 1..1
* section[TransferEncounter].entry 1..
* section[besuchteAbteilungen].entry 1..

//Invarianten:
// alle TENC abgeschlossen
// alle TENC zwischen Aufnahmedatum und Entlassungsdatum
// TENC decken den gesamten Zeitraum ab
// es muss eine Hauptdiagnose existieren
* obeys moped-entlassen-vollstaendig-TBD

Invariant: moped-entlassen-vollstaendig-TBD
Severity: #error
Description: "TBD"
Expression: ""
