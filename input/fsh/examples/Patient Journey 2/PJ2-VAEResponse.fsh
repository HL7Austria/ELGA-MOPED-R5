Instance: PJ2VAEResponse1
InstanceOf: MopedVAEResponse
Description: "Hackathon Patient Journey 2 Beispiel: VAEResponse 1"
Usage: #example
* meta.profile = "https://elga.moped.at/StructureDefinition/MopedVAEResponse"
* status = #active
* type.coding = http://terminology.hl7.org/CodeSystem/claim-type#institutional
* use = #preauthorization
* created = "2025-02-24"
* patient = Reference(PJ2Patient)
* request = Reference(PJ2VAERequest1)
* insurer = Reference(SV14)
* outcome = #complete
* decision.coding = VAEStatusCS#00
* preAuthPeriod.start = "2024-08-08"
* preAuthPeriod.end = "2024-08-26"
* extension[VerpflegskostenBeitragsbefreiung].extension[Befreiung].valueCoding = VerpflegskostenBeitragsbefreiungCS#N
* extension[VerpflegskostenBeitragsbefreiung].extension[Zeitraum].valuePeriod.start = "2024-08-08"
* extension[VerpflegskostenBeitragsbefreiung].extension[Zeitraum].valuePeriod.start = "2024-08-26"
* extension[MopedSupportingInfoSonderklasse].extension[category].valueCodeableConcept = ClaimSupportingInformationCategoryCS#KLAS
* extension[MopedSupportingInfoSonderklasse].extension[code].valueCodeableConcept = SonderklasseCS#A
* extension[MopedSupportingInfoSonderklasse].extension[category].valueCodeableConcept = ClaimSupportingInformationCategoryCS#KLAS
* extension[MopedSupportingInfoSonderklasse].extension[sequence].valuePositiveInt = 2
* extension[MopedSupportingInfoSonderklasse].extension[timing].valuePeriod.start = "2024-08-08T08:21:00+02:00"
* extension[MopedSupportingInfoVortageanzahlAufKostenbeitrag].extension[category].valueCodeableConcept = ClaimSupportingInformationCategoryCS#VTAGE
* extension[MopedSupportingInfoVortageanzahlAufKostenbeitrag].extension[value].valueQuantity.value = 0
* extension[MopedSupportingInfoVortageanzahlAufKostenbeitrag].extension[sequence].valuePositiveInt = 4