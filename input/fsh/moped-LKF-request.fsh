
Profile: MopedLKFRequest
Parent: Claim
Title: "MOPED LKFRequest"
Description: "MOPED Profil der Claim Ressource für die Leistungsabrechnungsanfrage."


* patient only Reference(HL7ATCorePatient)
* use = http://hl7.org/fhir/claim-use#claim
* type = http://terminology.hl7.org/CodeSystem/claim-type#institutional

* procedure.extension contains AbrechnungsRelevanz named AbrechnungsRelevanz 0..1
* procedure.procedure[x] 1..
* procedure.procedure[x] only Reference(MopedProcedure)
* diagnosisRelatedGroup from LKFAbrechnungsGruppeVS (required)
* diagnosisRelatedGroup. ^short =  "\"Abrechnung - Gruppe:\" Dieses Datenfeld ist mit der Codenummer der zutreffenden Abrechnungsgruppe zu befüllen. Bei Datensätzen von stationären Krankenhausaufenthalten, die keiner leistungsorientier- ten Diagnosenfallgruppe zugeordnet werden, erfolgt ein Eintrag entsprechend der jeweiligen Aufnahmeart."

* insurer only Reference(HL7ATCoreOrganization)
* insurer 1..1
* provider only Reference(HL7ATCoreOrganization)
* provider 1..1
* related.claim only Reference(MopedLKFRequest)
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

* item ^slicing.rules = #open
* item ^slicing.ordered = false
* item ^slicing.discriminator[+].type = #value
* item ^slicing.discriminator[=].path = "category.coding"
* item contains ConditionItem 1..
* item[ConditionItem].diagnosisSequence 1..1
* item[ConditionItem].category.coding from $LKFdiagnoseTyp (required)
* item[ConditionItem].category ^binding.description = "Code für den Typ der LKF Diagnose, der angibt ob es sich um eine Haupt- oder Nebendiagnose handelt"

* extension contains Note named Note 0..
* diagnosis.onAdmission ^definition =  "Gibt an ob die Diagnose bereits bei Aufnahme in den stationären Aufenthalt vorhanden war"
* diagnosis.diagnosis[x] 1..
* diagnosis.diagnosis[x] only Reference(MopedCondition)
* extension contains DiagnoseKnoten named DiagnoseKnoten 0..1
* extension contains LKFPunkte named LKFPunkte 0..
* extension contains FehlerWarnung named FehlerWarnung 0..
* extension contains Fondsrelevanz named Fondsrelevanz 0..1
* extension contains Plausibilitaetskennzeichen named Plausibilitaetskennzeichen 0..1
* extension contains SVAbrechnungsquartal named SVAbrechnungsquartal 0..1