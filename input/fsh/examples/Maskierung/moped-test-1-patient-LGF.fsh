Alias: $v2-0203 = http://terminology.hl7.org/CodeSystem/v2-0203
Alias: $iso-3166-1-alpha-3 = https://termgit.elga.gv.at/CodeSystem/iso-3166-1-alpha-3

Instance: Test1PatientLGF
InstanceOf: MOPEDPatientLGF
Usage: #example
* id = "Test1PatientLGF"
* meta.profile = "http://example.org/StructureDefinition/MOPEDPatientSV"
* name.use = #official
* name.family = "MSK"
* name.given = "MSK"
* name.extension[DataAbsentReason].valueCode = http://hl7.org/fhir/StructureDefinition/data-absent-reason#masked
* gender = #female
* birthDate = "1969-04-21"
* address.use = #home
* address.postalCode = "1030"
* address.country = "AT"
* extension[+].extension.url = "code"
* extension[=].extension.valueCodeableConcept = $iso-3166-1-alpha-3#AUT "Österreich"
* extension[=].url = "http://hl7.org/fhir/StructureDefinition/patient-citizenship"