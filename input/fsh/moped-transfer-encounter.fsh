Profile: MOPEDTransferEncounter
Parent: Encounter
Description: "MOPED Profil der Encounter Ressource für die Verlegung innerhalb oder zwischen Krankenanstalten"

* subject only Reference(HL7ATCorePatient)
* serviceProvider only Reference(MOPEDOrganizationAbteilung)

* actualPeriod ^short = "Zugangs- und Abgangsdatum"

* extension contains physischeAnwesenheit named physischeAnwesenheit 0..1

* admission.dischargeDisposition ^short = "Abgangsart"
* admission.dischargeDisposition from $Abgangsart (required)

* partOf only Reference (MOPEDEncounter)
