Instance: PJ1VAEResponse1
InstanceOf: MopedVAEResponse
Description: "Hackathon Patient Journey 1 Beispiel: VAEResponse 1"
Usage: #example
* meta.profile = "https://elga.moped.at/StructureDefinition/MopedVAEResponse"
* status = #active
* type.coding = http://terminology.hl7.org/CodeSystem/claim-type#institutional
* use = #preauthorization
* created = "2025-02-18"
* patient = Reference(PJ1Patient)
* request = Reference(PJ1VAERequest1)
* insurer = Reference(oegk-wien)
* outcome = #complete
* decision.coding = VAEStatusCS#00
* extension[Sonderklasse].valueCoding = SonderklasseCS#A
* preAuthPeriod.start = "2024-02-22"
* preAuthPeriod.end = "2024-08-21"
* extension[VerpflegskostenBeitragsbefreiung].extension[Befreiung].valueCoding = VerpflegskostenBeitragsbefreiungCS#N
* extension[VerpflegskostenBeitragsbefreiung].extension[Zeitraum].valuePeriod.start = "2024-02-22"
* extension[VerpflegskostenBeitragsbefreiung].extension[Zeitraum].valuePeriod.end = "2024-08-21"
* extension[VortageanzahlAufKostenbeitrag].valueUnsignedInt = 2
