Instance: PJ1EncounterSV
InstanceOf: MopedEncounterSV
Description: "Maskierung Patient Journey 1 Beispiel: EncounterSV"
Usage: #example
* meta.profile = "https://elga.moped.at/StructureDefinition/MopedEncounter"
* identifier[Aufnahmezahl].type = http://terminology.hl7.org/CodeSystem/v2-0203#VN
* identifier[Aufnahmezahl].value = "1024000028"
* identifier[Aufnahmezahl].system = "urn:oid:1.3.6.1.4.1.36124.5.914"
* identifier[Aufnahmezahl].assigner = Reference(OrganizationHerzJesuKrankenhaus)

* status = #discharged
* class[Behandlungsart].coding = BehandlungsartCS#S
* subject = Reference(PJ1Patient)
* serviceProvider = Reference(OrganizationHerzJesuKrankenhaus)
* actualPeriod.start = "2024-02-22T19:33:00+02:00"
* actualPeriod.end = "2024-02-23T07:38:00+02:00"
* type = MopedEncounterTypesCS#ENC
* reason[+].use = http://hl7.org/fhir/encounter-reason-use#RV
* reason[=].value.concept.coding = UrsacheCS#00
* diagnosis.condition.concept.coding = $ICD10AT#G47.3
* diagnosis.condition.concept.coding.display = "Sleep Apnea"
* admission.extension.url = "https://elga.moped.at/StructureDefinition/moped-ext-aufnahmeart"
* admission.extension.valueCoding = AufnahmeartCS#A
* admission.origin = Reference(OrganizationUeberweisendeOrganization2)
* admission.dischargeDisposition = EntlassungsartCS#E
* account = Reference (PJ1Account)