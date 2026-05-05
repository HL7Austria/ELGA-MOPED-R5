Alias: $iso-3166-1-alpha-3 = https://termgit.elga.gv.at/CodeSystem/iso-3166-1-alpha-3

Instance: Test1PatientOhneMaskierung
InstanceOf: MopedBasisPatientKlarname
Description: "Maskierung Beispiel Patient"
Usage: #example
* extension[citizenship].extension[code].valueCodeableConcept = https://termgit.elga.gv.at/CodeSystem/iso-3166-1-alpha-3#AUT "Österreich"
* name.family = "Susi"
* name.given = "Sonnenschein"
* gender = #female
* birthDate = "1969-04-21"
* address = MopedTest1PatientOhneMaskierungAddress

Instance:    MopedTest1PatientOhneMaskierungAddress
InstanceOf:  HL7ATCoreAddress
Usage:       #inline
* line = "Baumgasse 20a" 
* line.extension[street].valueString = "Baumgasse"
* line.extension[streetNumber].valueString = "20a"
* city = "Wien"
* postalCode = "1030"
* country = "AUT"
* extension[AddressMunicipalityCode].valueString = "90301"