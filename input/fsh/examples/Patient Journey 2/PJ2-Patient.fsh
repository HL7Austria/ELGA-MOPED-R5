Instance: PJ2Patient
InstanceOf: HL7ATCorePatient
Description: "Hackathon Patient Journey 2 Beispiel: Patient"
Usage: #example
* meta.profile = "http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/StructureDefinition/at-core-patient"
* extension[citizenship].extension[code].valueCodeableConcept = https://termgit.elga.gv.at/CodeSystem/iso-3166-1-alpha-3#AUT "Österreich"
* identifier[socialSecurityNumber].type = HL7V2#SS "Social Security Number"
* identifier[socialSecurityNumber].system = "urn:oid:1.2.40.0.10.1.4.3.1"
* identifier[socialSecurityNumber].value = "2873111374"
* identifier[socialSecurityNumber].assigner.display = "Dachverband der österreichischen Sozialversicherungsträger"
* name.use = #official
* name.family = "Schnabeltier Test"
* name.given = "Santiago"
* gender = #male
* birthDate = "1985-03-19"
* address = PJ2PatientAddress1

Instance:    PJ2PatientAddress1
InstanceOf:  HL7ATCoreAddress
Usage:       #inline
* use = http://hl7.org/fhir/address-use#home
* line = "Ernst-Melchior-Gasse 22/5/506"
* line.extension[street].valueString = "Ernst-Melchior-Gasse"
* line.extension[streetNumber].valueString = "22/5/506"
* city = "Wien"
* state = "Wien"
* postalCode = "1020"
* country = "AUT"
* extension[AddressMunicipalityCode].valueString = "90201"