Profile: MopedEncounterOB
Parent: Encounter
Description: "MOPED Profil der Encounter Ressource für die Krankenanstaltenaufnahme und Entlassung"
Title: "MOPED Obligation Encounter"

* insert WhitelistObligation(id)
* insert ObligationActor(id, MopedKHActor)
* insert ObligationActor(id, MopedSVActor)
* insert ObligationActor(id, MopedLGFActor)
* insert ObligationActor(id, MopedBundActor)

* insert WhitelistObligation(diagnosis)
* insert ObligationActor(diagnosis, MopedKHActor)
* insert ObligationActor(diagnosis, MopedSVActor)
* insert ObligationActor(diagnosis, MopedLGFActor)
* insert ObligationActor(diagnosis, MopedBundActor)

* insert WhitelistObligation(status)
* insert ObligationActor(status, MopedKHActor)
* insert ObligationActor(status, MopedSVActor)
* insert ObligationActor(status, MopedLGFActor)
* insert ObligationActor(status, MopedBundActor)

* identifier ^slicing.rules = #open
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "type.coding.code"
* identifier ^slicing.ordered = false
* identifier contains Aufnahmezahl 0..1 and DatensatzID 0..1
* identifier[Aufnahmezahl].type from http://terminology.hl7.org/ValueSet/v2-0203 (required)
* identifier[Aufnahmezahl].type.coding.code = #VN (exactly)
* identifier[Aufnahmezahl].assigner only Reference(HL7ATCoreOrganization)
* identifier[Aufnahmezahl].system 1..1
* insert WhitelistObligation(identifier[Aufnahmezahl])
* insert ObligationActor(identifier[Aufnahmezahl], MopedKHActor)
* insert ObligationActor(identifier[Aufnahmezahl], MopedSVActor)
* insert ObligationActor(identifier[Aufnahmezahl], MopedLGFActor)

* identifier[DatensatzID].type from http://terminology.hl7.org/ValueSet/v2-0203 (required)
* identifier[DatensatzID].type.coding.code = #ANON (exactly)
* identifier[DatensatzID] ^short = "SHA-256 verschlüsselte Aufnahmezahl"
* insert WhitelistObligation(identifier[DatensatzID])
* insert ObligationActor(identifier[DatensatzID], MopedKHActor)
* insert ObligationActor(identifier[DatensatzID], MopedLGFActor)

* account only Reference(MopedAccount)
* account 0..1
* insert WhitelistObligation(account)
* insert ObligationActor(account, MopedKHActor)
* insert ObligationActor(account, MopedSVActor)
* insert ObligationActor(account, MopedLGFActor)
* insert ObligationActor(account, MopedBundActor)

* subject only Reference(HL7ATCorePatient)
* insert WhitelistObligation(subject)
* insert ObligationActor(subject, MopedKHActor)
* insert ObligationActor(subject, MopedSVActor)
* insert ObligationActor(subject, MopedLGFActor)
* insert ObligationActor(subject, MopedBundActor)

* admission.origin only Reference(Organization)
* insert WhitelistObligation(admission.origin)
* insert ObligationActor(admission.origin, MopedKHActor)
* insert ObligationActor(admission.origin, MopedSVActor)
* insert ObligationActor(admission.origin, MopedLGFActor)
* insert ObligationActor(admission.origin, MopedBundActor)

* admission.destination only Reference(Organization)
* insert WhitelistObligation(admission.destination)
* insert ObligationActor(admission.destination, MopedKHActor)
* insert ObligationActor(admission.destination, MopedLGFActor)
* insert ObligationActor(admission.destination, MopedBundActor)

* serviceProvider only Reference(HL7ATCoreOrganization)
* insert WhitelistObligation(serviceProvider)
* insert ObligationActor(serviceProvider, MopedKHActor)
* insert ObligationActor(serviceProvider, MopedSVActor)
* insert ObligationActor(serviceProvider, MopedLGFActor)
* insert ObligationActor(serviceProvider, MopedBundActor)

* actualPeriod ^short = "Aufnahme- und Entlassungsdatum" 
* insert WhitelistObligation(actualPeriod)
* insert ObligationActor(actualPeriod, MopedKHActor)
* insert ObligationActor(actualPeriod, MopedSVActor)
* insert ObligationActor(actualPeriod, MopedLGFActor)
* insert ObligationActor(actualPeriod, MopedBundActor)

