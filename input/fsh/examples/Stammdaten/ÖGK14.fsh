Instance: SV14
InstanceOf: SVOrganization
Description: "Hackathon Stammdaten: ÖGK Oberösterreich"
Usage: #example
* meta.profile = "https://elga.moped.at/StructureDefinition/SVOrganization"
* type = https://termgit.elga.gv.at/CodeSystem/elga-gtelvogdarollen#406 "Sozialversicherung"
* name = "Österreichische Gesundheitskasse Oberösterreich"
* identifier[+].system = "http://svc.co.at/CodeSystem/ecard-svt-cs"
* identifier[=].value = "14"
* contact.address.line = "Gruberstraße 77, 4021 Linz"
* contact.address.line.extension[0].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* contact.address.line.extension[=].valueString = "Gruberstraße"
* contact.address.line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* contact.address.line.extension[=].valueString = "77"
* contact.address.city = "Linz"
* contact.address.state = "Oberösterreich"
* contact.address.postalCode = "4021"
* contact.address.country = "AUT"