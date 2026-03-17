Instance: SV17
InstanceOf: SVOrganization
Description: "Hackathon Stammdaten: ÖGK Salzburg"
Usage: #example
* meta.profile = "https://elga.moped.at/StructureDefinition/SVOrganization"
* type = https://termgit.elga.gv.at/CodeSystem/elga-gtelvogdarollen#406 "Sozialversicherung"
* name = "Österreichische Gesundheitskasse Salzburg"
* identifier[+].system = "http://svc.co.at/CodeSystem/ecard-svt-cs"
* identifier[=].value = "17"
* contact.address.line = "Engelbert-Weiß-Weg 10, 5020 Salzburg"
* contact.address.line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* contact.address.line.extension[=].valueString = "Engelbert-Weiß-Weg"
* contact.address.line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* contact.address.line.extension[=].valueString = "10"
* contact.address.city = "Salzburg"
* contact.address.state = "Salzburg"
* contact.address.postalCode = "5020"
* contact.address.country = "AUT"