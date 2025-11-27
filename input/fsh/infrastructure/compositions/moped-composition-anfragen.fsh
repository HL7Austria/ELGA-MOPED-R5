Profile: MopedAnfragenComposition
Parent: MopedComposition
Description: "MOPED Profil der Composition Ressource nach $anfragen"
Title: "MOPED Anfragen Composition"
* ^experimental = true
* status = #partial
* section[zustaendigeSV] 1..1
* section[zustaendigeSV].entry 1..
* section[VAERequests] 1..1
* section[VAERequests].entry 1..


* obeys moped-anfragen-TBD

Invariant: moped-anfragen-TBD
Severity: #error
Description: "TBD"
Expression: ""

//eine Verlängerung kann es nur dann geben, wenn die vorherige Response befristet war also ein preAuthPeriod.end hat
