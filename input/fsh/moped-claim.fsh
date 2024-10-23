
Profile: MOPEDClaim
Parent: Claim
Description: "MOPED Profil der Claim Ressource für die Leistungsabrechnungsanfrage."


* patient only Reference(HL7ATCorePatient)

* procedure.extension contains AbrechnungsRelevanz named abrechnungsRelevanz 0..1
* diagnosisRelatedGroup from $LKFAbrechnungsGruppe (required)
* diagnosisRelatedGroup. ^short =  "\"Abrechnung - Gruppe:\" Dieses Datenfeld ist mit der Codenummer der zutreffenden Abrechnungsgruppe zu befüllen. Bei Datensätzen von stationären Krankenhausaufenthalten, die keiner leistungsorientier- ten Diagnosenfallgruppe zugeordnet werden, erfolgt ein Eintrag entsprechend der jeweiligen Aufnahmeart."

* related.claim only Reference(MOPEDClaim)

* insurance.coverage only Reference(SVCCoverage)

* encounter ^slicing.rules = #open
* encounter ^slicing.ordered = false
* encounter contains MopedEncounter 0..1 and TransferEncounter 0..
* encounter[MopedEncounter] ^short = "Generelle Informationen zu Aufnahme und Entlassung des Patienten"
* encounter[MopedEncounter] only Reference(MOPEDEncounter)
* encounter[TransferEncounter] ^short = "Informationen zu Verlegungen innerhalb oder zwischen Krankenanstalten"
* encounter[TransferEncounter] only Reference(MOPEDTransferEncounter)

* extension contains Note named notiz 0..
* diagnosis.onAdmission ^definition =  "Gibt an ob die Diagnose bereits bei Aufnahme in den stationären Aufenthalt vorhanden war"
* extension contains DiagnosisRelatedNode named diagnoseKnoten 0..1
* extension contains PunkteBelagsdauerausreisserUntenLeistungskomponente named punkteBelagsdauerausreisserUntenLeistungskomponente 0..1
* extension contains PunkteBelagsdauerausreisserUntenTageskomponente named punkteBelagsdauerausreisserUntenTageskomponente 0..1
* extension contains ZusatzpunkteBelagsdauerausreisserNachOben named zusatzpunkteBelagsdauerausreisserNachOben 0..1
* extension contains ZusatzpunkteIntensiv named zusatzpunkteIntensiv 0..1
* extension contains ZusatzpunkteMehrfachleistungen named zusatzpunkteMehrfachleistungen 0..1

* extension contains PunkteSpeziellerBereicheTageweise named punkteSpeziellerBereicheTageweise 0..1
* extension contains LeistungskomponenteLeistungspunkte named leistungskomponenteLeistungspunkte 0..1
* extension contains TageskomponenteKontaktpunkte named tageskomponenteKontaktpunkte 0..1
* extension contains TotalPoints named allePunkte 0..1
* extension contains ErrorWarning named fehlerWarnung 0..
* extension contains Fondsrelevanz named fondRelevant 0..1
* extension contains Plausibilitaetskennzeichen named plausibilitaetskennzeichen 0..1
* extension contains SVAbrechnungsquartal named svAbrechnungsquartal 0..1