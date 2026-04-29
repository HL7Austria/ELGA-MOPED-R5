Instance: AbteilungKARied4
InstanceOf: MopedKAOrganisationseinheit
Description: "Hackathon Stammdaten: Abteilung 4 der KA Ried"
Usage: #example
* meta.profile = "https://elga.moped.at/StructureDefinition/MopedKAOrganisationseinheit"
* identifier[+].value = "10000000"
* identifier[=].system = "http://example.org/lkf-system/funktionscode"
* providedBy = Reference(Organization/OrganizationKrankenhausRied)
* type = http://terminology.hl7.org/CodeSystem/service-type#361
* category = http://terminology.hl7.org/CodeSystem/service-category#35
* location = Reference(LocationKARied)