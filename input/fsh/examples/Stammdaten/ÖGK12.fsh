Instance: SV12
InstanceOf: SVOrganization
Description: "Hackathon Stammdaten: ÖGK Niederösterreich"
Usage: #example
* meta.profile = "https://elga.moped.at/StructureDefinition/SVOrganization"
* type = https://termgit.elga.gv.at/CodeSystem/elga-gtelvogdarollen#406 "Sozialversicherung"
* name = "Österreichische Gesundheitskasse Niederösterreich"
* identifier[+].system = "http://svc.co.at/CodeSystem/ecard-svt-cs"
* identifier[=].value = "12"
* contact.address.line = "Kremser Landstraße 3, 3100 St. Pölten"
* contact.address.line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* contact.address.line.extension[=].valueString = "Kremser Landstraße"
* contact.address.line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* contact.address.line.extension[=].valueString = "3"
* contact.address.city = "St. Pölten"
* contact.address.state = "Niederösterreich"
* contact.address.postalCode = "3100"
* contact.address.country = "AUT"