Profile: MopedTransferEncounterS
Parent: MopedTransferEncounter
Description: "MOPED Profil der Encounter Ressource für eine stationäre Verlegung"
Title: "MOPED TransferEncounter Stationär"

* admission.extension[Altersgruppe].extension[neugeborenes] 1..1
* admission.extension[Altersgruppe].extension[neugeborenes].value[x] 1..1
* admission.extension[Altersgruppe].extension[neugeborenes].value[x] ^short = "LKF: Neugeborenes"
* insert legacyMapping(admission.extension[Altersgruppe].extension[neugeborenes].value[x], LKF, [[Neugeborenes]])
* insert ShallPopulateObligation(admission.extension[Altersgruppe].extension[neugeborenes].value[x], MopedKHActor)

