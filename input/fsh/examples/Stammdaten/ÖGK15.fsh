Instance: SV15
InstanceOf: SVOrganization
Description: "Hackathon Stammdaten: ÖGK Steiermark"
Usage: #example
* meta.profile = "https://elga.moped.at/StructureDefinition/SVOrganization"
* type = https://termgit.elga.gv.at/CodeSystem/elga-gtelvogdarollen#406 "Sozialversicherung"
* name = "Österreichische Gesundheitskasse Steiermark"
* identifier[+].system = "http://svc.co.at/CodeSystem/ecard-svt-cs"
* identifier[=].value = "15"
* contact.address.line = "Josef-Pongratz-Platz 1, 8010 Graz"
* contact.address.line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* contact.address.line.extension[=].valueString = "Josef-Pongratz-Platz"
* contact.address.line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* contact.address.line.extension[=].valueString = "1"
* contact.address.city = "Graz"
* contact.address.state = "Steiermark"
* contact.address.postalCode = "8010"
* contact.address.country = "AUT"