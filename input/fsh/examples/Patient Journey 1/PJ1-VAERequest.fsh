Instance: PJ1VAERequest1
InstanceOf: MopedVAERequest
Description: "Hackathon Patient Journey 1 Beispiel: VAERequest 1"
Usage: #example
* meta.profile = "https://elga.moped.at/StructureDefinition/MopedVAERequest"
* use = http://hl7.org/fhir/claim-use#preauthorization
* created = "2025-02-17"
* status = http://hl7.org/fhir/fm-status#active
* type.coding = MopedClaimTypeCS#VAEREQ
* patient = Reference(PJ1Patient)
* insurer = Reference(SV11)
* provider = Reference(OrganizationHerzJesuKrankenhaus)
* insurance[+].coverage = Reference(PJ1Coverage)
* insurance[=].sequence = 1
* insurance[=].focal = true
* accident.type = VerdachtArbeitsSchuelerunfallCS#0 "Nein/Unbekannt"
* accident.date = "0001"
* accident.extension[DataAbsentReason].valueCode = http://terminology.hl7.org/CodeSystem/data-absent-reason#not-applicable 
* encounter[MopedEncounter] = Reference(PJ1Encounter)
* encounter[MopedTransferEncounter] = Reference(PJ1TransferEncounter1)
* supportingInfo[VerdachtFremdverschulden].category = ClaimSupportingInformationCategoryCS#FREVER
* supportingInfo[VerdachtFremdverschulden].valueBoolean = false
* supportingInfo[VerdachtFremdverschulden].sequence = 1
* supportingInfo[Sonderklasse].sequence = 2
* supportingInfo[Sonderklasse].category = ClaimSupportingInformationCategoryCS#KLAS
* supportingInfo[Sonderklasse].code = SonderklasseCS#A
* supportingInfo[Sonderklasse].timingPeriod.start = "2024-02-22T19:33:00+02:00"
* supportingInfo[Verlaengerungstage].category = ClaimSupportingInformationCategoryCS#VERLAENG
* supportingInfo[Verlaengerungstage].sequence = 3
* supportingInfo[Verlaengerungstage].valueQuantity.value = 0
* supportingInfo[Verlaengerungstage].valueQuantity.unit = "day"
* supportingInfo[Verlaengerungstage].valueQuantity.code = #day
* supportingInfo[Verlaengerungstage].valueQuantity.system = "http://unitsofmeasure.org"
