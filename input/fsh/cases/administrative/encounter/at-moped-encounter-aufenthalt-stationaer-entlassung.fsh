Profile: AtMopedEncounterAufenthaltStationaerEntlassung
Parent: AtMopedEncounterAufenthaltStationaerBasis
Id: at-moped-encounter-aufenthalt-stationaer-Entlassung
Title: "AT MOPED Encounter Aufenthalt Stationär Entlassung Profil"
Description: "MOPED Profil der Encounter Ressource für die Entlassung im stationären Bereich"

* status from MopedEncounterStatusEntlassungVS (required)
* actualPeriod.end 1..1

//Invariante für zwingend sofern ein Transfer vorliegt bei "Zuweisung von/an"

* admission.dischargeDisposition from EntlassungsartSVS (required)
* admission.dischargeDisposition 1..1

