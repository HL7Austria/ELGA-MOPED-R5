Instance: Test2MopedCoverageEligibilityRequest1
InstanceOf: MopedCoverageEligibilityRequest
Usage: #example
* id = "Test2MopedCoverageEligibilityRequest1"
* meta.profile = "http://example.org/StructureDefinition/MopedCoverageEligibilityRequest"
* status = #active
* purpose = #validation
* created = "2024-09-23"
* insurer = Reference(Organization/Test2OrganizationInsurance1)

* insurance.coverage = Reference(Coverage/Test2MopedCoverage)

* patient = Reference(Patient/Test2Patient)
* provider = Reference(Organization/Test2OrganizationKrankenhausRied)

//Sonderklasse
* extension[+].url = "http://example.org/StructureDefinition/moped-ext-sonderklasse"
* extension[=].valueCoding = $Sonderklasse#A


Instance: Test2MopedCoverageEligibilityResponse1
InstanceOf: MopedCoverageEligibilityResponse
Usage: #example
* id = "Test2MopedCoverageEligibilityResponse1"
* meta.profile = "http://example.org/StructureDefinition/MopedCoverageEligibilityResponse"
* status = #active
* purpose = #validation
* created = "2024-09-23"
* insurer = Reference(Organization/Test2OrganizationInsurance1)

* patient = Reference(Patient/Test2Patient)
* request = Reference(CoverageEligibilityRequest/Test2MopedCoverageEligibilityRequest1)

* outcome = #complete

//VAE Beginn & Enddatum
* insurance.benefitPeriod.start = "2024-08-08"
* insurance.benefitPeriod.end = "2024-08-26"
* insurance.coverage = Reference(Coverage/Test2MopedCoverage)

//Fristende
* extension[+].url = "http://example.org/StructureDefinition/moped-ext-fristende"
* extension[=].valueBoolean = true

//VAEStatus
* extension[+].url = "http://example.org/StructureDefinition/moped-ext-vaestatus"
* extension[=].valueCoding = $VAEStatus#00

//VerpflegskostenBeitragsbefreiung
* extension[+].url = "http://example.org/StructureDefinition/moped-ext-verpflegskostenBeitragsbefreiung"
* extension[=].valueCoding = $VerpflegskostenBeitragsbefreiung#N

//VortageanzahlAufKostenbeitrag
* extension[+].url = "http://example.org/StructureDefinition/moped-ext-vortageanzahlAufKostenbeitrag"
* extension[=].valueUnsignedInt = 0
