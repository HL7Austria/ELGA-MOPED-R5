Instance: PJ1VAEResponse1
InstanceOf: MopedVAEResponse
Description: "Hackathon Patient Journey 1 Beispiel: VAEResponse 1"
Usage: #example
* meta.profile = "https://elga.moped.at/StructureDefinition/MopedVAEResponse"
* status = #active
* type.coding.code = #institutional
* use = #preauthorization
* created = "2025-02-18"
* patient.reference = "Patient?identifier=urn:oid:1.2.40.0.10.1.4.3.1|9994210469"
* insurer.reference = "Organization?identifier=http://svc.co.at/CodeSystem/ecard-svt-cs|11"
* request = Reference(PJ1VAERequest1)
* requestor.reference = "Organization?identifier=urn:ietf:rfc:3986|urn:oid:1.3.6.1.4.1.36124.5.914"
* insurance[+].coverage = Reference(PJ1Coverage)
* insurance[=].sequence = 1
* insurance[=].focal = true
* outcome = #complete
* decision.coding = VAEStatusCS#00
* preAuthPeriod.start = "2024-02-22"
* preAuthPeriod.end = "2024-08-21"
* extension[VerpflegskostenBeitragsbefreiung].valueCoding = VerpflegskostenBeitragsbefreiungCS#N
* extension[VortageanzahlAufKostenbeitrag].valueUnsignedInt = 2
