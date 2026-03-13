Profile: SVOrganization
Parent: HL7ATCoreOrganization
Description: "MOPED Profil für SV Organizations"
Title: "SV Organization"
* type = https://termgit.elga.gv.at/CodeSystem/elga-gtelvogdarollen#406 "Sozialversicherung"
* identifier 2..*
* identifier ^slicing.rules = #open
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.ordered = false
* identifier contains SVT 1..1 and LSVT 1..1
* identifier[SVT] ^short = "CodeSystem: e-card Sozialversicherungsträger Codesystem"
* identifier[SVT].system = "http://svc.co.at/CodeSystem/ecard-svt-cs" (exactly)
* identifier[LSVT] ^short = "L-Codes der Sozialversicherungsträger"
* identifier[LSVT].system = "http://example.org/lsvt-code" (exactly)