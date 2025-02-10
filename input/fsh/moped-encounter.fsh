Profile: MopedEncounter
Parent: Encounter
Title: "MOPED Encounter"
Description: "MOPED Profil der Encounter Ressource für die Krankenanstaltenaufnahme und Entlassung"


* identifier ^slicing.rules = #open
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "type.coding.code"
* identifier ^slicing.ordered = false
* identifier contains Aufnahmezahl 0..1 and DatensatzID 0..1
* identifier[Aufnahmezahl].type from https://termgit.elga.gv.at/ValueSet/hl7-at-patientidentifier (required)
* identifier[Aufnahmezahl].type.coding.code = #VN (exactly)
* identifier[Aufnahmezahl].assigner only Reference(HL7ATCoreOrganization)
* identifier[Aufnahmezahl].system 1..1
* identifier[DatensatzID].type from https://termgit.elga.gv.at/ValueSet/hl7-at-patientidentifier (required)
* identifier[DatensatzID].type.coding.code = #ANON (exactly)
* identifier[DatensatzID] ^short = "SHA-256 verschlüsselte Aufnahmezahl"
* account only Reference(MopedAccount)

* subject only Reference(HL7ATCorePatient)
* admission.origin only Reference(Organization)
* admission.destination only Reference(Organization)
* serviceProvider only Reference(MopedOrganizationAbteilung)
* actualPeriod ^short = "Aufnahme- und Entlassungsdatum"

* admission.dischargeDisposition ^short = "Entlassungsart"
* admission.dischargeDisposition from Entlassungsart (required)


* class ^slicing.rules = #open
* class ^slicing.discriminator.type = #value
* class ^slicing.discriminator.path = "coding.system"
* class ^slicing.ordered = false
* class contains Behandlungsart 0..1 and Aufnahmeart2 0..1
* class[Behandlungsart] ^short = "Behandlungsart"
* class[Behandlungsart] from Behandlungsart (required)
* class[Behandlungsart].coding.system = $Behandlungsart
* class[Aufnahmeart2] ^short = "Aufnahmeart2"
* class[Aufnahmeart2] from Aufnahmeart2 (required)
* class[Aufnahmeart2].coding.system = $Aufnahmeart2

* reason ^slicing.rules = #open
* reason ^slicing.discriminator.type = #value
* reason ^slicing.discriminator.path = "use.coding.code"
* reason ^slicing.ordered = false
* reason contains Ursache 0..1
* reason[Ursache].use from http://hl7.org/fhir/ValueSet/encounter-reason-use (required)
* reason[Ursache].use.coding.code = #RV (exactly)
* reason[Ursache].value from UrsacheValueSet (required)
* reason[Ursache] ^short = "Ursache für Behandlung"

* diagnosis.use from $LKFdiagnoseTyp (required)
* diagnosis.use ^binding.description = "Code für den Typ der LKF Diagnose, der angibt ob es sich um eine Haupt- oder Nebendiagnose handelt"

* admission.extension contains Aufnahmeart named aufnahmeart 0..1
* admission.extension contains Transportart named transportart 0..1
* extension contains Unfalldatum named Unfalldatum 0..1