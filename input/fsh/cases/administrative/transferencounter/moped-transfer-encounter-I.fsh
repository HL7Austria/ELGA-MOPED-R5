Profile: MopedTransferEncounterI
Parent: MopedTransferEncounterS
Description: "MOPED Profil der Encounter Ressource für die Verlegung auf Intensivstationen"
Title: "MOPED TransferEncounter Intensiv"

//TBD: ggf. Regex von datetime damit Uhrzeit auch vorhanden ist und nicht nur Datum
* actualPeriod 1..1
* actualPeriod.start 1..1

* obeys moped-TENC-status-entweder-in-progress-oder-completed
* obeys moped-verlegen-intensiv-verpflichtendes-abgangsdatum
* obeys moped-verlegen-intensiv-verpflichtende-abgangsart

Invariant: moped-TENC-status-entweder-in-progress-oder-completed
Severity: #error
Description: "Der TENC status muss entweder in-progress oder completed sein"
Expression: "" 

Invariant: moped-verlegen-intensiv-verpflichtendes-abgangsdatum
Severity: #error
Description: "Wenn der TENC.status complete ist, muss es das Abgangsdatum befüllt sein"
Expression: "" 

Invariant: moped-verlegen-intensiv-verpflichtende-abgangsart
Severity: #error
Description: "Wenn der TENC.status complete ist, muss die Abgangsart (dischargeDisposition) befüllt sein"
Expression: ""