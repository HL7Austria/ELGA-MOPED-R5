Instance: PJ2Encounter
InstanceOf: MopedEncounter
Description: "Hackathon Patient Journey 2 Beispiel: Encounter"
Usage: #example
* meta.profile = "https://elga.moped.at/StructureDefinition/MopedEncounter"
* identifier[Aufnahmezahl].type = http://terminology.hl7.org/CodeSystem/v2-0203#VN
* identifier[Aufnahmezahl].value = "324200063"
* identifier[Aufnahmezahl].system = "urn:oid:1.3.6.1.4.1.36124.5.427"
* identifier[Aufnahmezahl].assigner.reference = "Organization?identifier=urn:ietf:rfc:3986|urn:oid:1.3.6.1.4.1.36124.5.427"
* identifier[DatensatzID].type.coding = http://terminology.hl7.org/CodeSystem/v2-0203#ANON
* identifier[DatensatzID].value = "VABCDTESTTBD" //update once available
* identifier[DatensatzID].system = "urn:oid:1.3.6.1.4.1.36124.5.427"

* status = #discharged
* class[Behandlungsart].coding = BehandlungsartCS#S
* class[Aufnahmeart2].coding = Aufnahmeart2CS#A
* subject.reference = "Patient?identifier=urn:oid:1.2.40.0.10.1.4.3.1|2873111374"
* serviceProvider.reference = "Organization?identifier=urn:ietf:rfc:3986|urn:oid:1.3.6.1.4.1.36124.5.427"
* actualPeriod.start = "2024-08-08T08:21:00+02:00"
* actualPeriod.end = "2024-08-12T19:22:00+02:00"
* type = MopedEncounterTypesCS#ENC
* reason[+].use = http://hl7.org/fhir/encounter-reason-use#RV
* reason[=].value.concept.coding = UrsacheCS#00
* diagnosis.condition.concept.coding = $ICD10AT#S82.0
* diagnosis.condition.concept.coding.display = "Fraktur der Patella"
* admission.extension.url = "https://elga.moped.at/StructureDefinition/moped-ext-aufnahmeart"
* admission.extension.valueCoding = AufnahmeartCS#A
* admission.origin.reference = "Organization?identifier=urn:oid:1.2.40.0.10.1.4.3.2|233853"
* admission.dischargeDisposition = EntlassungsartCS#E
* account = Reference (PJ2Account)
/*
* admission.extension.url = "https://elga.moped.at/StructureDefinition/moped-ext-transportart"
* admission.extension.valueCode = TransportartCS#

* extension.url = "https://elga.moped.at/StructureDefinition/moped-ext-unfalldatum"
* extension.valueDate = ""

* admission.destination.reference = 
*/
