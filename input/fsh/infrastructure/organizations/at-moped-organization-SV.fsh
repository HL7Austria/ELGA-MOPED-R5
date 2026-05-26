Profile: AtMopedOrganizationSV
Parent: HL7ATCoreOrganization
Id: at-moped-organization-SV
Description: "MOPED Profil der Organization Ressource für die SV"
Title: "AT MOPED Organization SV Profil"
* type = $ElgaGTelVoGDARollen#406 "Sozialversicherung"
* identifier 2..*
* identifier ^slicing.rules = #open
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.ordered = false
* identifier contains SVT 1..1 and LSVT 1..1
* identifier[SVT] ^short = "CodeSystem: e-card Sozialversicherungsträger Codesystem"
* identifier[SVT].system = $SVTCode (exactly)
* identifier[LSVT] ^short = "L-Codes der Sozialversicherungsträger"
* identifier[LSVT].system = $LSVTCode (exactly)