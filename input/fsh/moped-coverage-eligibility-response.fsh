
Profile: MOPEDCoverageEligibilityResponse
Parent: CoverageEligibilityResponse
Description: "MOPED Profil der CoverageEligibilityResponse Ressource für die Versichertenanspruchserklärung-Antwort."


* patient only Reference(HL7ATCorePatient)

* extension contains EndOfEligibility named EndOfEligibility 0..1
* extension contains VAEStatus named VAEStatus 0..1
* extension contains MealCostExcemption named MealCostExcemption 0..1
* extension contains NumberOfPreviouslyPaidDays named NumberOfPreviouslyPaidDays 0..1

* insurance.coverage only Reference(SVCCoverage)