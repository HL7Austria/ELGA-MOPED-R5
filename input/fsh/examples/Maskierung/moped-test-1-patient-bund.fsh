Alias: $iso-3166-1-alpha-3 = https://termgit.elga.gv.at/CodeSystem/iso-3166-1-alpha-3

Instance: Test1PatientBund
InstanceOf: MopedPatientKlarnameBund
Description: "Maskierung Beispiel Patient Bund"
Usage: #example
* id = "Test1PatientBund"
* name.extension[DataAbsentReason].valueCode = http://hl7.org/fhir/StructureDefinition/data-absent-reason#masked
* gender = #female
* address = MopedTest1PatientBundAddress
* extension[citizenship].extension[code].valueCodeableConcept = https://termgit.elga.gv.at/CodeSystem/iso-3166-1-alpha-3#AUT "Österreich"

Instance:    MopedTest1PatientBundAddress
InstanceOf:  HL7ATCoreAddress
Usage:       #inline
* postalCode = "1030"
* country = "AUT"
* extension[AddressMunicipalityCode].valueString = "90301"