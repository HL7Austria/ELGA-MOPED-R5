Instance: PJ1Encounter
InstanceOf: MopedEncounter
Description: "Hackathon Patient Journey 1 Beispiel: Encounter"
Usage: #example
* meta.profile = "https://elga.moped.at/StructureDefinition/MopedEncounter"
* identifier[Aufnahmezahl].type = http://terminology.hl7.org/CodeSystem/v2-0203#VN
* identifier[Aufnahmezahl].value = "1024000028"
* identifier[Aufnahmezahl].system = "urn:oid:1.3.6.1.4.1.36124.5.914"
* identifier[Aufnahmezahl].assigner.reference = "Organization?identifier=urn:ietf:rfc:3986|urn:oid:1.3.6.1.4.1.36124.5.914"
* identifier[DatensatzID].type.coding = http://terminology.hl7.org/CodeSystem/v2-0203#ANON
* identifier[DatensatzID].value = "V8321382402233647600"
* identifier[DatensatzID].system = "urn:oid:1.3.6.1.4.1.36124.5.914"

* status = #discharged
* class[Behandlungsart].coding = BehandlungsartCS#S
* class[Aufnahmeart2].coding = Aufnahmeart2CS#P
* subject.reference = "Patient?identifier=urn:oid:1.2.40.0.10.1.4.3.1|9994210469"
* serviceProvider.reference = "Organization?identifier=urn:ietf:rfc:3986|urn:oid:1.3.6.1.4.1.36124.5.914"
* actualPeriod.start = "2024-02-22T19:33:00+02:00"
* actualPeriod.end = "2024-02-23T07:38:00+02:00"
* type = MopedEncounterTypesCS#ENC
* reason[+].use = http://hl7.org/fhir/encounter-reason-use#RV
* reason[=].value.concept.coding = UrsacheCS#00
* diagnosis.condition.concept.coding = $ICD10AT#G47.3
* diagnosis.condition.concept.coding.display = "Sleep Apnea"
* diagnosis.use = $LKFdiagnoseTyp#H
* admission.extension.url = "https://elga.moped.at/StructureDefinition/moped-ext-aufnahmeart"
* admission.extension.valueCoding = AufnahmeartCS#A
* admission.origin.reference = "Organization?identifier=urn:ietf:rfc:3986|urn:oid:1.3.6.1.4.1.36122.tbd.234"
* admission.dischargeDisposition = EntlassungsartCS#E
* account = Reference (PJ1Account)
/*
* admission.extension.url = "https://elga.moped.at/StructureDefinition/moped-ext-transportart"
* admission.extension.valueCode = TransportartCS#

* extension.url = "https://elga.moped.at/StructureDefinition/moped-ext-unfalldatum"
* extension.valueDate = ""

* admission.destination.reference = 
*/
