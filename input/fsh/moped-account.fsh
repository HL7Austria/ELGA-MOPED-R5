
Profile: MopedAccount
Parent: Account
Title: "MOPED Account"
Description: "MOPED Profil der Account Ressource für die administrative Fallführung und Abrechnung."

* subject only Reference(HL7ATCorePatient)
* owner only Reference(HL7ATCoreOrganization)

* extension contains AnzahlVerlegungen named AnzahlVerlegungen 0..1
* extension contains AnzahlBeurlaubungen named AnzahlBeurlaubungen 0..1
* extension contains WorkflowStatus named WorkflowStatus 1..1
* extension contains TageOhneKostenbeitrag named TageOhneKostenbeitrag 0..1