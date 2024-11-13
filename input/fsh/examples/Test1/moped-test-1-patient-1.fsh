Alias: $iso-3166-1-alpha-3 = https://termgit.elga.gv.at/CodeSystem/iso-3166-1-alpha-3
Instance: Test1Patient
InstanceOf: HL7ATCorePatient
Usage: #example
* id = "Test1Patient"
* meta.profile = "http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/StructureDefinition/at-core-patient"
* identifier.system = "urn:oid:1.2.40.0.10.1.4.3.1"
* identifier.value = "9994210469"
* identifier.type = $IdentifyerCodeSystem#SS "Social Security Number"
* identifier.assigner.display = "Dachverband der österreichischen Sozialversicherungsträger"
* name.use = #official
* name.family = "Moderne"
* name.given = "Patientenkommun"
* gender = #female
* birthDate = "1969-04-21"
* address.use = #home
* address.line = "Baumgasse 20a"
* address.city = "Wien"
* address.postalCode = "1030"
* address.country = "AT"
* extension[+].extension.url = "code"
* extension[=].extension.valueCodeableConcept = $iso-3166-1-alpha-3#AUT "Österreich"
* extension[=].url = "http://hl7.org/fhir/StructureDefinition/patient-citizenship"