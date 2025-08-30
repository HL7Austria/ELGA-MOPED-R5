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
* insurer = Reference(SV14)
* provider = Reference(OrganizationKrankenhausRied)
* insurance[+].coverage = Reference(PJ2Coverage)
* insurance[=].sequence = 1
* insurance[=].focal = true
* accident.type = VerdachtArbeitsSchuelerunfallCS#0 "Nein/Unbekannt"
* accident.date = "0001"
* accident.extension[DataAbsentReason].valueCode = http://terminology.hl7.org/CodeSystem/data-absent-reason#not-applicable 
* encounter[MopedEncounter] = Reference(PJ2Encounter)
* encounter[MopedTransferEncounter] = Reference(PJ2TransferEncounter1)
* supportingInfo[VerdachtFremdverschulden].category = ClaimSupportingInformationCategoryCS#FREVER
* supportingInfo[VerdachtFremdverschulden].valueBoolean = false
* supportingInfo[VerdachtFremdverschulden].sequence = 1
* supportingInfo[Sonderklasse].sequence = 2
* supportingInfo[Sonderklasse].timingPeriod.start = "2024-08-08T08:21:00+02:00"
* supportingInfo[Sonderklasse].category = ClaimSupportingInformationCategoryCS#KLAS
* supportingInfo[Sonderklasse].code = SonderklasseCS#A
* supportingInfo[Verlaengerungstage].category = ClaimSupportingInformationCategoryCS#VERLAENG
* supportingInfo[Verlaengerungstage].sequence = 3
* supportingInfo[Verlaengerungstage].valueQuantity.value = 0
* supportingInfo[Verlaengerungstage].valueQuantity.unit = "day"
* supportingInfo[Verlaengerungstage].valueQuantity.code = #day
* supportingInfo[Verlaengerungstage].valueQuantity.system = "http://unitsofmeasure.org"