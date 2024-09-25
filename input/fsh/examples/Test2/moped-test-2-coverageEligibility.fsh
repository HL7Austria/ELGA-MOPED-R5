Instance: Test2MOPEDCoverageEligibilityRequest1
InstanceOf: MOPEDCoverageEligibilityRequest
Usage: #example
* id = "Test2MOPEDCoverageEligibilityRequest1"
* meta.profile = "http://example.org/StructureDefinition/MOPEDCoverageEligibilityRequest"
* status = #active
* purpose = #validation
* created = "2024-09-23"
* insurer = Reference(Organization/Test2OrganizationInsurance1)

* insurance.coverage = Reference(Coverage/Test2SVCCoverage)

* patient = Reference(Patient/Test2Patient)
* provider = Reference(Organization/Test2OrganizationKrankenhausRied)

//PremiumClass
* extension[+].url = "http://example.org/StructureDefinition/moped-ext-PremiumClass"
* extension[=].valueCoding = $Sonderklasse#A


Instance: Test2MOPEDCoverageEligibilityResponse1
InstanceOf: MOPEDCoverageEligibilityResponse
Usage: #example
* id = "Test2MOPEDCoverageEligibilityResponse1"
* meta.profile = "http://example.org/StructureDefinition/MOPEDCoverageEligibilityResponse"
* status = #active
* purpose = #validation
* created = "2024-09-23"
* insurer = Reference(Organization/Test2OrganizationInsurance1)

* patient = Reference(Patient/Test2Patient)
* request = Reference(CoverageEligibilityRequest/Test2MOPEDCoverageEligibilityRequest1)

* outcome = #complete

//VAE Beginn & Enddatum
* insurance.benefitPeriod.start = "2024-08-08"
* insurance.benefitPeriod.end = "2024-08-26"
* insurance.coverage = Reference(Coverage/Test2SVCCoverage)

//Fristende
* extension[+].url = "http://example.org/StructureDefinition/moped-ext-EndOfEligibility"
* extension[=].valueBoolean = true

//VAEStatus
* extension[+].url = "http://example.org/StructureDefinition/moped-ext-vaestatus"
* extension[=].valueCoding = $VAEStatus#00

//MealcostExcemption
* extension[+].url = "http://example.org/StructureDefinition/moped-ext-MealCostExcemption"
* extension[=].valueCoding = $MealCostExcemption#N

//NumberOfPreviouslyPaidDays
* extension[+].url = "http://example.org/StructureDefinition/moped-ext-NumberOfPreviouslyPaidDays"
* extension[=].valueUnsignedInt = 0
