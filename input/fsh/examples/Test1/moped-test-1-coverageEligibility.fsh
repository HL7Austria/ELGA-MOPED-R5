Instance: Test1MOPEDCoverageEligibilityRequest1
InstanceOf: MOPEDCoverageEligibilityRequest
Usage: #example
* id = "Test1MOPEDCoverageEligibilityRequest1"
* meta.profile = "http://example.org/StructureDefinition/MOPEDCoverageEligibilityRequest"
* status = #active
* purpose = #validation
* created = "2024-09-17"
* insurer = Reference("Organization/Test1OrganizationInsurance1")

* insurance.coverage = Reference(Coverage/Test1SVCCoverage)

* patient = Reference(Patient/Test1Patient)
* provider = Reference(Organization/Test1OrganizationHerzJesuKrankenhaus)

//ExtensionDays
* extension[+].url = "http://example.org/StructureDefinition/moped-ext-extensionDays"
* extension[=].valueUnsignedInt = 0

//PremiumClass
* extension[+].url = "http://example.org/StructureDefinition/moped-ext-PremiumClass"
* extension[=].valueCode = #A


Instance: Test1MOPEDCoverageEligibilityResponse1
InstanceOf: MOPEDCoverageEligibilityResponse
Usage: #example
* id = "Test1MOPEDCoverageEligibilityResponse1"
* meta.profile = "http://example.org/StructureDefinition/MOPEDCoverageEligibilityResponse"
* status = #active
* purpose = #validation
* created = "2024-09-17"
* insurer = Reference(Organization/Test1OrganizationInsurance1)

* patient = Reference(Patient/Test1Patient)
* request = Reference(CoverageEligibilityRequest/Test1MOPEDCoverageEligibilityRequest1)

* outcome = #complete

//VAE Beginn & Enddatum
* insurance.benefitPeriod.start = "2024-02-22"
* insurance.benefitPeriod.end = "2024-08-21"
* insurance.coverage = Reference(Coverage/Test1SVCCoverage)

//Fristende
* extension[+].url = "http://example.org/StructureDefinition/moped-ext-EndOfEligibility"
* extension[=].valueBoolean = true

//VAEStatus
* extension[+].url = "http://example.org/StructureDefinition/moped-ext-vaestatus"
* extension[=].valueCode = #00

//MealcostExcemption
* extension[+].url = "http://example.org/StructureDefinition/moped-ext-MealCostExcemption"
* extension[=].valueCode = #N

//NumberOfPreviouslyPaidDays
* extension[+].url = "http://example.org/StructureDefinition/moped-ext-NumberOfPreviouslyPaidDays"
* extension[=].valueUnsignedInt = 2
