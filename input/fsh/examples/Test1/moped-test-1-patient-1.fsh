Alias: $v2-0203 = http://terminology.hl7.org/CodeSystem/v2-0203
Alias: $elga-laendercodes = https://termgit.elga.gv.at/ValueSet/elga-laendercodes

Instance: Test1Patient
InstanceOf: HL7ATCorePatient
Usage: #example
* id = "Test1Patient"
* meta.profile = "http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/StructureDefinition/at-core-patient"
* identifier.system = "urn:oid:1.2.40.0.10.1.4.3.1"
* identifier.value = "9994210469"
* identifier.type = $v2-0203#SS "Social Security Number"
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
* extension.url = "http://hl7.org/fhir/StructureDefinition/patient-citizenship"
* extension.valueCodeableConcept = $elga-laendercodes#AT "Austria"