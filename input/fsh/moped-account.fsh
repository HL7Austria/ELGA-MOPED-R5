
Profile: MOPEDAccount
Parent: Account
Description: "MOPED Profil der Account Ressource für die administrative Fallführung und Abrechnung."

* subject only Reference(HL7ATCorePatient)

* identifier ^slicing.rules = #open
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "type.coding.code"
* identifier ^slicing.ordered = false
* identifier contains Aufnahmezahl 0..1 and Fallnummer 0..1
* identifier[Aufnahmezahl].type from https://termgit.elga.gv.at/ValueSet/hl7-at-patientidentifier (required)
* identifier[Aufnahmezahl].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203" (exactly)
* identifier[Aufnahmezahl].type.coding.code = #VN (exactly)
* identifier[Aufnahmezahl].assigner only Reference(HL7ATCoreOrganization)

* extension contains Fallnummer named Fallnummer 0..1

* extension contains WorkflowStatus named WorkflowStatus 1..1