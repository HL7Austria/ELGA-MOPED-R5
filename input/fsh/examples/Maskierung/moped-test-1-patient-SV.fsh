Alias: $v2-0203 = http://terminology.hl7.org/CodeSystem/v2-0203 
Alias: $iso-3166-1-alpha-3 = https://termgit.elga.gv.at/CodeSystem/iso-3166-1-alpha-3

Instance: Test1PatientSV
InstanceOf: MopedPatientSV
Description: "Maskierung Beispiel PatientSV"
Usage: #example
* meta.profile = "http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/StructureDefinition/at-core-patient"
* extension[citizenship].extension[code].valueCodeableConcept = https://termgit.elga.gv.at/CodeSystem/iso-3166-1-alpha-3#AUT "Österreich"
* identifier[socialSecurityNumber].type = HL7V2#SS "Social Security Number"
* identifier[socialSecurityNumber].system = "urn:oid:1.2.40.0.10.1.4.3.1"
* identifier[socialSecurityNumber].value = "9994210469"
* identifier[socialSecurityNumber].assigner.display = "Dachverband der österreichischen Sozialversicherungsträger"
* name.use = #official
* name.family = "Susi"
* name.given = "Sonnenschein"
* gender = #female
* birthDate = "1969-04-21"
* address = MopedTest1PatientSVAddress

Instance:    MopedTest1PatientSVAddress
InstanceOf:  HL7ATCoreAddress
Usage:       #inline
* use = http://hl7.org/fhir/address-use#home
* line = "Baumgasse 20a" 
* line.extension[street].valueString = "Baumgasse"
* line.extension[streetNumber].valueString = "20a"
* city = "Wien"
* postalCode = "1030"
* country = "AUT"