Instance: OrganizationHerzJesuKrankenhaus
InstanceOf: KHOrganization
Description: "Hackathon Stammdaten: KH Herz Jesu"
Usage: #example
* type = https://termgit.elga.gv.at/CodeSystem/elga-gtelvogdarollen#300 "Allgemeine Krankenanstalt"
* meta.profile = "https://elga.moped.at/StructureDefinition/KHOrganization"
* identifier[+].system = "urn:ietf:rfc:3986"
* identifier[=].value = "urn:oid:1.3.6.1.4.1.36124.5.914"
* identifier[+].system = "urn:oid:1.2.40.0.34.4.10"
* identifier[=].value = "K914"
* identifier[+].system = "urn:oid:1.2.40.0.10.1.4.3.2"
* identifier[=].value = "832138"
* name = "Herz Jesu-Krankenhaus"
* contact.telecom.system = #phone
* contact.telecom.value = "Contact details not provided"
* contact.address.line = "Baumgasse 20a, 1030 Wien"
* contact.address.line.extension[0].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* contact.address.line.extension[=].valueString = "Baumgasse"
* contact.address.line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* contact.address.line.extension[=].valueString = "20a"
* contact.address.city = "Wien"
* contact.address.state = "Wien"
* contact.address.postalCode = "1030"
* contact.address.country = "AUT"