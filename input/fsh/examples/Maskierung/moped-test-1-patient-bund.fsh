Alias: $iso-3166-1-alpha-3 = https://termgit.elga.gv.at/CodeSystem/iso-3166-1-alpha-3

Instance: Test1PatientBund
InstanceOf: MopedPatientBund
Usage: #example
* id = "Test1PatientBund"
* name.use = #official
* name.family = "MSK" //oder ganz entfernen
* name.given = "MSK"  //oder ganz entfernen
* name.extension[DataAbsentReason].valueCode = http://hl7.org/fhir/StructureDefinition/data-absent-reason#masked
* gender = #female
* address = MopedTest1PatientBundAddress
* extension[+].extension.url = "code"
* extension[=].extension.valueCodeableConcept = $iso-3166-1-alpha-3#AUT "Österreich"
* extension[=].url = "http://hl7.org/fhir/StructureDefinition/patient-citizenship"

Instance:    MopedTest1PatientBundAddress
InstanceOf:  HL7ATCoreAddress
Usage:       #inline
* use = http://hl7.org/fhir/address-use#home
* postalCode = "1030"
* country = "AUT"
* extension[AddressMunicipalityCode].valueString = "90301"