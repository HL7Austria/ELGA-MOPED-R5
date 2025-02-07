Instance: Test1MopedCoverageEligibilityRequest1
InstanceOf: MopedCoverageEligibilityRequest
Usage: #example
* id = "Test1MopedCoverageEligibilityRequest1"
* meta.profile = "http://example.org/StructureDefinition/MopedCoverageEligibilityRequest"
* status = #active
* purpose = #validation
* created = "2024-09-17"
* insurer = Reference(Organization/Test1OrganizationInsurance1)

* insurance.coverage = Reference(Coverage/Test1MopedCoverage)

* patient = Reference(Patient/Test1Patient)
* provider = Reference(Organization/Test1OrganizationHerzJesuKrankenhaus)

//Verlaengerungstage
* extension[+].url = "http://example.org/StructureDefinition/moped-ext-verlaengerungstage"
* extension[=].valueUnsignedInt = 0

//Sonderklasse
* extension[+].url = "http://example.org/StructureDefinition/moped-ext-sonderklasse"
* extension[=].valueCoding = $Sonderklasse#A


Instance: Test1MopedCoverageEligibilityResponse1
InstanceOf: MopedCoverageEligibilityResponse
Usage: #example
* id = "Test1MopedCoverageEligibilityResponse1"
* meta.profile = "http://example.org/StructureDefinition/MopedCoverageEligibilityResponse"
* status = #active
* purpose = #validation
* created = "2024-09-17"
* insurer = Reference(Organization/Test1OrganizationInsurance1)

* patient = Reference(Patient/Test1Patient)
* request = Reference(CoverageEligibilityRequest/Test1MopedCoverageEligibilityRequest1)

* outcome = #complete

//VAE Beginn & Enddatum
* insurance.benefitPeriod.start = "2024-02-22"
* insurance.benefitPeriod.end = "2024-08-21"
* insurance.coverage = Reference(Coverage/Test1MopedCoverage)

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
