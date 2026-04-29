Profile: MopedEncounter
Parent: Encounter
Description: "MOPED Profil der Encounter Ressource für die Krankenanstaltenaufnahme und Entlassung"
Title: "MOPED Encounter"
* insert MappingHeaderEinfuegen()
* status from MopedEncounterStatusVS (required)
* status ^short = "Status der unter anderem auch angibt, ob es sich um eine KaOrg Avisio-Info handelt"
* insert legacyMapping(status, KaOrg, Avisio-Info)
* insert ShallPopulateObligation(status, MopedKAActor)
* insert MopedHandleObligation(status)
* identifier ^slicing.rules = #open
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "type.coding.code"
* identifier ^slicing.ordered = false
* identifier contains Aufnahmezahl 0..1 and DatensatzID 0..1
* identifier[Aufnahmezahl].value ^short = "LKF: Aufnahmezahl; KaOrg: Aufnahmezahl"
* insert legacyMapping(identifier[Aufnahmezahl].value, LKF, Aufnahmezahl)
* insert legacyMapping(identifier[Aufnahmezahl].value, KaOrg, Aufnahmezahl)
* insert ShallPopulateObligation(identifier[Aufnahmezahl].value, MopedKAActor)
* identifier[Aufnahmezahl].type from http://terminology.hl7.org/ValueSet/v2-0203 (required)
* identifier[Aufnahmezahl].type.coding.code = #VN (exactly)
* identifier[Aufnahmezahl].assigner only Reference(KAOrganization)
* identifier[Aufnahmezahl].system 1..1
* insert ShallPopulateObligation(identifier[Aufnahmezahl], MopedKAActor)
* identifier[DatensatzID].type from http://terminology.hl7.org/ValueSet/v2-0203 (required)
* identifier[DatensatzID].type.coding.code = #ANON (exactly)
* identifier[DatensatzID] ^short = "LKF: Datensatz-ID; SHA-256 verschlüsselte Aufnahmezahl"
* insert legacyMapping(identifier[DatensatzID].value, LKF, Datensatz-ID)
* insert ShallPopulateObligation(identifier[DatensatzID].value, MopedKAActor)

* subject only Reference(MopedPatient)
* subject 1..1
* insert MopedHandleObligation(subject)

* serviceProvider only Reference(KAOrganization)
* serviceProvider 1..1
* insert MopedHandleObligation(serviceProvider)
* actualPeriod ^short = "LKF: Aufnahme- und Entlassungsdatum"
* actualPeriod 1..1
* actualPeriod.start 1..1
* actualPeriod.start ^short = "LKF: Aufnahme-/Kontaktdatum; LKF: Aufnahme-/Kontaktuhrzeit; KaOrg: Aufnahme-/Ereignisdatum; KaOrg: Ereignis-/Unfalldatum (initiales Aufnahmedatum); KaOrg: Behandlungsdatum"
* insert legacyMapping(actualPeriod.start, LKF, Aufnahme-/Kontaktdatum)
* insert legacyMapping(actualPeriod.start, LKF, Aufnahme-/Kontaktuhrzeit)
* insert legacyMapping(actualPeriod.start, KaOrg, Aufnahme-/Ereignisdatum)
* insert legacyMapping(actualPeriod.start, KaOrg, [[Ereignis-/Unfalldatum (initiales Aufnahmedatum)]])
* insert legacyMapping(actualPeriod.start, KaOrg, Behandlungsdatum)
* insert ShallPopulateObligation(actualPeriod.start, MopedKAActor)
* actualPeriod.end ^short = "LKF: Entlassungsdatum; LKF: Entlassungsuhrzeit; KaOrg: Entlassungsdatum"
* insert legacyMapping(actualPeriod.end, LKF, Entlassungsdatum)
* insert legacyMapping(actualPeriod.end, LKF, Entlassungsuhrzeit)
* insert legacyMapping(actualPeriod.end, KaOrg, Entlassungsdatum)
* insert ShallPopulateObligation(actualPeriod.end, MopedKAActor)

* class ^slicing.rules = #open
* class ^slicing.discriminator.type = #value
* class ^slicing.discriminator.path = "coding.system"
* class ^slicing.ordered = false
* class contains Behandlungsart 1..1 and Aufnahmeart2 0..1
* class[Behandlungsart] ^short = "LKF: Behandlungsart"
* insert legacyMapping(class[Behandlungsart], LKF, Behandlungsart)
* class[Behandlungsart] from BehandlungsartVS (required)
* class[Behandlungsart].coding.system = Canonical(BehandlungsartCS)
* insert ShallPopulateObligation(class[Behandlungsart], MopedKAActor)
* class[Aufnahmeart2] ^short = "LKF: Aufnahme-/Zugangsart 2"
* insert legacyMapping(class[Aufnahmeart2], LKF, Aufnahme-/Zugangsart 2)
* class[Aufnahmeart2] from Aufnahmeart2VS (required)
* class[Aufnahmeart2].coding.system = Canonical(Aufnahmeart2CS)
* insert ShallPopulateObligation(class[Aufnahmeart2], MopedKAActor)

