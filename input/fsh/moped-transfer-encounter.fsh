Profile: MopedTransferEncounter
Parent: Encounter
Description: "MOPED Profil der Encounter Ressource für die Verlegung innerhalb oder zwischen Krankenanstalten"
Title: "MOPED TransferEncounter"

* insert ShallPopulateObligation(status, MopedKHActor)
* insert MopedHandleObligation(status)
* subject only Reference(HL7ATCorePatient)
* subject 1..1
* insert MopedHandleObligation(subject)
* serviceProvider only Reference(MopedOrganizationAbteilung)
* serviceProvider 1..1
* serviceProvider ^short = "Hauptkostenstelle – Funktionscode/Fachgebiet "
* insert ShallPopulateObligation(serviceProvider, MopedKHActor)

* actualPeriod ^short = "Zugangs- und Abgangsdatum"
* actualPeriod.start 1..1
* actualPeriod.start ^short = "Hauptkostenstelle/Fachgebiet – Zugangsdatum/Kontaktdatum + Hauptkostenstelle/Fachgebiet – Zugangsuhrzeit/Kontaktuhrzeit"
* actualPeriod.end ^short = "Hauptkostenstelle – Abgangsdatum + Hauptkostenstelle – Abgangsuhrzeit"
* insert ShallPopulateObligation(actualPeriod, MopedKHActor)

* type = MopedEncounterTypesCS#TENC
* type 1..
* insert ShallPopulateObligation(type, MopedKHActor)
* admission.extension contains Altersgruppe named Altersgruppe 1..1 MS
* admission.extension[Altersgruppe].extension[beiZugang].value[x] 1..1
* admission.extension[Altersgruppe].extension[beiZugang] 1..1
* insert ShallPopulateObligation(admission.extension[Altersgruppe], MopedKHActor)
* admission.dischargeDisposition ^short = "Hauptkostenstelle – Abgangsart"
* insert ShallPopulateObligation(admission.dischargeDisposition, MopedKHActor)

* partOf only Reference (MopedEncounter)
* partOf 1..1
* insert MopedHandleObligation(partOf)

* subjectStatus ^short = "Physische Anwesenheit"
* insert ShallPopulateObligation(subjectStatus, MopedKHActor)
