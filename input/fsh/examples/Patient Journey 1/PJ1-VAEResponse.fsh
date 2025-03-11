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
* insurer = Reference(oegk-wien)
* request = Reference(PJ1VAERequest1)
* requestor = Reference(OrganizationHerzJesuKrankenhaus)
* insurance[+].coverage = Reference(PJ1Coverage)
* insurance[=].sequence = 1
* insurance[=].focal = true
* outcome = #complete
* decision.coding = VAEStatusCS#00
* preAuthPeriod.start = "2024-02-22"
* preAuthPeriod.end = "2024-08-21"
* extension[VerpflegskostenBeitragsbefreiung].valueCoding = VerpflegskostenBeitragsbefreiungCS#N
* extension[VortageanzahlAufKostenbeitrag].valueUnsignedInt = 2
