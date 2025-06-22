Profile: MopedErfassenComposition
Parent: MopedComposition
Description: "MOPED Profil der Composition Ressource nach $erfassen"
Title: "MOPED Erfassen Composition"
* ^experimental = true
* status = #partial
* section[MopedEncounter].entry 1..1


* obeys moped-erfassen-TBD
* obeys moped-erfassen-stationaer-leistung-z-seitenlokalisation
* obeys moped-erfassen-entweder-funktionscode-oder-KANummer-extern
// Leistung/Diagnose muss nach dem Aufnahmedatum sein
Invariant: moped-erfassen-TBD
Severity: #error
Description: "TBD"
Expression: ""

Invariant: moped-erfassen-stationaer-leistung-z-seitenlokalisation
Severity: #error
Description: "Bei allen stationären Fällen muss bei den Leistungen verpflichtend die Seitenlokalistion befüllt werden."
Expression: ""

Invariant: moped-erfassen-entweder-funktionscode-oder-KANummer-extern
Severity: #error
Description: "Entweder der Funktionscode leistungserbringend oder die KANummer leistungserbringend muss befüllt sein aber nicht beides. (KANummer nur bei extern erbrachten Leistungen)."
Expression: ""