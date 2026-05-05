Instance: PJ2Patient
InstanceOf: MopedBasisPatientKlarname
Description: "Hackathon Patient Journey 2 Beispiel: Patient"
Usage: #example
* meta.profile = "http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/StructureDefinition/at-core-patient"
* extension[citizenship].extension[code].valueCodeableConcept = https://termgit.elga.gv.at/CodeSystem/iso-3166-1-alpha-3#AUT "Österreich"
* name.family = "Schnabeltier Test"
* name.given = "Santiago"
* gender = #male
* birthDate = "1985-03-19"
* address = PJ2PatientAddress1

Instance:    PJ2PatientAddress1
InstanceOf:  HL7ATCoreAddress
Usage:       #inline
* line = "Ernst-Melchior-Gasse 22/5/506"
* line.extension[street].valueString = "Ernst-Melchior-Gasse"
* line.extension[streetNumber].valueString = "22/5/506"
* city = "Wien"
* postalCode = "1020"
* country = "AUT"
* extension[AddressMunicipalityCode].valueString = "90201"