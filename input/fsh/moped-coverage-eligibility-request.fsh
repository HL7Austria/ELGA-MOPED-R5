
Profile: MOPEDCoverageEligibilityRequest
Parent: CoverageEligibilityRequest
Description: "MOPED Profil der CoverageEligibilityRequest Ressource für die Versichertenanspruchserklärung-Anfrage."


* patient only Reference(HL7ATCorePatient)


* extension contains Verlaengerungstage named verlängerungstage 0..1
* extension contains PremiumClass named premiumKlasse 0..1

* provider only Reference(HL7ATCoreOrganization)
* insurer only Reference(Organization)

* insurance.coverage only Reference(SVCCoverage)