* type = MopedEncounterTypesCS#ENC
* type 1..
* insert ShallPopulateObligation(type, MopedKAActor)

* reason ^slicing.rules = #open
* reason ^slicing.discriminator.type = #value
* reason ^slicing.discriminator.path = "use.coding.code"
* reason ^slicing.ordered = false
* reason contains Ursache 0..1
* reason[Ursache].use from $EncounterReasonUse (required)
* reason[Ursache].use.coding.code = #RV (exactly)
* reason[Ursache].value from UrsacheVS (required)
* insert ShallPopulateObligation(reason[Ursache].value, MopedKAActor)
* reason[Ursache] ^short = "LKF: Ursache für Behandlung; KaOrg: Ursache der Behandlung"
* insert legacyMapping(reason[Ursache].value, LKF, Ursache für Behandlung)
* insert legacyMapping(reason[Ursache].value, KaOrg, Ursache der Behandlung)
* insert ShallPopulateObligation(reason[Ursache], MopedKAActor)


* admission.dischargeDisposition ^short = "LKF: Entlassungs-/Abgangsart; KaOrg: Entlassungsschlüssel; KaOrg: Entlassungsart"
* insert legacyMapping(admission.dischargeDisposition, LKF, Entlassungs-/Abgangsart)
* insert legacyMapping(admission.dischargeDisposition, KaOrg, Entlassungsschlüssel)
* insert legacyMapping(admission.dischargeDisposition, KaOrg, Entlassungsart)
* insert ShallPopulateObligation(admission.dischargeDisposition, MopedKAActor)
* admission.origin ^short = "LKF: Zugewiesen von – Krankenanstaltennummer; KaOrg: Überweisende Stelle - Vertragspartnernummer; KaOrg: Überweisende Stelle - Name; KaOrg: Länderkennzeichen der überweisenden Stelle; KaOrg: Überweisende Stelle - Postleitzahl; KaOrg: Überweisende Stelle - Ort;"
* insert legacyMapping(admission.origin, LKF, Zugewiesen von – Krankenanstaltennummer)
* insert legacyMapping(admission.origin, KaOrg, Überweisende Stelle - Vertragspartnernummer)
* insert legacyMapping(admission.origin, KaOrg, Überweisende Stelle - Name)
* insert legacyMapping(admission.origin, KaOrg, Länderkennzeichen der überweisenden Stelle)
* insert legacyMapping(admission.origin, KaOrg, Überweisende Stelle - Postleitzahl)
* insert legacyMapping(admission.origin, KaOrg, Überweisende Stelle - Ort)
* insert ShallPopulateObligation(admission.origin, MopedKAActor)
* admission.destination ^short = "LKF: Zugewiesen an – Krankenanstaltennummer"
* insert legacyMapping(admission.destination, LKF, Zugewiesen an – Krankenanstaltennummer)
* insert ShallPopulateObligation(admission.destination, MopedKAActor)
* admission.extension contains Aufnahmeart named aufnahmeart 0..1
* admission.extension[Aufnahmeart] ^short = "LKF: Aufnahme-/Zugangsart 1; KaOrg: Ereignisart; KaOrg: Aufnahmeart"
* insert legacyMapping(admission.extension[Aufnahmeart], LKF, Aufnahme-/Zugangsart 1)
* insert legacyMapping(admission.extension[Aufnahmeart], KaOrg, Ereignisart)
* insert legacyMapping(admission.extension[Aufnahmeart], KaOrg, Aufnahmeart)
* insert ShallPopulateObligation(admission.extension[Aufnahmeart], MopedKAActor)
* admission.extension contains EncModeOfArrival named Transportart 0..1
* admission.extension[Transportart].valueCoding from TransportartVS
* admission.extension[Transportart] ^short = "LKF: Transportart"
* insert legacyMapping(admission.extension[Transportart], LKF, Transportart)
* insert ShallPopulateObligation(admission.extension[Transportart], MopedKAActor)

//Invariante: verpflichtend bei Aufnahmeart 1, 7 oder wenn VERDAU 1 - 5
* extension contains Altersgruppe named Altersgruppe 0..1
* extension[Altersgruppe] ^short = "LKF: Altersgruppe bei Entlassung/Kontakt"
* insert legacyMapping(extension[Altersgruppe], LKF, Altersgruppe bei Entlassung/Kontakt)
* insert ShallPopulateObligation(extension[Altersgruppe], MopedKAActor)
//Invariante -> Altersgruppe bei Entlassung nach $entlassen verpflichtend