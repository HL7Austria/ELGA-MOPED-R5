Instance: Test1MOPEDCoverageEligibilityRequest1
InstanceOf: MOPEDCoverageEligibilityRequest
Usage: #example
* id = "Test1MOPEDCoverageEligibilityRequest1"
* meta.profile = "http://example.org/StructureDefinition/MOPEDCoverageEligibilityRequest"
* status = #active
* purpose = #validation
* created = "2024-09-17"
* insurer = Reference(Organization/Test1OrganizationInsurance1)

* insurance.coverage = Reference(Coverage/Test1SVCCoverage)

* patient = Reference(Patient/Test1Patient)
* provider = Reference(Organization/Test1OrganizationHerzJesuKrankenhaus)

//Verlaengerungstage
* extension[+].url = "http://example.org/StructureDefinition/moped-ext-verlaengerungstage"
* extension[=].valueUnsignedInt = 0

//PremiumClass
* extension[+].url = "http://example.org/StructureDefinition/moped-ext-premiumClass"
* extension[=].valueCoding = $Sonderklasse#A


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
* extension[+].url = "http://example.org/StructureDefinition/moped-ext-fristende"
* extension[=].valueBoolean = true

//VAEStatus
* extension[+].url = "http://example.org/StructureDefinition/moped-ext-vaeStatus"
* extension[=].valueCoding = $VAEStatus#00

//VerpflegskostenBeitragsbefreiung
* extension[+].url = "http://example.org/StructureDefinition/moped-ext-verpflegskostenBeitragsbefreiung"
* extension[=].valueCoding = $VerpflegskostenBeitragsbefreiung#N

//VortageanzahlAufKostenbeitrag
* extension[+].url = "http://example.org/StructureDefinition/moped-ext-vortageanzahlAufKostenbeitrag"
* extension[=].valueUnsignedInt = 2
