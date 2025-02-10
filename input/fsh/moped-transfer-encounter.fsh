Profile: MopedTransferEncounter
Parent: Encounter
Description: "MOPED Profil der Encounter Ressource für die Verlegung innerhalb oder zwischen Krankenanstalten"

* subject only Reference(HL7ATCorePatient)
* serviceProvider only Reference(MopedOrganizationAbteilung)

* actualPeriod ^short = "Zugangs- und Abgangsdatum"

* extension contains PhysischeAnwesenheit named PhysischeAnwesenheit 0..1
* extension contains Altersgruppe named Altersgruppe 0..1
* extension contains Neugeborenes named Neugeborenes 0..1

* admission.dischargeDisposition ^short = "Abgangsart"
* admission.dischargeDisposition from Abgangsart (required)

* partOf only Reference (MopedEncounter)
