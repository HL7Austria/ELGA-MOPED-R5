Profile: MopedTransferEncounter
Parent: Encounter
Description: "MOPED Profil der Encounter Ressource für die Verlegung innerhalb oder zwischen Krankenanstalten"
Title: "MOPED TransferEncounter"

* subject only Reference(HL7ATCorePatient)
* serviceProvider only Reference(MopedOrganizationAbteilung)

* actualPeriod ^short = "Zugangs- und Abgangsdatum"

* subjectStatus from AnwesenheitsartVS (required)

* type = MopedEncounterTypesCS#TENC
* admission.extension contains Altersgruppe named Altersgruppe 0..1 MS

* admission.dischargeDisposition ^short = "Abgangsart"
* admission.dischargeDisposition from AbgangsartVS (required)

* partOf only Reference (MopedEncounter)
* partOf 1..1