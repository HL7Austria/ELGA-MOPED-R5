Profile: MopedEncounter
Parent: Encounter
Description: "MOPED Profil der Encounter Ressource für die Krankenanstaltenaufnahme und Entlassung"
Title: "MOPED Encounter"


* identifier ^slicing.rules = #open
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "type.coding.code"
* identifier ^slicing.ordered = false
* identifier contains Aufnahmezahl 0..1 and DatensatzID 0..1
* identifier[Aufnahmezahl].type from http://terminology.hl7.org/ValueSet/v2-0203 (required)
* identifier[Aufnahmezahl].type.coding.code = #VN (exactly)
* identifier[Aufnahmezahl].assigner only Reference(HL7ATCoreOrganization)
* identifier[Aufnahmezahl].system 1..1
* identifier[DatensatzID].type from http://terminology.hl7.org/ValueSet/v2-0203 (required)
* identifier[DatensatzID].type.coding.code = #ANON (exactly)
* identifier[DatensatzID] ^short = "SHA-256 verschlüsselte Aufnahmezahl"
* account only Reference(MopedAccount)
* account 0..1

* subject only Reference(HL7ATCorePatient)
* admission.origin only Reference(Organization)
* admission.destination only Reference(Organization)
* serviceProvider only Reference(HL7ATCoreOrganization)
* actualPeriod ^short = "Aufnahme- und Entlassungsdatum"

* admission.dischargeDisposition ^short = "Entlassungsart"
* admission.dischargeDisposition from EntlassungsartVS (required)


* class ^slicing.rules = #open
* class ^slicing.discriminator.type = #value
* class ^slicing.discriminator.path = "coding.system"
* class ^slicing.ordered = false
* class contains Behandlungsart 0..1 and Aufnahmeart2 0..1
* class[Behandlungsart] ^short = "Behandlungsart"
* class[Behandlungsart] from BehandlungsartVS (required)
* class[Behandlungsart].coding.system = Canonical(BehandlungsartCS)
* class[Aufnahmeart2] ^short = "Aufnahmeart2"
* class[Aufnahmeart2] from Aufnahmeart2VS (required)
* class[Aufnahmeart2].coding.system = Canonical(Aufnahmeart2CS)

* type = MopedEncounterTypesCS#ENC

* reason ^slicing.rules = #open
* reason ^slicing.discriminator.type = #value
* reason ^slicing.discriminator.path = "use.coding.code"
* reason ^slicing.ordered = false
* reason contains Ursache 0..1
* reason[Ursache].use from http://hl7.org/fhir/ValueSet/encounter-reason-use (required)
* reason[Ursache].use.coding.code = #RV (exactly)
* reason[Ursache].value from UrsacheVS (required)
* reason[Ursache] ^short = "Ursache für Behandlung"

* admission.extension contains Aufnahmeart named aufnahmeart 0..1
* admission.extension contains Transportart named transportart 0..1
* extension contains Unfalldatum named Unfalldatum 0..1