
Profile: MopedVAERequest
Parent: Claim
Title : "MOPED VAERequest"
Description: "MOPED Profil für die Anfrage der Versichertenanspruchserklärung VAE."
* insert MopedHandleObligation(status)
//* extension contains Verlaengerungstage named Verlaengerungstage 0..1
* accident.type from VerdachtArbeitsSchuelerunfallVS
* accident.type 1..1
* accident.type ^short = "KaOrg: Verdacht auf Arbeits-/Schülerunfall"
* insert ShallPopulateObligation(accident.type, MopedKHActor)
* accident.date ^short = "KaOrg: Ereignis-/Unfalldatum (echtes Unfalldatum)"
* insert ShallPopulateObligation(accident.date, MopedKHActor)
* patient only Reference(HL7ATCorePatient)
* patient 1..1
* insert MopedHandleObligation(patient)
* use = http://hl7.org/fhir/claim-use#preauthorization
* insert ShallPopulateObligation(use, MopedKHActor)
* type = http://terminology.hl7.org/CodeSystem/claim-type#institutional
* insert ShallPopulateObligation(type, MopedKHActor)
* insurer only Reference(SVOrganization)
* insurer 1..1
* insert MopedHandleObligation(insurer)
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
* encounter ^slicing.discriminator[+].type = #profile
* encounter ^slicing.discriminator[=].path = "resolve()"
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
* supportingInfo contains Sonderklasse 0.. and VerdachtFremdverschulden 1..1 and Verlaengerungstage 0..1
* supportingInfo[Sonderklasse] ^short = "KaOrg: Allgemeine Gebührenklasse/Sonderklasse"
* supportingInfo[Sonderklasse].category = ClaimSupportingInformationCategoryCS#KLAS
* supportingInfo[Sonderklasse].code from SonderklasseVS
* supportingInfo[Sonderklasse].code 1..1
* supportingInfo[Sonderklasse].code ^short = "KaOrg: Verlegung Klasse"
* supportingInfo[Sonderklasse].timingPeriod 1..1
* supportingInfo[Sonderklasse].timingPeriod ^short = "KaOrg: Aufnahme-, Verlegungsdatum"
* insert ShallPopulateObligation(supportingInfo[Sonderklasse], MopedKHActor)

* supportingInfo[VerdachtFremdverschulden] ^short = "KaOrg: Fremdversschluden"
* supportingInfo[VerdachtFremdverschulden].category = ClaimSupportingInformationCategoryCS#FREVER
* supportingInfo[VerdachtFremdverschulden].value[x] only boolean
* supportingInfo[VerdachtFremdverschulden].valueBoolean 1..1
* insert ShallPopulateObligation(supportingInfo[VerdachtFremdverschulden], MopedKHActor)

* supportingInfo[Verlaengerungstage] ^short = "KaOrg: Anzahl der Verlängerungstage"
* supportingInfo[Verlaengerungstage].category = ClaimSupportingInformationCategoryCS#VERLAENG
* supportingInfo[Verlaengerungstage].valueQuantity.value 1..1 //change to unsignedInt in R6
* supportingInfo[Verlaengerungstage].valueQuantity.value ^short = "Verlängerungstage"
* supportingInfo[Verlaengerungstage].valueQuantity.unit = "day"
* supportingInfo[Verlaengerungstage].valueQuantity.code = #day
* supportingInfo[Verlaengerungstage].valueQuantity.system = "http://unitsofmeasure.org"
* insert ShallPopulateObligation(supportingInfo[Verlaengerungstage], MopedKHActor)

//Invariante: Wenn die Verlängerungstage befüllt sind muss auch der vorherige VAERequest (related.claim) befüllt sein