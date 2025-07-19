Profile: MopedWechselnComposition
Parent: MopedComposition
Description: "MOPED Profil der Composition Ressource nach $wechseln"
Title: "MOPED Wechseln Composition"
* ^experimental = true
* status = #partial
* section[zustaendigeSV] 1..1
* section[zustaendigeSV].entry 1..1
* section[Coverages] 1..1
* section[Coverages].entry 1..1
* section[Hauptversicherter] 0..1
* section[Hauptversicherter].entry 1..1



* obeys moped-wechseln-TBD

Invariant: moped-wechseln-TBD
Severity: #error
Description: "TBD"
Expression: ""