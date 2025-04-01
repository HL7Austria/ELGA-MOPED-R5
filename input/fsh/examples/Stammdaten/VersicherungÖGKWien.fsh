Instance: oegk-wien
InstanceOf: SVOrganization
Description: "Hackathon Stammdaten: ÖGK Wien"
Usage: #example
* meta.profile = "http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/StructureDefinition/at-core-organization"
* type = https://termgit.elga.gv.at/CodeSystem/elga-gtelvogdarollen#406 "Sozialversicherung"
* name = "Österreichische Gesundheitskasse Wien"
* alias = "11"
* identifier[+].system = "http://svc.co.at/CodeSystem/ecard-svt-cs"
* identifier[=].value = "11"
* contact.address.line = "Wienerbergstraße 15-19, 1100 Wien"
* contact.address.line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* contact.address.line.extension[=].valueString = "Wienerbergstraße"
* contact.address.line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* contact.address.line.extension[=].valueString = "15-19"
* contact.address.city = "Wien"
* contact.address.state = "Wien"
* contact.address.postalCode = "1100"
* contact.address.country = "AUT"