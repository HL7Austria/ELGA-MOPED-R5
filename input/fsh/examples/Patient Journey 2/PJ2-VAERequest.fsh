Instance: PJ2VAERequest1
InstanceOf: MopedVAERequest
Description: "Hackathon Patient Journey 2 Beispiel: VAERequest 1"
Usage: #example
* meta.profile = "https://elga.moped.at/StructureDefinition/MopedVAERequest"
* use = http://hl7.org/fhir/claim-use#preauthorization
* created = "2025-02-17"
* status = http://hl7.org/fhir/fm-status#active
* type = http://terminology.hl7.org/CodeSystem/claim-type#institutional
* patient.reference = "Patient?identifier=urn:oid:1.2.40.0.10.1.4.3.1|2873111374"
* extension[Sonderklasse].valueCoding = SonderklasseCS#A
* extension[Verlaengerungstage].valueUnsignedInt = 0
* insurer.reference = "Organization?identifier=http://svc.co.at/CodeSystem/ecard-svt-cs|14"
* provider.reference = "Organization?identifier=urn:ietf:rfc:3986|urn:oid:1.3.6.1.4.1.36124.5.427"
* insurance[+].coverage.reference = "Coverage?identifier=FJK5MCDPMRCY"
* insurance[=].sequence = 1
* insurance[=].focal = true
* accident.type = VerdachtArbeitsSchuelerunfallCS#0 "Nein/Unbekannt"
* accident.date = "0001"
* accident.extension[DataAbsentReason].valueCode = http://terminology.hl7.org/CodeSystem/data-absent-reason#not-applicable 
* encounter[MopedEncounter].reference = "Encounter?identifier=urn:oid:1.3.6.1.4.1.36124.5.427|324200063"
* encounter[+] = Reference(PJ2TransferEncounter1)
* supportingInfo[VerdachtFremdverschulden].category = http://terminology.hl7.org/CodeSystem/claim-informationcategory#info
* supportingInfo[VerdachtFremdverschulden].code.coding = VAESupportingInformationTypesCS#FREVER
* supportingInfo[VerdachtFremdverschulden].valueBoolean = false
* supportingInfo[VerdachtFremdverschulden].sequence = 1

