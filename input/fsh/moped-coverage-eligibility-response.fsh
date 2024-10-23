
Profile: MOPEDCoverageEligibilityResponse
Parent: CoverageEligibilityResponse
Description: "MOPED Profil der CoverageEligibilityResponse Ressource für die Versichertenanspruchserklärung-Antwort."


* patient only Reference(HL7ATCorePatient)

* extension contains EndOfEligibility named endeDerBerechtigung 0..1
* extension contains VAEStatus named vaeStatus 0..1
* extension contains MealCostExcemption named verpflegskostenBeitragsbefreiung 0..1
* extension contains NumberOfPreviouslyPaidDays named vortageanzahlAufKostenbeitrag 0..1

* insurance.coverage only Reference(SVCCoverage)