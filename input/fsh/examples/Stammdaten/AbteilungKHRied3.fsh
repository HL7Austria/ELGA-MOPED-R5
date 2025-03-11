Instance: AbteilungKHRied3
InstanceOf: MopedOrganizationAbteilung
Description: "Hackathon Stammdaten: Abteilung 3 des KH Ried"
Usage: #example
* meta.profile = "https://elga.moped.at/StructureDefinition/MopedOrganizationAbteilung"
* identifier[+].value = "111111"
* identifier[=].system = "http://example.org/lkf-system/funktionscode"
* identifier[+].value = "00"
* identifier[=].system = "http://example.org/lkf-system/funktionssubcode"
* partOf = Reference(Organization/OrganizationKrankenhausRied)