Profile: AtMopedEncounterBewegungIntensivBasis
Parent: AtMopedEncounterBewegungStationaerBasis
Id: at-moped-encounter-bewegung-intensiv-basis
Title: "AT MOPED Encounter Bewegung Intensiv Basis Profil"
Description: "MOPED Profil der Encounter Ressource für die Verlegung auf Intensivstationen"

//TBD actualPeriod.start Uhrzeit verpflichtend machen

* obeys moped-BENC-status-entweder-in-progress-oder-completed
* obeys moped-verlegen-intensiv-verpflichtendes-abgangsdatum
* obeys moped-verlegen-intensiv-verpflichtende-abgangsart

Invariant: moped-BENC-status-entweder-in-progress-oder-completed
Severity: #error
Description: "Der BENC status muss entweder in-progress oder completed sein"
Expression: "" 

Invariant: moped-verlegen-intensiv-verpflichtendes-abgangsdatum
Severity: #error
Description: "Wenn der BENC.status complete ist, muss es das Abgangsdatum befüllt sein"
Expression: "" 

Invariant: moped-verlegen-intensiv-verpflichtende-abgangsart
Severity: #error
Description: "Wenn der BENC.status complete ist, muss die Abgangsart (dischargeDisposition) befüllt sein"
Expression: ""