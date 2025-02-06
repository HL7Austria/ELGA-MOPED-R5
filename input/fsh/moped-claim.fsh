
Profile: MOPEDClaim
Parent: Claim
Description: "MOPED Profil der Claim Ressource für die Leistungsabrechnungsanfrage."


* patient only Reference(HL7ATCorePatient)
* use = http://hl7.org/fhir/claim-use#claim
* type = http://terminology.hl7.org/CodeSystem/claim-type#institutional

* procedure.extension contains AbrechnungsRelevanz named AbrechnungsRelevanz 0..1
* diagnosisRelatedGroup from LKFAbrechnungsGruppe (required)
* diagnosisRelatedGroup. ^short =  "\"Abrechnung - Gruppe:\" Dieses Datenfeld ist mit der Codenummer der zutreffenden Abrechnungsgruppe zu befüllen. Bei Datensätzen von stationären Krankenhausaufenthalten, die keiner leistungsorientier- ten Diagnosenfallgruppe zugeordnet werden, erfolgt ein Eintrag entsprechend der jeweiligen Aufnahmeart."

* insurer only Reference(HL7ATCoreOrganization)
* insurer 1..1
* provider only Reference(HL7ATCoreOrganization)
* provider 1..1
* related.claim only Reference(MOPEDClaim)
* insurance.coverage only Reference(MOPEDCoverage)
* insurance.coverage 1..1
* encounter ^slicing.rules = #open
* encounter ^slicing.ordered = false
* encounter ^slicing.discriminator[+].type = #profile
* encounter ^slicing.discriminator[=].path = "resolve()"
* encounter contains MopedEncounterKH 1..1 and TransferEncounter 0..
* encounter[MopedEncounterKH] ^short = "Generelle Informationen zu Aufnahme und Entlassung des Patienten"
* encounter[MopedEncounterKH] only Reference(MOPEDEncounterKH)
* encounter[TransferEncounter] ^short = "Informationen zu Verlegungen innerhalb oder zwischen Krankenanstalten"
* encounter[TransferEncounter] only Reference(MOPEDTransferEncounter)

* extension contains Note named Note 0..
* diagnosis.onAdmission ^definition =  "Gibt an ob die Diagnose bereits bei Aufnahme in den stationären Aufenthalt vorhanden war"
* extension contains DiagnosisRelatedNode named DiagnosisRelatedNode 0..1
* extension contains LKFPunkte named LKFPunkte 0..
* extension contains ErrorWarning named ErrorWarning 0..
* extension contains Fondsrelevanz named Fondsrelevanz 0..1
* extension contains Plausibilitaetskennzeichen named Plausibilitaetskennzeichen 0..1
* extension contains SVAbrechnungsquartal named SVAbrechnungsquartal 0..1