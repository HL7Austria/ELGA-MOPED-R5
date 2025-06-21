Profile: MopedEntlassenAvisoComposition
Parent: MopedComposition
Description: "MOPED Profil der Composition Ressource nach $entlassen bei Entlassung Aviso"
Title: "MOPED Entlassung Aviso Composition"
* ^experimental = true
* status = #partial
* section[MopedEncounter].entry 1..1
* section[TransferEncounter].entry 1..
* section[besuchteAbteilungen].entry 1..

//Invarianten:
//alle TENC nach Aufnahmedatum
//TBD: ob alle abgeschlossen sein müssen hängt von der Definiton von Aviso ab: je nachdem, ob danach noch Verlegungen aktualisiert werden dürfen
* obeys moped-entlassen-aviso-TBD

Invariant: moped-entlassen-aviso-TBD
Severity: #error
Description: "TBD"
Expression: ""
