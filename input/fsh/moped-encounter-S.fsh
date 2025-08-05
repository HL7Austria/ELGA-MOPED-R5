Profile: MopedEncounterS
Parent: MopedEncounter
Description: "MOPED Profil der Encounter Ressource für die Krankenanstaltenaufnahme und Entlassung im stationären Bereich"
Title: "MOPED Encounter Stationär"

//Invariante für die .actualPeriod.end

* admission.origin only Reference(Organization)
* admission.destination only Reference(Organization)
//Invariante für zwingend sofern ein Transfer vorliegt bei "Zuweisung von/an"

* admission.dischargeDisposition from EntlassungsartSVS (required)

* class[Behandlungsart].coding = BehandlungsartCS#S "Stationär"
* class[Aufnahmeart2] 1..1

* admission.extension[aufnahmeart] 1..1
* extension contains TageOhneKostenbeitrag named TageOhneKostenbeitrag 0..1


