Instance: AbteilungKHRied2
InstanceOf: MopedOrganizationAbteilung
Description: "Hackathon Stammdaten: Abteilung 2 des KH Ried"
Usage: #example
* meta.profile = "https://elga.moped.at/StructureDefinition/MopedOrganizationAbteilung"
* identifier[+].value = "127181"
* identifier[=].system = "http://example.org/lkf-system/funktionscode"
* identifier[+].value = "00"
* identifier[=].system = "http://example.org/lkf-system/funktionssubcode"
* partOf = Reference(Organization/OrganizationKrankenhausRied)
* type = http://terminology.hl7.org/CodeSystem/organization-type#dept