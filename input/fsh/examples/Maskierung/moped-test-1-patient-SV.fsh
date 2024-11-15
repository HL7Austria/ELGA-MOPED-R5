Alias: $v2-0203 = http://terminology.hl7.org/CodeSystem/v2-0203 
Alias: $iso-3166-1-alpha-3 = https://termgit.elga.gv.at/CodeSystem/iso-3166-1-alpha-3

Instance: Test1PatientSV
InstanceOf: MOPEDPatientSV
Usage: #example
* id = "Test1PatientSV"
* identifier.system = "urn:oid:1.2.40.0.10.1.4.3.1"
* identifier.value = "9994210469"
* identifier.type = $v2-0203#SS "Social Security Number"
* identifier.assigner.display = "Dachverband der österreichischen Sozialversicherungsträger"
* name.use = #official
* name.family = "Moderne"
* name.given = "Patientenkommun"
* gender = #female
* birthDate = "1969-04-21"
* address = MOPEDTest1PatientSVAddress
* extension[+].extension.url = "code"
* extension[=].extension.valueCodeableConcept = $iso-3166-1-alpha-3#AUT "Österreich"
* extension[=].url = "http://hl7.org/fhir/StructureDefinition/patient-citizenship"

Instance:    MOPEDTest1PatientSVAddress
InstanceOf:  HL7ATCoreAddress
Usage:       #inline
* use = http://hl7.org/fhir/address-use#home
* line = "Baumgasse 20a" 
* line.extension[street].valueString = "Baumgasse"
* line.extension[streetNumber].valueString = "20a"
* city = "Wien"
* postalCode = "1030"
* country = "AUT"