Profile: MopedVerlegenComposition
Parent: MopedComposition
Description: "MOPED Profil der Composition Ressource nach $verlegen"
Title: "MOPED Verlegen Composition"
* ^experimental = true
* status = #partial
* section[TransferEncounter].entry 2..
//Die $verlegen Compositon kommt nur nach tatsächlichen Verlegungen zur Anwendung und nicht nach der initialen Aufnahme auf eine Station => daher Kardinalität >=2
* section[besuchteAbteilungen].entry 2..


* obeys moped-verlegen-TBD

Invariant: moped-verlegen-TBD
Severity: #error
Description: "TBD"
Expression: ""

//Der status des neuen TENC muss in-progress sein