Profile: MopedTransferEncounter
Parent: Encounter
Description: "MOPED Profil der Encounter Ressource für die Verlegung innerhalb oder zwischen Krankenanstalten"
Title: "MOPED TransferEncounter"

* insert ShallPopulateObligation(status, MopedKHActor)
* insert MopedHandleObligation(status)
* subject only Reference(MopedPatient)
* subject 1..1
* insert MopedHandleObligation(subject)
* serviceProvider only Reference(MopedOrganizationAbteilung)
* serviceProvider 1..1
* serviceProvider ^short = "LKF: Hauptkostenstelle – Funktionscode/Fachgebiet; KaOrg: Funktionscode der Abteilung lt. LKF + Funktionssubcode der Abteilung lt. LKF bzw. Abteilung - Funktionscode der Ambulanz + Abteilung - Subcode"
* insert ShallPopulateObligation(serviceProvider, MopedKHActor)

* actualPeriod ^short = "LKF: Zugangs- und Abgangsdatum"
* actualPeriod.start 1..1
* actualPeriod.start ^short = "LKF: Hauptkostenstelle/Fachgebiet – Zugangsdatum/Kontaktdatum + Hauptkostenstelle/Fachgebiet – Zugangsuhrzeit/Kontaktuhrzeit"
* actualPeriod.end ^short = "LKF: Hauptkostenstelle – Abgangsdatum + Hauptkostenstelle – Abgangsuhrzeit"
* insert ShallPopulateObligation(actualPeriod, MopedKHActor)

* type = MopedEncounterTypesCS#TENC
* type 1..
* insert ShallPopulateObligation(type, MopedKHActor)
* admission.extension contains Altersgruppe named Altersgruppe 1..1 MS
* admission.extension[Altersgruppe].extension[beiZugang].value[x] 1..1
* admission.extension[Altersgruppe].extension[beiZugang] 1..1
* admission.extension[Altersgruppe].extension[beiZugang] ^short = "LKF: Altersgruppe bei Zugang/Kontakt"
* insert ShallPopulateObligation(admission.extension[Altersgruppe], MopedKHActor)
* admission.dischargeDisposition ^short = "LKF: Hauptkostenstelle – Abgangsart"
* insert ShallPopulateObligation(admission.dischargeDisposition, MopedKHActor)

* partOf only Reference (MopedEncounter)
* partOf 1..1
* insert MopedHandleObligation(partOf)

* subjectStatus ^short = "LKF: Physische Anwesenheit"
* insert ShallPopulateObligation(subjectStatus, MopedKHActor)
