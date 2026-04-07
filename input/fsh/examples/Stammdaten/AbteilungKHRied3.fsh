Instance: AbteilungKHRied3
InstanceOf: MopedKHOrganisationseinheit
Description: "Hackathon Stammdaten: Abteilung 3 des KH Ried"
Usage: #example
* meta.profile = "https://elga.moped.at/StructureDefinition/MopedKHOrganisationseinheit"
* identifier[+].value = "11111100"
* identifier[=].system = "http://example.org/lkf-system/funktionscode"
* providedBy = Reference(Organization/OrganizationKrankenhausRied)
* type = http://terminology.hl7.org/CodeSystem/service-type#361
* category = http://terminology.hl7.org/CodeSystem/service-category#35
* location = Reference(LocationKHRied)