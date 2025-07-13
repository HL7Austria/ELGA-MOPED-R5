
Profile: MopedVAERequest
Parent: Claim
Title : "MOPED VAERequest"
Description: "MOPED Profil für die Anfrage der Versichertenanspruchserklärung VAE."

//* extension contains Verlaengerungstage named Verlaengerungstage 0..1
* accident.type from VerdachtArbeitsSchuelerunfallVS
* accident.type 1..1
* accident.type ^short = "Verdacht auf Fremdversschluden"
* patient only Reference(HL7ATCorePatient)
* patient 1..1
* use = http://hl7.org/fhir/claim-use#preauthorization
* type = http://terminology.hl7.org/CodeSystem/claim-type#institutional

* insurer only Reference(SVOrganization)
* insurer 1..1
* provider only Reference(KHOrganization)
* provider 1..1
* related.claim only Reference(MopedVAERequest) //bei Verlängerungsanträgen als Referenz zum initialen
* insurance.coverage only Reference(MopedCoverage)
* insurance.coverage 1..1

* encounter ^slicing.rules = #open
* encounter ^slicing.ordered = false
* encounter ^slicing.discriminator[+].type = #profile
* encounter ^slicing.discriminator[=].path = "resolve()"
* encounter contains MopedEncounter 1..1 and TransferEncounter 0..
* encounter[MopedEncounter] ^short = "Generelle Informationen zu Aufnahme und Entlassung des Patienten"
* encounter[MopedEncounter] only Reference(MopedEncounter)
* encounter[TransferEncounter] ^short = "Informationen zu Verlegungen innerhalb oder zwischen Krankenanstalten"
* encounter[TransferEncounter] only Reference(MopedTransferEncounter)

* diagnosis.onAdmission ^definition =  "Gibt an ob die Diagnose bereits bei Aufnahme in den stationären Aufenthalt vorhanden war"


* supportingInfo ^slicing.rules = #open
* supportingInfo ^slicing.discriminator.type = #value
* supportingInfo ^slicing.discriminator.path = "category"
* supportingInfo ^slicing.ordered = false
* supportingInfo.code.coding from VAESupportingInformationCategoryVS
* supportingInfo contains Sonderklasse 0.. and VerdachtFremdverschulden 1..1 and Verlaengerungstage 0..1
* supportingInfo[Sonderklasse] ^short = "Allgemeine Gebührenklasse/Sonderklasse"
* supportingInfo[Sonderklasse].category = ClaimSupportingInformationCategoryCS#KLAS
* supportingInfo[Sonderklasse].code from SonderklasseVS
* supportingInfo[Sonderklasse].code 1..1
* supportingInfo[Sonderklasse].timingPeriod 1..1

* supportingInfo[VerdachtFremdverschulden] ^short = "Verdacht auf Fremdversschluden"
* supportingInfo[VerdachtFremdverschulden].category = ClaimSupportingInformationCategoryCS#FREVER
* supportingInfo[VerdachtFremdverschulden].value[x] only boolean
* supportingInfo[VerdachtFremdverschulden].valueBoolean 1..1

* supportingInfo[Verlaengerungstage] ^short = "Anzahl der Verlängerungstage"
* supportingInfo[Verlaengerungstage].category = ClaimSupportingInformationCategoryCS#VERLAENG
* supportingInfo[Verlaengerungstage].valueQuantity.value 1..1 //change to unsignedInt in R6
* supportingInfo[Verlaengerungstage].valueQuantity.value ^short = "Verlängerungstage"
* supportingInfo[Verlaengerungstage].valueQuantity.unit = "day"
* supportingInfo[Verlaengerungstage].valueQuantity.code = #day
* supportingInfo[Verlaengerungstage].valueQuantity.system = "http://unitsofmeasure.org"


//Invariante: Wenn die Verlängerungstage befüllt sind muss auch der vorherige VAERequest (related.claim) befüllt sein