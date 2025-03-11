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
* insurer = Reference(oegk-oberoesterreich)
* request = Reference(PJ2VAERequest1)
* requestor = Reference(OrganizationKrankenhausRied)
* insurance[+].coverage = Reference(PJ2Coverage)
* insurance[=].sequence = 1
* insurance[=].focal = true
* outcome = #complete
* decision.coding = VAEStatusCS#00
* preAuthPeriod.start = "2024-08-08"
* preAuthPeriod.end = "2024-08-26"
* extension[VerpflegskostenBeitragsbefreiung].valueCoding = VerpflegskostenBeitragsbefreiungCS#N
* extension[VortageanzahlAufKostenbeitrag].valueUnsignedInt = 0
