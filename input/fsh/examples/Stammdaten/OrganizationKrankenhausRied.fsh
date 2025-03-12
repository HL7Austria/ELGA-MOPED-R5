Instance: OrganizationKrankenhausRied
InstanceOf: HL7ATCoreOrganization
Description: "Hackathon Stammdaten: KH Ried"
Usage: #example
* meta.profile = "http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/StructureDefinition/at-core-organization"
* identifier[+].system = "urn:ietf:rfc:3986"
* identifier[=].value = "urn:oid:1.3.6.1.4.1.36124.5.427"
* identifier[+].system = "urn:oid:1.2.40.0.34.4.10"
* identifier[=].value = "K427"
* identifier[+].system = "urn:oid:1.2.40.0.10.1.4.3.2"
* identifier[=].value = "827378"
* name = "Krankenhaus der Barmherzigen Schwestern vom Hl. Vinzenz von Paul Ried"
* contact.telecom.system = #phone
* contact.telecom.value = "Contact details not provided"
* contact.address.line = "Schlossberg 1, 4910 Ried im Innkreis"
* contact.address.line.extension[0].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* contact.address.line.extension[=].valueString = "Schlossberg"
* contact.address.line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* contact.address.line.extension[=].valueString = "1"
* contact.address.city = "Ried im Innkreis"
* contact.address.state = "Oberösterreich"
* contact.address.postalCode = "4910"
* contact.address.country = "AUT"