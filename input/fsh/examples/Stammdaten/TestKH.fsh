Instance: KHK999
InstanceOf: Organization
Usage: #example
* meta.profile[0] = "https://elga.moped.at/StructureDefinition/KHOrganization"
* meta.profile[+] = "http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/StructureDefinition/at-core-organization"
* type = https://termgit.elga.gv.at/CodeSystem/elga-gtelvogdarollen#300 "Allgemeine Krankenanstalt"
* identifier[0].system = "urn:ietf:rfc:3986"
* identifier[=].value = "urn:oid:1.3.6.1.4.1.36124.5.999"
* identifier[+].system = "urn:oid:1.2.40.0.34.4.10"
* identifier[=].value = "K999"
* identifier[+].system = "urn:oid:1.2.40.0.10.1.4.3.2"
* identifier[=].value = "123456"
* contact.telecom.system = #phone
* contact.telecom.value = "Contact details not provided"
* contact.address.line = "Test Test Test"
* contact.address.line.extension[0].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* contact.address.line.extension[=].valueString = "Test"
* contact.address.line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* contact.address.line.extension[=].valueString = "1243"
* contact.address.city = "Test"
* contact.address.state = "Test"
* contact.address.postalCode = "1234"
* contact.address.country = "Test"
* name = "Testkrankenhaus"