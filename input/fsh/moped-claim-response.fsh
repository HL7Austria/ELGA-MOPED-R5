
Profile: MOPEDClaimResponse
Parent: ClaimResponse
Description: "MOPED Profil der ClaimResponse Ressource für die Leistungsabrechnungsantwort."
Title: "MOPED Claim Response"

* status = #active
* type.coding.code = #institutional
* use = #claim

* patient only Reference(HL7ATCorePatient)
* insurer only Reference(HL7ATCoreOrganization)
* insurer 1..1
* request only Reference(MOPEDClaim)
* request 1..1
* requestor only Reference(HL7ATCoreOrganization)
* requestor 1..1

* insurance.coverage only Reference(MOPEDCoverage)
* insurance.coverage 1..1

* diagnosisRelatedGroup from LKFAbrechnungsGruppe (required)
* diagnosisRelatedGroup. ^short =  "\"Abrechnung - Gruppe:\" Dieses Datenfeld ist mit der Codenummer der zutreffenden Abrechnungsgruppe zu befüllen. Bei Datensätzen von stationären Krankenhausaufenthalten, die keiner leistungsorientier- ten Diagnosenfallgruppe zugeordnet werden, erfolgt ein Eintrag entsprechend der jeweiligen Aufnahmeart."

* extension contains FehlerWarnung named fehlerWarnung 0..
* extension contains DiagnoseKnoten named diagnoseKnoten 0..1
* extension contains LkfPunkte named lkfPunkte 0..
* extension contains LDFPunktewertNetto named ldfPunktewertNetto 0..1
* extension contains LDFBetragNetto named ldfBetragNetto 0..1
* extension contains PatientenanteilAngehoerige named patientenanteilAngehoerige 0..1
* extension contains Patientenanteil named patientenanteil 0..1
* extension contains Beihilfenaequivalent named beihilfenaequivalent 0..1

* extension contains ForderungsbetragAuslaenderverrechnungRegress named forderungsbetragAuslaenderverrechnungRegress 0..1
* extension contains RechnungsnummerKHLGF named rechnungsnummerKHLGF 0..1

* extension contains Note named note 0..

* extension contains Sonderleistungsnummer named sonderleistungsnummer 0..1
* extension contains AnzahlSonderleistungen named anzahlSonderleistungen 0..1
* extension contains PunkteLDFPauschale named punkteLDFPauschale 0..1
* extension contains KonstenmeldungARK named konstenmeldungARK 0..1

