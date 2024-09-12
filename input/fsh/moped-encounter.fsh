Profile: MOPEDEncounter
Parent: Encounter
Description: "MOPED Profil der Encounter Ressource für die Krankenanstaltenaufnahme und Entlassung"


* identifier ^slicing.rules = #open
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "type.coding.code"
* identifier ^slicing.ordered = false
* identifier contains Aufnahmezahl 0..1
* identifier[Aufnahmezahl].type from https://termgit.elga.gv.at/ValueSet/hl7-at-patientidentifier (required)
* identifier[Aufnahmezahl].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203" (exactly)
* identifier[Aufnahmezahl].type.coding.code = #VN (exactly)
* identifier[Aufnahmezahl].assigner only Reference(HL7ATCoreOrganization)

* extension contains Fallnummer named Fallnummer 0..1

* subject only Reference(HL7ATCorePatient)
* admission.origin only Reference(Organization)
* admission.destination only Reference(Organization)
* serviceProvider only Reference(MOPEDOrganizationAbteilung)
* actualPeriod ^short = "Aufnahme- und Entlassungsdatum"

* admission.dischargeDisposition ^short = "Entlassungsart"
* admission.dischargeDisposition from Entlassungsart (required)


* class ^slicing.rules = #open
* class ^slicing.discriminator.type = #value
* class ^slicing.discriminator.path = "coding.code"
* class ^slicing.ordered = false
* class contains Behandlungsart 0..1 and Aufnahmeart 0..1
* class[Behandlungsart] ^short = "Behandlungsart"
* class[Behandlungsart] from Behandlungsart (required)
* class[Aufnahmeart] ^short = "Aufnahmeart"
* class[Aufnahmeart] from Aufnahmeart (required)

* reason ^slicing.rules = #open
* reason ^slicing.discriminator.type = #value
* reason ^slicing.discriminator.path = "type.coding.code"
* reason ^slicing.ordered = false
* reason contains Ursache 0..1
* reason[Ursache].use from http://hl7.org/fhir/ValueSet/encounter-reason-use (required)
* reason[Ursache].use.coding.code = #RV (exactly)
* reason[Ursache].value from UrsacheValueSet (required)
* reason[Ursache] ^short = "Ursache für Behandlung"

* diagnosis.use from https://termgit.elga.gv.at/ValueSet/lkf-diagnose-typ (required)
* diagnosis.use ^binding.description = "Code für den Typ der LKF Diagnose, der angibt ob es sich um eine Haupt- oder Nebendiagnose handelt"

* admission.extension contains Zugangsart named Zugangsart 0..1
* admission.extension contains Transportart named Transportart 0..1
* extension contains Unfalldatum named Unfalldatum 0..1