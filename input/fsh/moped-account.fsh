
Profile: MOPEDAccount
Parent: Account
Description: "MOPED Profil der Account Ressource für die administrative Fallführung und Abrechnung."

* subject only Reference(HL7ATCorePatient)
* owner only Reference(HL7ATCoreOrganization)

* extension contains AnzahlVerlegungen named anzahlVerlegungen 0..1
* extension contains AnzahlBeurlaubungen named anzahlBeurlaubungen 0..1
* extension contains WorkflowStatus named workflowStatus 1..1
* extension contains VerdachtArbeitsSchuelerunfall named verdachtArbeitsSchuelerunfall 0..1
* extension contains VerdachtFremdverschulden named verdachtFremdverschulden 0..1
* extension contains TageOhneKostenbeitrag named tageOhneKostenbeitrag 0..1
* extension contains CoverageEligibilityRequestRef named coverageEligibilityRequestRef 0..1
* extension contains ClaimRef named claimRef 0..1