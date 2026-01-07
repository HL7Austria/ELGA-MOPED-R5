Instance: SV19
InstanceOf: SVOrganization
Description: "Hackathon Stammdaten: ÖGK Vorarlberg"
Usage: #example
* meta.profile = "https://elga.moped.at/StructureDefinition/SVOrganization"
* type = https://termgit.elga.gv.at/CodeSystem/elga-gtelvogdarollen#406 "Sozialversicherung"
* name = "Österreichische Gesundheitskasse Vorarlberg"
* identifier[+].system = "http://svc.co.at/CodeSystem/ecard-svt-cs"
* identifier[=].value = "19"
* contact.address.line = "Jahngasse 4, 6850 Dornbirn"
* contact.address.line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* contact.address.line.extension[=].valueString = "Jahngasse"
* contact.address.line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* contact.address.line.extension[=].valueString = "4"
* contact.address.city = "Dornbirn"
* contact.address.state = "Vorarlberg"
* contact.address.postalCode = "6850"
* contact.address.country = "AUT"