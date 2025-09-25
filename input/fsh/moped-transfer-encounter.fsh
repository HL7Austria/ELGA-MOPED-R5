Profile: MopedTransferEncounter
Parent: Encounter
Description: "MOPED Profil der Encounter Ressource für die Verlegung innerhalb oder zwischen Krankenanstalten"
Title: "MOPED TransferEncounter"

* subject only Reference(HL7ATCorePatient)
* subject 1..1
* serviceProvider only Reference(MopedOrganizationAbteilung)
* serviceProvider 1..1
* actualPeriod ^short = "Zugangs- und Abgangsdatum"
* actualPeriod.start 1..1

* type = MopedEncounterTypesCS#TENC
* type 1..
* admission.extension contains Altersgruppe named Altersgruppe 1..1 MS
* admission.extension[Altersgruppe].extension[beiZugang].value[x] 1..1
* admission.extension[Altersgruppe].extension[beiZugang] 1..1
* partOf only Reference (MopedEncounter)
* partOf 1..1