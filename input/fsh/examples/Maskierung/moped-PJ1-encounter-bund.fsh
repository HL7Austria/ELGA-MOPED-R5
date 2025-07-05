Instance: PJ1EncounterBund
InstanceOf: MopedEncounterBund
Description: "Maskierung Patient Journey 1 Beispiel: EncounterBund"
Usage: #example
* meta.profile = "https://elga.moped.at/StructureDefinition/MopedEncounterBund"
* identifier[DatensatzID].type.coding = http://terminology.hl7.org/CodeSystem/v2-0203#ANON
* identifier[DatensatzID].value = "V8321382402233647600"
* identifier[DatensatzID].system = "urn:oid:1.3.6.1.4.1.36124.5.914"

* status = #discharged
* class[Behandlungsart].coding = BehandlungsartCS#S
* class[Aufnahmeart2].coding = Aufnahmeart2CS#P
* subject = Reference(PJ1Patient)
* serviceProvider = Reference(OrganizationHerzJesuKrankenhaus)
* actualPeriod.start = "2024-02-22T19:33:00+02:00"
* actualPeriod.end = "2024-02-23T07:38:00+02:00"
* type = MopedEncounterTypesCS#ENC
* diagnosis.condition.concept.coding = $ICD10AT#G47.3
* diagnosis.condition.concept.coding.display = "Sleep Apnea"
* admission.extension.url = "https://elga.moped.at/StructureDefinition/moped-ext-aufnahmeart"
* admission.extension.valueCoding = AufnahmeartCS#A
* admission.origin = Reference(OrganizationUeberweisendeOrganization2)
* admission.dischargeDisposition = EntlassungsartCS#E