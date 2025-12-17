Profile: MopedTransferEncounter
Parent: Encounter
Description: "MOPED Profil der Encounter Ressource für die Verlegung innerhalb oder zwischen Krankenanstalten"
Title: "MOPED TransferEncounter"

* insert ShallPopulateObligation(status, MopedKHActor)
* insert MopedHandleObligation(status)
* subject only Reference(MopedPatient)
* subject 1..1
* insert MopedHandleObligation(subject)
* serviceType ^slicing.rules = #open
* serviceType ^slicing.discriminator.type = #profile
//change to #value and resolve.type once bug is fixed
* serviceType ^slicing.discriminator.path = "reference.resolve()"
* serviceType ^slicing.ordered = false
* serviceType contains MopedServiceType 1..1
* serviceType[MopedServiceType] ^short = "LKF: Hauptkostenstelle – Funktionscode/Fachgebiet; KaOrg: Funktionscode der Abteilung lt. LKF; KaOrg: Funktionssubcode der Abteilung lt. LKF; KaOrg: Abteilung - Funktionscode der Ambulanz; KaOrg: Abteilung - Subcode"
* serviceType[MopedServiceType] only CodeableReference(MopedKHOrganisationseinheit)
* insert ShallPopulateObligation(serviceType[MopedServiceType], MopedKHActor)
* participant ^slicing.rules = #open
* participant ^slicing.discriminator.type = #value
* participant ^slicing.discriminator.path = "type"
* participant ^slicing.ordered = false
* participant contains FachlichZustaendigeOrganisationseinheit 0..1 and PflegerischZustaendigeOrganisationseinheit 0..1
* participant[FachlichZustaendigeOrganisationseinheit] ^short = "LKF: Hauptkostenstelle – Fachlicher Funktionscode"
* participant[FachlichZustaendigeOrganisationseinheit].actor only Reference(MopedKHOrganisationseinheit)
* participant[FachlichZustaendigeOrganisationseinheit].type = MopedEncounterParticipantTypesCS#fachlich
* insert ShallPopulateObligation(participant[FachlichZustaendigeOrganisationseinheit], MopedKHActor)
* participant[PflegerischZustaendigeOrganisationseinheit] ^short = "LKF: Hauptkostenstelle – Pflegerischer Funktionscode"
* participant[PflegerischZustaendigeOrganisationseinheit].actor only Reference(MopedKHOrganisationseinheit)
* participant[PflegerischZustaendigeOrganisationseinheit].type = MopedEncounterParticipantTypesCS#pflegerisch
* insert ShallPopulateObligation(participant[PflegerischZustaendigeOrganisationseinheit], MopedKHActor)

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
