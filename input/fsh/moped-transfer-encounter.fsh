Profile: MopedTransferEncounter
Parent: Encounter
Title : "MOPED TransferEncounter"
Description: "MOPED Profil der Encounter Ressource für die Verlegung innerhalb oder zwischen Krankenanstalten"

* subject only Reference(HL7ATCorePatient)
* serviceProvider only Reference(MopedOrganizationAbteilung)

* actualPeriod ^short = "Zugangs- und Abgangsdatum"

* subjectStatus from Anwesenheitsart (required)

* type = MopedEncounterTypesCS#TENC
* admission.extension contains Altersgruppe named Altersgruppe 0..1 
* admission.dischargeDisposition ^short = "Abgangsart"
* admission.dischargeDisposition from Abgangsart (required)

* partOf only Reference (MopedEncounter)
* partOf 1..1
