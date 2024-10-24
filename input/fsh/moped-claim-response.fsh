
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

* extension contains FehlerWarnung named fehlerWarnung 0..
* extension contains DiagnoseKnoten named diagnoseKnoten 0..1
* extension contains ZusatzpunkteBelagsdauerausreisserNachOben named zusatzpunkteBelagsdauerausreisserNachOben 0..1
* extension contains ZusatzpunkteIntensiv named zusatzpunkteIntensiv 0..1
* extension contains ZusatzpunkteMehrfachleistungen named zusatzpunkteMehrfachleistungen 0..1
* extension contains PunkteSpeziellerBereicheTageweise named punkteSpeziellerBereicheTageweise 0..1
* extension contains TotalPoints named allePunkte 0..1

* extension contains LDFPunktewertNetto named ldfPunktewertNetto 0..1
* extension contains LDFBetragNetto named ldfBetragNetto 0..1
* extension contains PatientenanteilAngehoerige named patientenanteilAngehoerige 0..1
* extension contains Patientenanteil named patientenanteil 0..1
* extension contains Beihilfenaequivalent named beihilfenaequivalent 0..1
* extension contains ForderungsbetragAuslaenderverrechnungRegress named forderungsbetragAuslaenderverrechnungRegress 0..1
* extension contains RechnungsnummerKHLGF named rechnungsnummerKHLGF 0..1

* extension contains Note named note 0..
* extension contains LeistungskomponenteLeistungspunkte named leistungskomponenteLeistungspunkte 0..1
* extension contains TageskomponenteKontaktpunkte named tageskomponenteKontaktpunkte 0..1

* extension contains Sonderleistungsnummer named sonderleistungsnummer 0..1
* extension contains AnzahlSonderleistungen named anzahlSonderleistungen 0..1
* extension contains PunkteLDFPauschale named punkteLdfPauschale 0..1
* extension contains KonstenmeldungARK named konstenmeldungArk 0..1

* extension contains PunkteBelagsdauerausreisserUntenLeistungskomponente named punkteBelagsdauerausreisserUntenLeistungskomponente 0..1
* extension contains PunkteBelagsdauerausreisserUntenTageskomponente named punkteBelagsdauerausreisserUntenTageskomponente 0..1
