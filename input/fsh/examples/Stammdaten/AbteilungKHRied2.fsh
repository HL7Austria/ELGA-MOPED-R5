Instance: AbteilungKHRied2
InstanceOf: MopedKHOrganisationseinheit
Description: "Hackathon Stammdaten: Abteilung 2 des KH Ried"
Usage: #example
* meta.profile = "https://elga.moped.at/StructureDefinition/MopedKHOrganisationseinheit"
* identifier[+].value = "127181"
* identifier[=].system = "http://example.org/lkf-system/funktionscode"
* identifier[+].value = "00"
* identifier[=].system = "http://example.org/lkf-system/funktionssubcode"
* providedBy = Reference(Organization/OrganizationKrankenhausRied)
* type = http://terminology.hl7.org/CodeSystem/service-type#361
* category = http://terminology.hl7.org/CodeSystem/service-category#35
* location = Reference(LocationKHRied)