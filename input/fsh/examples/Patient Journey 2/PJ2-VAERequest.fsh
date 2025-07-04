Instance: PJ2VAERequest1
InstanceOf: MopedVAERequest
Description: "Hackathon Patient Journey 2 Beispiel: VAERequest 1"
Usage: #example
* meta.profile = "https://elga.moped.at/StructureDefinition/MopedVAERequest"
* use = http://hl7.org/fhir/claim-use#preauthorization
* created = "2025-02-17"
* status = http://hl7.org/fhir/fm-status#active
* type = http://terminology.hl7.org/CodeSystem/claim-type#institutional
* patient = Reference(PJ2Patient)
* extension[Sonderklasse].valueCoding = SonderklasseCS#A
* extension[Verlaengerungstage].valueUnsignedInt = 0
* insurer = Reference(oegk-oberoesterreich)
* provider = Reference(OrganizationKrankenhausRied)
* insurance[+].coverage = Reference(PJ2Coverage)
* insurance[=].sequence = 1
* insurance[=].focal = true
* accident.type = VerdachtArbeitsSchuelerunfallCS#0 "Nein/Unbekannt"
* accident.date = "0001"
* accident.extension[DataAbsentReason].valueCode = http://terminology.hl7.org/CodeSystem/data-absent-reason#not-applicable 
* encounter[MopedEncounter] = Reference(PJ2Encounter)
* encounter[MopedTransferEncounter] = Reference(PJ2TransferEncounter1)
* supportingInfo[VerdachtFremdverschulden].category = http://terminology.hl7.org/CodeSystem/claiminformationcategory#info
* supportingInfo[VerdachtFremdverschulden].code.coding = ClaimSupportingInformationTypesCS#FREVER
* supportingInfo[VerdachtFremdverschulden].valueBoolean = false
* supportingInfo[VerdachtFremdverschulden].sequence = 1

