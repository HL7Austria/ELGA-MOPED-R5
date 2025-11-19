Profile: MopedEncounter
Parent: Encounter
Description: "MOPED Profil der Encounter Ressource für die Krankenanstaltenaufnahme und Entlassung"
Title: "MOPED Encounter"

* status from MopedEncounterStatusVS (required)
* status ^short = "Status der unter anderem auch angibt, ob es sich um eine KaOrg Avisio-Info handelt"
* insert ShallPopulateObligation(status, MopedKHActor)
* insert MopedHandleObligation(status)
* identifier ^slicing.rules = #open
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "type.coding.code"
* identifier ^slicing.ordered = false
* identifier contains Aufnahmezahl 0..1 and DatensatzID 0..1
* identifier[Aufnahmezahl] ^short = "LKF: Aufnahmezahl"
* identifier[Aufnahmezahl].type from http://terminology.hl7.org/ValueSet/v2-0203 (required)
* identifier[Aufnahmezahl].type.coding.code = #VN (exactly)
* identifier[Aufnahmezahl].assigner only Reference(KHOrganization)
* identifier[Aufnahmezahl].system 1..1
* insert ShallPopulateObligation(identifier[Aufnahmezahl], MopedKHActor)
* identifier[DatensatzID].type from http://terminology.hl7.org/ValueSet/v2-0203 (required)
* identifier[DatensatzID].type.coding.code = #ANON (exactly)
* identifier[DatensatzID] ^short = "LKF: Datensatz-ID: SHA-256 verschlüsselte Aufnahmezahl"
* insert ShallPopulateObligation(identifier[DatensatzID], MopedKHActor)

* subject only Reference(MopedPatient)
* subject 1..1
* insert MopedHandleObligation(subject)

* serviceProvider only Reference(KHOrganization)
* serviceProvider 1..1
* serviceProvider ^short = "LKF: Krankenanstaltennummer/Leistungserbringer-Stammdaten-ID"
* insert MopedHandleObligation(serviceProvider)
* actualPeriod ^short = "LKF: Aufnahme- und Entlassungsdatum"
* actualPeriod 1..1
* actualPeriod.start 1..1
* actualPeriod.start ^short = "LKF: Aufnahme-/Kontaktdatum + Aufnahme-/Kontaktuhrzeit; KaOrg: Aufnahme-/Ereignisdatum bzw. Ereignis-/Unfalldatum (initiales Aufnahmedatum) bzw. Behandlungsdatum"
* actualPeriod.end ^short = "LKF: Entlassungsdatum + Entlassungsuhrzeit; KaOrg: Entlassungsdatum"
* insert ShallPopulateObligation(actualPeriod, MopedKHActor)

* class ^slicing.rules = #open
* class ^slicing.discriminator.type = #value
* class ^slicing.discriminator.path = "coding.system"
* class ^slicing.ordered = false
* class contains Behandlungsart 1..1 and Aufnahmeart2 0..1
* class[Behandlungsart] ^short = "LKF: Behandlungsart"
* class[Behandlungsart] from BehandlungsartVS (required)
* class[Behandlungsart].coding.system = Canonical(BehandlungsartCS)
* insert ShallPopulateObligation(class[Behandlungsart], MopedKHActor)
* class[Aufnahmeart2] ^short = "LKF: Aufnahme-/Zugangsart 2"
* class[Aufnahmeart2] from Aufnahmeart2VS (required)
* class[Aufnahmeart2].coding.system = Canonical(Aufnahmeart2CS)
* insert ShallPopulateObligation(class[Aufnahmeart2], MopedKHActor)

* type = MopedEncounterTypesCS#ENC
* type 1..
* insert ShallPopulateObligation(type, MopedKHActor)

* reason ^slicing.rules = #open
* reason ^slicing.discriminator.type = #value
* reason ^slicing.discriminator.path = "use.coding.code"
* reason ^slicing.ordered = false
* reason contains Ursache 0..1
* reason[Ursache].use from http://hl7.org/fhir/ValueSet/encounter-reason-use (required)
* reason[Ursache].use.coding.code = #RV (exactly)
* reason[Ursache].value from UrsacheVS (required)
* reason[Ursache] ^short = "LKF: Ursache für Behandlung; KaOrg: Ursache der Behandlung"
* insert ShallPopulateObligation(reason[Ursache], MopedKHActor)


* admission.dischargeDisposition ^short = "LKF: Entlassungs-/Abgangsart; KaOrg: Entlassungsschlüssel/K09 Entlassungsart"
* insert ShallPopulateObligation(admission.dischargeDisposition, MopedKHActor)
* admission.origin ^short = "LKF: Zugewiesen von – Krankenanstaltennummer; KaOrg: Überweisende Stelle"
* insert ShallPopulateObligation(admission.origin, MopedKHActor)
* admission.destination ^short = "LKF: Zugewiesen an – Krankenanstaltennummer"
* insert ShallPopulateObligation(admission.destination, MopedKHActor)
* admission.extension contains Aufnahmeart named aufnahmeart 0..1
* admission.extension[Aufnahmeart] ^short = "LKF: Aufnahme-/Zugangsart 1; KaOrg: Ereignisart/K09 Aufnahmeart"
* insert ShallPopulateObligation(admission.extension[Aufnahmeart], MopedKHActor)
* admission.extension contains EncModeOfArrival named Transportart 0..1
* admission.extension[Transportart].valueCoding from TransportartVS
* admission.extension[Transportart] ^short = "LKF: Transportart"
* insert ShallPopulateObligation(admission.extension[Transportart], MopedKHActor)

* extension contains Unfalldatum named Unfalldatum 0..1
* insert ShallPopulateObligation(extension[Unfalldatum], MopedKHActor)

//Invariante: verpflichtend bei Aufnahmeart 1, 7 oder wenn VERDAU 1 - 5
* extension contains Altersgruppe named Altersgruppe 0..1
* extension[Altersgruppe] ^short = "LKF: Altersgruppe bei Entlassung/Kontakt"
* insert ShallPopulateObligation(extension[Altersgruppe], MopedKHActor)
//Invariante -> Altersgruppe bei Entlassung nach $entlassen verpflichtend