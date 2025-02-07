Profile: MopedCoverageEligibilityRequest
Parent: CoverageEligibilityRequest
Description: "MOPED Profil der CoverageEligibilityRequest Ressource für die Versichertenanspruchserklärung-Anfrage."
Title: "MOPED Coverage Eligibility Request"

* patient only Reference(HL7ATCorePatient)


* extension contains Verlaengerungstage named verlaengerungstage 0..1
* extension contains Sonderklasse named sonderklasse 0..1

* provider only Reference(HL7ATCoreOrganization)
* insurer only Reference(Organization)

* insurance.coverage only Reference(MopedCoverage)