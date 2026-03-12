Instance: SV13
InstanceOf: SVOrganization
Description: "Hackathon Stammdaten: ÖGK Burgenland"
Usage: #example
* meta.profile = "https://elga.moped.at/StructureDefinition/SVOrganization"
* type = https://termgit.elga.gv.at/CodeSystem/elga-gtelvogdarollen#406 "Sozialversicherung"
* name = "Österreichische Gesundheitskasse Burgenland"
* identifier[+].system = "http://svc.co.at/CodeSystem/ecard-svt-cs"
* identifier[=].value = "13"
* contact.address.line = "Siegfried Marcus-Straße 5, 7000 Eisenstadt"
* contact.address.line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* contact.address.line.extension[=].valueString = "Siegfried Marcus-Straße"
* contact.address.line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* contact.address.line.extension[=].valueString = "5"
* contact.address.city = "Eisenstadt"
* contact.address.state = "Burgenland"
* contact.address.postalCode = "7000"
* contact.address.country = "AUT"