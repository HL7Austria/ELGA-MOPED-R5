Profile: MopedTransferEncounterI
Parent: MopedTransferEncounter
Description: "MOPED Profil der Encounter Ressource für die Verlegung auf Intensivstationen"
Title: "MOPED TransferEncounter Intensiv"

* actualPeriod ^short = "Zugangs- und Abgangsdatum"
//TBD actualPeriod.start Uhrzeit verpflichtend machen
* admission.extension[Altersgruppe].extension[neugeborenes] 1..1
* admission.extension[Altersgruppe].extension[neugeborenes].value[x] 1..1


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