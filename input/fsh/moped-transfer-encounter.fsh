Profile: MOPEDTransferEncounter
Parent: Encounter
Description: "MOPED Profil der Encounter Ressource für die Verlegung innerhalb oder zwischen Krankenanstalten"
Title: "MOPED Transfer Encounter"

* subject only Reference(HL7ATCorePatient)
* serviceProvider only Reference(MOPEDOrganizationAbteilung)

* actualPeriod ^short = "Zugangs- und Abgangsdatum"

* subjectStatus from Anwesenheitsart (required)

* admission.extension contains Altersgruppe named Altersgruppe 0..1 MS

* admission.dischargeDisposition ^short = "Abgangsart"
* admission.dischargeDisposition from Abgangsart (required)

* partOf only Reference (MOPEDEncounter)
