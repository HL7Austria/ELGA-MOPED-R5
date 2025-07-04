
Profile: MopedVAERequest
Parent: Claim
Title : "MOPED VAERequest"
Description: "MOPED Profil für die Anfrage der Versichertenanspruchserklärung VAE."

//* extension contains Verlaengerungstage named Verlaengerungstage 0..1
* accident.type from VerdachtArbeitsSchuelerunfallVS
* extension contains Sonderklasse named Sonderklasse 0..1
* patient only Reference(HL7ATCorePatient)
* use = http://hl7.org/fhir/claim-use#preauthorization
* type = http://terminology.hl7.org/CodeSystem/claim-type#institutional

* insurer only Reference(HL7ATCoreOrganization)
* insurer 1..1
* provider only Reference(HL7ATCoreOrganization)
* provider 1..1
* related.claim only Reference(MopedVAERequest)
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
* supportingInfo ^slicing.discriminator.path = "code.coding"
* supportingInfo ^slicing.ordered = false
* supportingInfo contains /*Sonderklasse 0.. and*/ VerdachtFremdverschulden 0..1 and Verlaengerungstage 0..1
/* supportingInfo[Sonderklasse] ^short = "Allgemeine Gebührenklasse/Sonderklasse"
* supportingInfo[Sonderklasse].category = http://terminology.hl7.org/CodeSystem/claiminformationcategory#info
* supportingInfo[Sonderklasse].code = VAESupportingInformationTypesCS#KLAS
* supportingInfo[Sonderklasse].value[x] only Coding
* supportingInfo[Sonderklasse].value[x] from SonderklasseVS
* supportingInfo[Sonderklasse].timingPeriod 1..1*/

* supportingInfo[VerdachtFremdverschulden] ^short = "Verdacht auf Fremdversschluden"
* supportingInfo[VerdachtFremdverschulden].category = http://terminology.hl7.org/CodeSystem/claiminformationcategory#info
* supportingInfo[VerdachtFremdverschulden].code.coding = ClaimSupportingInformationTypesCS#FREVER
* supportingInfo[VerdachtFremdverschulden].value[x] only boolean

* supportingInfo[Verlaengerungstage] ^short = "Anzahl der Verlängerungstage"
* supportingInfo[Verlaengerungstage].category = http://terminology.hl7.org/CodeSystem/claiminformationcategory#info
* supportingInfo[Verlaengerungstage].code.coding = ClaimSupportingInformationTypesCS#VERLAENG
* supportingInfo[Verlaengerungstage].valueQuantity.value 1..1
* supportingInfo[Verlaengerungstage].valueQuantity.unit = "day"
* supportingInfo[Verlaengerungstage].valueQuantity.code = #day
* supportingInfo[Verlaengerungstage].valueQuantity.system = "http://unitsofmeasure.org"
