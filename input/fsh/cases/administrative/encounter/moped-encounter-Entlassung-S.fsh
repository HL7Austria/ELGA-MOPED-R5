Profile: MopedEncounterEntlassungS
Parent: MopedEncounterS
Description: "MOPED Profil der Encounter Ressource für die Entlassung im stationären Bereich"
Title: "MOPED Encounter Entlassung Stationär"

* status from MopedEncounterStatusEntlassungVS (required)
* actualPeriod.end 1..1

//Invariante für zwingend sofern ein Transfer vorliegt bei "Zuweisung von/an"

* admission.dischargeDisposition from EntlassungsartSVS (required)
* admission.dischargeDisposition 1..1

