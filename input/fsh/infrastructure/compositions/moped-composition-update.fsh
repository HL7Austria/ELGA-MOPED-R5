Profile: MopedUpdateComposition
Parent: MopedComposition
Description: "MOPED Profil der Composition Ressource nach $update"
Title: "MOPED Update Composition"
* ^experimental = true
* status = #partial
* encounter 1..1
* subject 1..1
* section[Diagnosen].entry 1..


* obeys moped-Leistung-Diagnose-erfassen-TBD
* obeys moped-erfassen-stationaer-leistung-z-seitenlokalisation
* obeys moped-erfassen-entweder-funktionscode-oder-KANummer-extern
// Leistung/Diagnose muss nach dem Aufnahmedatum sein
Invariant: moped-Leistung-Diagnose-erfassen-TBD
Severity: #error
Description: "TBD"
Expression: ""

Invariant: moped-erfassen-stationaer-leistung-z-seitenlokalisation
Severity: #error
Description: "Bei stationären Fällen muss bei Leistungen mit Leistungseinheit C verpflichtend die Seitenlokalistion befüllt werden."
Expression: ""

Invariant: moped-erfassen-entweder-funktionscode-oder-KANummer-extern
Severity: #error
Description: "Entweder der Funktionscode leistungserbringend oder die KANummer leistungserbringend muss befüllt sein aber nicht beides. (KANummer nur bei extern erbrachten Leistungen)."
Expression: ""