* admission.dischargeDisposition ^short = "Entlassungsart"
* admission.dischargeDisposition from EntlassungsartVS (required)
* insert WhitelistObligation(admission.dischargeDisposition)
* insert ObligationActor(admission.dischargeDisposition, MopedKHActor)
* insert ObligationActor(admission.dischargeDisposition, MopedSVActor)
* insert ObligationActor(admission.dischargeDisposition, MopedLGFActor)
* insert ObligationActor(admission.dischargeDisposition, MopedBundActor)


* class ^slicing.rules = #open
* class ^slicing.discriminator.type = #value
* class ^slicing.discriminator.path = "coding.system"
* class ^slicing.ordered = false
* class contains Behandlungsart 0..1 and Aufnahmeart2 0..1
* class[Behandlungsart] ^short = "Behandlungsart"
* class[Behandlungsart] from BehandlungsartVS (required)
* class[Behandlungsart].coding.system = Canonical(BehandlungsartCS)
* insert WhitelistObligation(class[Behandlungsart])
* insert ObligationActor(class[Behandlungsart], MopedKHActor)
* insert ObligationActor(class[Behandlungsart], MopedLGFActor)
* insert ObligationActor(class[Behandlungsart], MopedBundActor)

* class[Aufnahmeart2] ^short = "Aufnahmeart2"
* class[Aufnahmeart2] from Aufnahmeart2VS (required)
* class[Aufnahmeart2].coding.system = Canonical(Aufnahmeart2CS)
* insert WhitelistObligation(class[Aufnahmeart2])
* insert ObligationActor(class[Aufnahmeart2], MopedKHActor)
* insert ObligationActor(class[Aufnahmeart2], MopedLGFActor)
* insert ObligationActor(class[Aufnahmeart2], MopedBundActor)

* type = MopedEncounterTypesCS#ENC
* insert WhitelistObligation(type)
* insert ObligationActor(type, MopedKHActor)
* insert ObligationActor(type, MopedSVActor)
* insert ObligationActor(type, MopedLGFActor)
* insert ObligationActor(type, MopedBundActor)

* reason ^slicing.rules = #open
* reason ^slicing.discriminator.type = #value
* reason ^slicing.discriminator.path = "use.coding.code"
* reason ^slicing.ordered = false
* reason contains Ursache 0..1
* reason[Ursache].use from http://hl7.org/fhir/ValueSet/encounter-reason-use (required)
* reason[Ursache].use.coding.code = #RV (exactly)
* reason[Ursache].value from UrsacheVS (required)
* reason[Ursache] ^short = "Ursache für Behandlung"
* insert WhitelistObligation(reason[Ursache])
* insert ObligationActor(reason[Ursache], MopedKHActor)
* insert ObligationActor(reason[Ursache], MopedSVActor)
* insert ObligationActor(reason[Ursache], MopedLGFActor)
* insert ObligationActor(reason[Ursache], MopedBundActor)

* admission.extension contains Aufnahmeart named aufnahmeart 0..1
* insert WhitelistObligation(admission.extension[Aufnahmeart])
* insert ObligationActor(admission.extension[Aufnahmeart], MopedKHActor)
* insert ObligationActor(admission.extension[Aufnahmeart], MopedSVActor)
* insert ObligationActor(admission.extension[Aufnahmeart], MopedLGFActor)
* insert ObligationActor(admission.extension[Aufnahmeart], MopedBundActor)

* admission.extension contains Transportart named transportart 0..1
* insert WhitelistObligation(admission.extension[Transportart])
* insert ObligationActor(admission.extension[Transportart], MopedKHActor)
* insert ObligationActor(admission.extension[Transportart], MopedLGFActor)
* insert ObligationActor(admission.extension[Transportart], MopedBundActor)

* extension contains Unfalldatum named Unfalldatum 0..1
* insert WhitelistObligation(extension[Unfalldatum])
* insert ObligationActor(extension[Unfalldatum], MopedKHActor)
* insert ObligationActor(extension[Unfalldatum], MopedSVActor)
* insert ObligationActor(extension[Unfalldatum], MopedLGFActor)
* insert ObligationActor(extension[Unfalldatum], MopedBundActor)
