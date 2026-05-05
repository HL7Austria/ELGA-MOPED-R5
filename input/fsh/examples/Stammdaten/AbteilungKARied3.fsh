Instance: AbteilungKARied3
InstanceOf: MopedKAOrganisationseinheit
Description: "Hackathon Stammdaten: Abteilung 3 der KA Ried"
Usage: #example
* meta.profile = "https://elga.moped.at/StructureDefinition/MopedKAOrganisationseinheit"
* identifier[+].value = "11111100"
* identifier[=].system = "http://example.org/lkf-system/funktionscode"
* providedBy = Reference(Organization/OrganizationKrankenhausRied)
* type = http://terminology.hl7.org/CodeSystem/service-type#361
* category = http://terminology.hl7.org/CodeSystem/service-category#35
* location = Reference(LocationKARied)