Instance: OrganizationAffiliationWgfHerzJesu
InstanceOf: OrganizationAffiliation
Description: "Hackathon Stammdaten: Organization Affiliation zwischen LGF und KH Herz Jesu"
Usage: #example
* active = true
* organization = Reference(OrganizationLGF)
* participatingOrganization = Reference(OrganizationHerzJesuKrankenhaus)
* code[+].coding[+].code = #provider
* code[=].coding[=].system = "http://hl7.org/fhir/organization-role"
