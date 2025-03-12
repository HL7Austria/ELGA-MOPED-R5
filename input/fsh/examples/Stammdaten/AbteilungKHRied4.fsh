Instance: AbteilungKHRied4
InstanceOf: MopedOrganizationAbteilung
Description: "Hackathon Stammdaten: Abteilung 4 des KH Ried"
Usage: #example
* meta.profile = "https://elga.moped.at/StructureDefinition/MopedOrganizationAbteilung"
* identifier[+].value = "100000"
* identifier[=].system = "http://example.org/lkf-system/funktionscode"
* identifier[+].value = "00"
* identifier[=].system = "http://example.org/lkf-system/funktionssubcode"
* partOf = Reference(Organization/OrganizationKrankenhausRied)