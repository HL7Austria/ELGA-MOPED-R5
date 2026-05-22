Profile: AtMopedCompositionEntlassenAviso
Parent: AtMopedCompositionGenerisch
Id: at-moped-composition-entlassen-aviso
Title: "AT MOPED Composition $entlassen Aviso Profil"
Description: "MOPED Profil der Composition Ressource nach $entlassen bei Entlassung Aviso"
* ^experimental = true
* status = #partial
* encounter 1..1
* section[Bewegungen].entry 1..
* section[besuchteAbteilungen].entry 1..

//Invarianten:
//alle BENC nach Aufnahmedatum
//TBD: ob alle abgeschlossen sein müssen hängt von der Definiton von Aviso ab: je nachdem, ob danach noch Verlegungen aktualisiert werden dürfen
* obeys moped-entlassen-aviso-TBD

Invariant: moped-entlassen-aviso-TBD
Severity: #error
Description: "TBD"
Expression: ""
