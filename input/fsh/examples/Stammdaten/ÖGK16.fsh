Instance: SV16
InstanceOf: SVOrganization
Description: "Hackathon Stammdaten: ÖGK Kärnten"
Usage: #example
* meta.profile = "https://elga.moped.at/StructureDefinition/SVOrganization"
* type = https://termgit.elga.gv.at/CodeSystem/elga-gtelvogdarollen#406 "Sozialversicherung"
* name = "Österreichische Gesundheitskasse Kärnten"
* identifier[+].system = "http://svc.co.at/CodeSystem/ecard-svt-cs"
* identifier[=].value = "16"
* contact.address.line = "Kempfstraße 8, 9021 Klagenfurt am Wörthersee"
* contact.address.line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* contact.address.line.extension[=].valueString = "Kempfstraße"
* contact.address.line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* contact.address.line.extension[=].valueString = "8"
* contact.address.city = "Klagenfurt am Wörthersee"
* contact.address.state = "Kärnten"
* contact.address.postalCode = "9021"
* contact.address.country = "AUT"