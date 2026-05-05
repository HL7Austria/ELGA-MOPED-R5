Instance: PJ1Patient
InstanceOf: MopedBasisPatientKlarname
Description: "Hackathon Patient Journey 1 Beispiel: Patient"
Usage: #example
* meta.profile = "http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/StructureDefinition/at-core-patient"
* extension[citizenship].extension[code].valueCodeableConcept = https://termgit.elga.gv.at/CodeSystem/iso-3166-1-alpha-3#AUT "Österreich"
* name.family = "Susi"
* name.given = "Sonnenschein"
* gender = #female
* birthDate = "1969-04-21"
* address = PJ1PatientAddress1

Instance:    PJ1PatientAddress1
InstanceOf:  HL7ATCoreAddress
Usage:       #inline
* line = "Baumgasse 20a"
* line.extension[street].valueString = "Baumgasse"
* line.extension[streetNumber].valueString = "20a"
* city = "Wien"
* postalCode = "1030"
* country = "AUT"
* extension[AddressMunicipalityCode].valueString = "90301"