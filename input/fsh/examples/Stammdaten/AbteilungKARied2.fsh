Instance: AbteilungKARied2
InstanceOf: MopedKAOrganisationseinheit
Description: "Hackathon Stammdaten: Abteilung 2 der KA Ried"
Usage: #example
* meta.profile = "https://elga.moped.at/StructureDefinition/MopedKAOrganisationseinheit"
* identifier[+].value = "127181"
* identifier[=].system = "http://example.org/lkf-system/funktionscode"
* identifier[+].value = "00"
* identifier[=].system = "http://example.org/lkf-system/funktionssubcode"
* providedBy = Reference(Organization/OrganizationKrankenhausRied)
* type = http://terminology.hl7.org/CodeSystem/service-type#361
* category = http://terminology.hl7.org/CodeSystem/service-category#35
* location = Reference(LocationKARied)