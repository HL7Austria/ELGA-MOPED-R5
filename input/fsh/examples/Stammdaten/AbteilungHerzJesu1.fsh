Instance: AbteilungHerzJesu1
InstanceOf: MopedOrganizationAbteilung
Description: "Hackathon Stammdaten: Abteilung 1 des KH Herz Jesu"
Usage: #example
* meta.profile = "https://elga.moped.at/StructureDefinition/MopedOrganizationAbteilung"
* extension[+].url = "https://elga.moped.at/StructureDefinition/moped-ext-Kostenstelle"
* extension[=].extension[+].url = "InterneKostenstellennummer"
* extension[=].extension[=].valueUnsignedInt = 11160
* extension[=].extension[+].url = "InterneKostenstellenbezeichnung"
* extension[=].extension[=].valueString = "Schlaflabor (Interne)"
* extension[=].extension[+].url = "SpezielleOrganisationsform"
* extension[=].extension[=].valueCode = #A
* extension[=].extension[+].url = "KostenstellenJahr"
* extension[=].extension[=].valueDate = "2024"
* identifier[+].value = "131180"
* identifier[=].system = "http://example.org/lkf-system/funktionscode"
* identifier[+].value = "00"
* identifier[=].system = "http://example.org/lkf-system/funktionssubcode"
* partOf = Reference(Organization/OrganizationHerzJesuKrankenhaus)
* type = http://terminology.hl7.org/CodeSystem/organization-type#dept