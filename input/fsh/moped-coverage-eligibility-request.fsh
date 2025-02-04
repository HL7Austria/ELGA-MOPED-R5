
Profile: MOPEDCoverageEligibilityRequest
Parent: CoverageEligibilityRequest
Description: "MOPED Profil der CoverageEligibilityRequest Ressource für die Versichertenanspruchserklärung-Anfrage."


* patient only Reference(HL7ATCorePatient)


* extension contains ExtensionDays named ExtensionDays 0..1
* extension contains PremiumClass named PremiumClass 0..1

* provider only Reference(HL7ATCoreOrganization)
* insurer only Reference(Organization)

* insurance.coverage only Reference(MOPEDCoverage)