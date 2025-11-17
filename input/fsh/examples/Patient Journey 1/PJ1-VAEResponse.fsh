Instance: PJ1VAEResponse1
InstanceOf: MopedVAEResponse
Description: "Hackathon Patient Journey 1 Beispiel: VAEResponse 1"
Usage: #example
* meta.profile = "https://elga.moped.at/StructureDefinition/MopedVAEResponse"
* status = #active
* type.coding = MopedClaimTypeCS#VAERESP
* use = #preauthorization
* created = "2025-02-18"
* patient = Reference(PJ1Patient)
* request = Reference(PJ1VAERequest1)
* insurer = Reference(SV11)
* requestor = Reference(OrganizationHerzJesuKrankenhaus)
* outcome = #complete
* decision.coding = VAEStatusCS#00
* preAuthPeriod.start = "2024-02-22"
* preAuthPeriod.end = "2024-08-21"
* extension[VerpflegskostenBeitragsbefreiung].extension[Befreiung].valueCoding = VerpflegskostenBeitragsbefreiungCS#N
* extension[VerpflegskostenBeitragsbefreiung].extension[Zeitraum].valuePeriod.start = "2024-02-22"
* extension[VerpflegskostenBeitragsbefreiung].extension[Zeitraum].valuePeriod.end = "2024-08-21"
* extension[MopedSupportingInfoSonderklasse].extension[category].valueCodeableConcept = ClaimSupportingInformationCategoryCS#KLAS
* extension[MopedSupportingInfoSonderklasse].extension[code].valueCodeableConcept = SonderklasseCS#A
* extension[MopedSupportingInfoSonderklasse].extension[sequence].valuePositiveInt = 2
* extension[MopedSupportingInfoSonderklasse].extension[timing].valuePeriod.start = "2024-02-22T19:33:00+02:00"
* extension[MopedSupportingInfoVortageanzahlAufKostenbeitrag].extension[category].valueCodeableConcept = ClaimSupportingInformationCategoryCS#VTAGE
* extension[MopedSupportingInfoVortageanzahlAufKostenbeitrag].extension[value].valueQuantity.value = 2
* extension[MopedSupportingInfoVortageanzahlAufKostenbeitrag].extension[sequence].valuePositiveInt = 4
