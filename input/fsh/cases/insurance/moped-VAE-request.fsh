
Profile: MopedVAERequest
Parent: Claim
Title : "MOPED VAERequest"
Description: "MOPED Profil für die Anfrage der Versichertenanspruchserklärung VAE."
* insert MappingHeaderEinfuegen()
* billablePeriod.start 1..1
* insert ShallPopulateObligation(billablePeriod.start, MopedKHActor)
* insert MopedHandleObligation(status)
* insert ShallPopulateObligation(status, MopedKHActor)
//* extension contains Verlaengerungstage named Verlaengerungstage 0..1
* accident.type from VerdachtArbeitsSchuelerunfallVS
* accident.type 1..1
* accident.type ^short = "KaOrg: Verdacht auf Arbeits-/Schülerunfall"
* insert legacyMapping(accident.type, KaOrg, [[Verdacht auf Arbeits-/Schülerunfall]])
* insert ShallPopulateObligation(accident.type, MopedKHActor)
* accident.date ^short = "KaOrg: Ereignis-/Unfalldatum (echtes Unfalldatum)"
* insert legacyMapping(accident.date, KaOrg, [[Ereignis-/Unfalldatum (echtes Unfalldatum)]])
* insert ShallPopulateObligation(accident.date, MopedKHActor)
* patient only Reference(MopedPatient)
* patient 1..1
* insert MopedHandleObligation(patient)
* use = http://hl7.org/fhir/claim-use#preauthorization
* insert ShallPopulateObligation(use, MopedKHActor)
* type from MopedClaimTypeVS
* type.coding = MopedClaimTypeCS#VAEREQ (exactly)
* insert ShallPopulateObligation(type, MopedKHActor)
* subType from MopedVAERequestSubTypeVS (required)
* subType 1..1
* insert ShallPopulateObligation(subType, MopedKHActor)
* insurer only Reference(SVOrganization)
* insurer 1..1
* insert ShallPopulateObligation(insurer, MopedKHActor) //wegen Fallsplitting
* provider only Reference(KHOrganization)
* provider 1..1
* insert MopedHandleObligation(provider)
* related.claim only Reference(MopedVAERequest) //bei Verlängerungsanträgen als Referenz zum initialen
* insert ShallPopulateObligation(related.claim, MopedKHActor)
* insurance.coverage only Reference(MopedCoverage)
* insurance.coverage 1..1
* insert MopedHandleObligation(insurance.coverage)

* encounter ^slicing.rules = #open
* encounter ^slicing.ordered = false
* encounter ^slicing.discriminator[+].type = #value
* encounter ^slicing.discriminator[=].path = "resolve().type"
* encounter contains MopedEncounter 1..1 and TransferEncounter 0..
* encounter[MopedEncounter] ^short = "Generelle Informationen zu Aufnahme und Entlassung des Patienten"
* encounter[MopedEncounter] only Reference(MopedEncounter)
* encounter[TransferEncounter] ^short = "Informationen zu Verlegungen innerhalb oder zwischen Krankenanstalten"
* encounter[TransferEncounter] only Reference(MopedTransferEncounter)
* insert MopedHandleObligation(encounter[MopedEncounter])
* insert MopedHandleObligation(encounter[TransferEncounter])

* diagnosis.diagnosis[x] 1..1
* diagnosis.diagnosis[x] only Reference(MopedCondition)
* insert ShallPopulateObligation(diagnosis.diagnosis[x], MopedKHActor)

* supportingInfo ^slicing.rules = #open
* supportingInfo ^slicing.discriminator.type = #value
* supportingInfo ^slicing.discriminator.path = "category"
* supportingInfo ^slicing.ordered = false
* supportingInfo.code.coding from VAESupportingInformationCategoryVS
* supportingInfo contains Sonderklasse 1.. and VerdachtFremdverschulden 1..1 and Verlaengerungstage 0..1
* supportingInfo[Sonderklasse] ^short = "KaOrg: Allgemeine Gebührenklasse/Sonderklasse"
* supportingInfo[Sonderklasse].category = ClaimSupportingInformationCategoryCS#KLAS
* insert ShallPopulateObligation(supportingInfo[Sonderklasse].category, MopedKHActor)
* supportingInfo[Sonderklasse].code from SonderklasseVS
* supportingInfo[Sonderklasse].code 1..1
* supportingInfo[Sonderklasse].code ^short = "KaOrg: Verlegung Klasse"
* insert legacyMapping(supportingInfo[Sonderklasse].code, KaOrg, [[Allgemeine Gebührenklasse/Sonderklasse]])
* insert legacyMapping(supportingInfo[Sonderklasse].code, KaOrg, [[Verlegung Klasse]])
* insert ShallPopulateObligation(supportingInfo[Sonderklasse].code, MopedKHActor)
* supportingInfo[Sonderklasse].timingPeriod 1..1
* supportingInfo[Sonderklasse].timingPeriod ^short = "KaOrg: Aufnahme-/Verlegungsdatum"
* insert legacyMapping(supportingInfo[Sonderklasse].timingPeriod, KaOrg, [[Aufnahme-/Verlegungsdatum]])
* insert ShallPopulateObligation(supportingInfo[Sonderklasse].timingPeriod, MopedKHActor)
* insert ShallPopulateObligation(supportingInfo[Sonderklasse], MopedKHActor)

* supportingInfo[VerdachtFremdverschulden].category = ClaimSupportingInformationCategoryCS#FREVER
* insert ShallPopulateObligation(supportingInfo[VerdachtFremdverschulden].category, MopedKHActor)
* supportingInfo[VerdachtFremdverschulden].value[x] only boolean
* supportingInfo[VerdachtFremdverschulden].valueBoolean 1..1
* supportingInfo[VerdachtFremdverschulden].valueBoolean ^short = "KaOrg: Fremdverschulden"
* insert legacyMapping(supportingInfo[VerdachtFremdverschulden].valueBoolean, KaOrg, [[Fremdverschulden]])
* insert ShallPopulateObligation(supportingInfo[VerdachtFremdverschulden].valueBoolean, MopedKHActor)

* supportingInfo[Verlaengerungstage].category = ClaimSupportingInformationCategoryCS#VERLAENG
* insert ShallPopulateObligation(supportingInfo[Verlaengerungstage].category, MopedKHActor)
* supportingInfo[Verlaengerungstage].valueQuantity.value 1..1 //change to unsignedInt in R6
* supportingInfo[Verlaengerungstage].valueQuantity.value ^short = "KaOrg: Anzahl der Verlängerungstage"
* insert legacyMapping(supportingInfo[Verlaengerungstage].valueQuantity.value, KaOrg, [[Anzahl der Verlängerungstage]])
* insert ShallPopulateObligation(supportingInfo[Verlaengerungstage].valueQuantity.value, MopedKHActor)
* supportingInfo[Verlaengerungstage].valueQuantity.unit = "day"
* insert ShallPopulateObligation(supportingInfo[Verlaengerungstage].valueQuantity.unit, MopedKHActor)
* supportingInfo[Verlaengerungstage].valueQuantity.code = #day
* insert ShallPopulateObligation(supportingInfo[Verlaengerungstage].valueQuantity.code, MopedKHActor)
* supportingInfo[Verlaengerungstage].valueQuantity.system = "http://unitsofmeasure.org"
* insert ShallPopulateObligation(supportingInfo[Verlaengerungstage].valueQuantity.system, MopedKHActor)
* insert ShallPopulateObligation(supportingInfo[Verlaengerungstage], MopedKHActor)

//Invariante: Wenn die Verlängerungstage befüllt sind muss auch der vorherige VAERequest (related.claim) befüllt sein