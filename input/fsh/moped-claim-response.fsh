
Profile: MOPEDClaimResponse
Parent: ClaimResponse
Description: "MOPED Profil der ClaimResponse Ressource für die Leistungsabrechnungsantwort."


* patient only Reference(HL7ATCorePatient)
* request only Reference(MOPEDClaim)
* requestor only Reference(HL7ATCoreOrganization)

* insurance.coverage only Reference(SVCCoverage)

* encounter ^slicing.rules = #open
* encounter ^slicing.ordered = false
* encounter contains MopedEncounter 0..1 and TransferEncounter 0..
* encounter[MopedEncounter] ^short = "Generelle Informationen zu Aufnahme und Entlassung des Patienten"
* encounter[MopedEncounter] only Reference(MOPEDEncounter)
* encounter[TransferEncounter] ^short = "Informationen zu Verlegungen innerhalb oder zwischen Krankenanstalten"
* encounter[TransferEncounter] only Reference(MOPEDTransferEncounter)


* diagnosisRelatedGroup from $LKFAbrechnungsGruppe (required)
* diagnosisRelatedGroup. ^short =  "\"Abrechnung - Gruppe:\" Dieses Datenfeld ist mit der Codenummer der zutreffenden Abrechnungsgruppe zu befüllen. Bei Datensätzen von stationären Krankenhausaufenthalten, die keiner leistungsorientier- ten Diagnosenfallgruppe zugeordnet werden, erfolgt ein Eintrag entsprechend der jeweiligen Aufnahmeart."

* extension contains LKFPunkte named LKFPunkte 0..

* extension contains ErrorWarning named ErrorWarning 0..
* extension contains DiagnosisRelatedNode named DiagnosisRelatedNode 0..1

* extension contains LDFPunktewertNetto named LDFPunktewertNetto 0..1
* extension contains LDFBetragNetto named LDFBetragNetto 0..1
* extension contains PatientenanteilAngehoerige named PatientenanteilAngehoerige 0..1
* extension contains Patientenanteil named Patientenanteil 0..1
* extension contains Beihilfenaequivalent named Beihilfenaequivalent 0..1
* extension contains ForderungsbetragAuslaenderverrechnungRegress named ForderungsbetragAuslaenderverrechnungRegress 0..1
* extension contains RechnungsnummerKHLGF named RechnungsnummerKHLGF 0..1

* extension contains Note named Note 0..

* extension contains Sonderleistungsnummer named Sonderleistungsnummer 0..1
* extension contains AnzahlSonderleistungen named AnzahlSonderleistungen 0..1
* extension contains PunkteLDFPauschale named PunkteLDFPauschale 0..1
* extension contains KonstenmeldungARK named KonstenmeldungARK 0..1

