Instance: PJ2VAEResponse1
InstanceOf: MopedVAEResponse
Description: "Hackathon Patient Journey 2 Beispiel: VAEResponse 1"
Usage: #example
* meta.profile = "https://elga.moped.at/StructureDefinition/MopedVAEResponse"
* status = #active
* type.coding = http://terminology.hl7.org/CodeSystem/claim-type#institutional
* use = #preauthorization
* created = "2025-02-24"
* patient.reference = "Patient?identifier=urn:oid:1.2.40.0.10.1.4.3.1|2873111374"
* insurer.reference = "Organization?identifier=http://svc.co.at/CodeSystem/ecard-svt-cs|14"
* request = Reference(PJ2VAERequest1)
* requestor.reference = "Organization?identifier=urn:ietf:rfc:3986|urn:oid:1.3.6.1.4.1.36124.5.427"
* insurance[+].coverage.reference = "Coverage?identifier=FJK5MCDPMRCY"
* insurance[=].sequence = 1
* insurance[=].focal = true
* outcome = #complete
* decision.coding = VAEStatusCS#00
* preAuthPeriod.start = "2024-08-08"
* preAuthPeriod.end = "2024-08-26"
* extension[VerpflegskostenBeitragsbefreiung].valueCoding = VerpflegskostenBeitragsbefreiungCS#N
* extension[VortageanzahlAufKostenbeitrag].valueUnsignedInt = 0
