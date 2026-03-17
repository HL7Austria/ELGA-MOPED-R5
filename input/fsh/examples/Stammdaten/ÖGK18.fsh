Instance: SV18
InstanceOf: SVOrganization
Description: "Hackathon Stammdaten: ÖGK Tirol"
Usage: #example
* meta.profile = "https://elga.moped.at/StructureDefinition/SVOrganization"
* type = https://termgit.elga.gv.at/CodeSystem/elga-gtelvogdarollen#406 "Sozialversicherung"
* name = "Österreichische Gesundheitskasse Tirol"
* identifier[+].system = "http://svc.co.at/CodeSystem/ecard-svt-cs"
* identifier[=].value = "18"
* contact.address.line = "Klara-Pölt-Weg 2, 6020 Innsbruck"
* contact.address.line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* contact.address.line.extension[=].valueString = "Klara-Pölt-Weg"
* contact.address.line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* contact.address.line.extension[=].valueString = "2"
* contact.address.city = "Innsbruck"
* contact.address.state = "Tirol"
* contact.address.postalCode = "6020"
* contact.address.country = "AUT"