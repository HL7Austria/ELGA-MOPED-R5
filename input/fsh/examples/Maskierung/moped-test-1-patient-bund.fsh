Alias: $v2-0203 = http://terminology.hl7.org/CodeSystem/v2-0203
Alias: $iso-3166-1-alpha-3 = https://termgit.elga.gv.at/CodeSystem/iso-3166-1-alpha-3

Instance: Test1PatientBund
InstanceOf: MOPEDPatientBund
Usage: #example
* id = "Test1PatientBund"
* meta.profile = "http://example.org/StructureDefinition/MOPEDPatientSV"
* name.use = #official
* name.family = "MSK" //oder ganz entfernen
* name.given = "MSK"  //oder ganz entfernen
* name.extension[DataAbsentReason].valueCode = http://hl7.org/fhir/StructureDefinition/data-absent-reason#masked
* gender = #female
* address = MOPEDTest1PatientBundAddress
* extension[+].extension.url = "code"
* extension[=].extension.valueCodeableConcept = $iso-3166-1-alpha-3#AUT "Österreich"
* extension[=].url = "http://hl7.org/fhir/StructureDefinition/patient-citizenship"

Instance:    MOPEDTest1PatientBundAddress
InstanceOf:  HL7ATCoreAddress
Usage:       #inline
* use = http://hl7.org/fhir/address-use#home
* postalCode = "1030"
* country = "AUT"
* extension[AddressMunicipalityCode].valueString = "90301"