Profile: MopedAufnahmeComposition
Parent: MopedComposition
Description: "MOPED Profil der Composition Ressource nach $aufnehmen"
Title: "MOPED Aufnahme Composition"
* ^experimental = true
* status = #partial
* section[MopedEncounter].entry 1..1


* obeys moped-erfassen-TBD
// Leistung/Diagnose muss nach dem Aufnahmedatum sein
Invariant: moped-erfassen-TBD
Severity: #error
Description: "TBD"
Expression: ""