Instance: AbteilungKARied1
InstanceOf: MopedKAOrganisationseinheit
Description: "Hackathon Stammdaten: Abteilung 1 der KA Ried"
Usage: #example
* identifier[+].value = "11211100"
* identifier[=].system = "http://example.org/lkf-system/funktionscode"
* providedBy = Reference(Organization/OrganizationKrankenhausRied)
* type = http://terminology.hl7.org/CodeSystem/service-type#361
* category = http://terminology.hl7.org/CodeSystem/service-category#35
* location = Reference(LocationKARied)