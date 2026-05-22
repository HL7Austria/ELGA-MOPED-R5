Profile: AtMopedEncounterAufenthaltStationaerBasis
Parent: AtMopedEncounterAufenthaltBesuchGenerisch
Id: at-moped-encounter-aufenthalt-stationaer-basis
Title: "AT MOPED Encounter Aufenthalt Stationär Basis Profil"
Description: "MOPED Basis Profil der Encounter Ressource für den stationären Aufenthalt"

//Invariante für die .actualPeriod.end

* admission.origin only Reference(Organization)
* admission.origin ^short = "LKF: Zugewiesen von – Krankenanstaltennummer"
* admission.destination only Reference(Organization)
//Invariante für zwingend sofern ein Transfer vorliegt bei "Zuweisung von/an"
* admission.destination ^short = "LKF: Zugewiesen an – Krankenanstaltennummer"

* admission.dischargeDisposition from EntlassungsartSVS (required)

* class[Behandlungsart].coding = BehandlungsartCS#S
* class[Aufnahmeart2] 0..1

* admission.extension[aufnahmeart] 1..1
* extension contains TageOhneKostenbeitrag named TageOhneKostenbeitrag 0..1
* extension[TageOhneKostenbeitrag] ^short = "KaOrg: Anzahl der Tage, für welche kein Kostenbeitrag seitens der Krankenanstalt eingehoben wurde"
* insert legacyMapping(extension[TageOhneKostenbeitrag], KaOrg, Anzahl der Tage für welche kein Kostenbeitrag seitens der Krankenanstalt eingehoben wurde)
* insert ShallPopulateObligation(extension[TageOhneKostenbeitrag], MopedKAActor)


