
Profile: MOPEDClaim
Parent: Claim
Description: "MOPED Profil der Claim Ressource für die Leistungsabrechnungsanfrage."


* patient only Reference(HL7ATCorePatient)

* procedure.extension contains AbrechnungsRelevanz named AbrechnungsRelevanz 0..1
* diagnosisRelatedGroup from $LKFAbrechnungsGruppe (required)
* diagnosisRelatedGroup. ^short =  "\"Abrechnung - Gruppe:\" Dieses Datenfeld ist mit der Codenummer der zutreffenden Abrechnungsgruppe zu befüllen. Bei Datensätzen von stationären Krankenhausaufenthalten, die keiner leistungsorientier- ten Diagnosenfallgruppe zugeordnet werden, erfolgt ein Eintrag entsprechend der jeweiligen Aufnahmeart."

* related.claim only Reference(MOPEDClaim)

* encounter ^slicing.rules = #open
* encounter ^slicing.ordered = false
* encounter contains MopedEncounter 0..1 and TransferEncounter 0..
* encounter[MopedEncounter] ^short = "Generelle Informationen zu Aufnahme und Entlassung des Patienten"
* encounter[MopedEncounter] only Reference(MOPEDEncounter)
* encounter[TransferEncounter] ^short = "Informationen zu Verlegungen innerhalb oder zwischen Krankenanstalten"
* encounter[TransferEncounter] only Reference(MOPEDTransferEncounter)

* extension contains Note named Note 0..
* diagnosis.onAdmission ^definition =  "Gibt an ob die Diagnose bereits bei Aufnahme in den stationären Aufenthalt vorhanden war"
* extension contains DiagnosisRelatedNode named DiagnosisRelatedNode 0..1
* extension contains PunkteBelagsdauerausreisserUntenLeistungskomponente named PunkteBelagsdauerausreisserUntenLeistungskomponente 0..1
* extension contains PunkteBelagsdauerausreisserUntenTageskomponente named PunkteBelagsdauerausreisserUntenTageskomponente 0..1
* extension contains ZusatzpunkteBelagsdauerausreisserNachOben named ZusatzpunkteBelagsdauerausreisserNachOben 0..1
* extension contains ZusatzpunkteIntensiv named ZusatzpunkteIntensiv 0..1
* extension contains ZusatzpunkteMehrfachleistungen named ZusatzpunkteMehrfachleistungen 0..1

* extension contains PunkteSpeziellerBereicheTageweise named PunkteSpeziellerBereicheTageweise 0..1
* extension contains LeistungskomponenteLeistungspunkte named LeistungskomponenteLeistungspunkte 0..1
* extension contains TageskomponenteKontaktpunkte named TageskomponenteKontaktpunkte 0..1
* extension contains TotalPoints named TotalPoints 0..1
* extension contains ErrorWarning named ErrorWarning 0..
* extension contains Fondsrelevanz named Fondsrelevanz 0..1
* extension contains Plausibilitaetskennzeichen named Plausibilitaetskennzeichen 0..1
* extension contains SVAbrechnungsquartal named SVAbrechnungsquartal 0..1
* extension contains AccountRef named AccountRef 0..1