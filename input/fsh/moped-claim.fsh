
Profile: MopedLKFRequest
Parent: Claim
Description: "MOPED Profil der Claim Ressource für die Leistungsabrechnungsanfrage."
Title: "MOPED Claim"

* patient only Reference(HL7ATCorePatient)

* procedure.extension contains AbrechnungsRelevanz named abrechnungsRelevanz 0..1
* diagnosisRelatedGroup from LKFAbrechnungsGruppe (required)
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

* encounter contains MopedEncounter 1..1 and TransferEncounter 1..
* encounter[MopedEncounter] ^short = "Generelle Informationen zu Aufnahme und Entlassung des Patienten"
* encounter[MopedEncounter] only Reference(MopedEncounter)
* encounter[TransferEncounter] ^short = "Informationen zu Verlegungen innerhalb oder zwischen Krankenanstalten"
* encounter[TransferEncounter] only Reference(MopedTransferEncounter)

* extension contains Note named notiz 0..
* diagnosis.onAdmission ^definition =  "Gibt an ob die Diagnose bereits bei Aufnahme in den stationären Aufenthalt vorhanden war"
* extension contains DiagnoseKnoten named diagnoseKnoten 0..1 MS
* extension contains LkfPunkte named lkfPunkte 0.. MS
* extension contains FehlerWarnung named fehlerWarnung 0..
* extension contains Fondsrelevanz named fondRelevant 0..1 MS
* extension contains Plausibilitaetskennzeichen named plausibilitaetskennzeichen 0..1
* extension contains SVAbrechnungsquartal named svAbrechnungsquartal 0..1

