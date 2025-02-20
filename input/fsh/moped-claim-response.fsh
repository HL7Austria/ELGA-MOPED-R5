
Profile: MopedLKFResponse
Parent: ClaimResponse
Description: "MOPED Profil der ClaimResponse Ressource für die Leistungsabrechnungsantwort."

* status = #active
* type.coding = http://terminology.hl7.org/CodeSystem/claim-type#institutional
* use = #claim

* patient only Reference(HL7ATCorePatient)
* insurer only Reference(HL7ATCoreOrganization)
* insurer 1..1
* request only Reference(MopedLKFRequest)
* request 1..1
* requestor only Reference(HL7ATCoreOrganization)
* requestor 1..1

* insurance.coverage only Reference(MopedCoverage)
* insurance.coverage 1..1


* diagnosisRelatedGroup from LKFAbrechnungsGruppe (required)
* diagnosisRelatedGroup. ^short =  "\"Abrechnung - Gruppe:\" Dieses Datenfeld ist mit der Codenummer der zutreffenden Abrechnungsgruppe zu befüllen. Bei Datensätzen von stationären Krankenhausaufenthalten, die keiner leistungsorientier- ten Diagnosenfallgruppe zugeordnet werden, erfolgt ein Eintrag entsprechend der jeweiligen Aufnahmeart."

* extension contains FehlerWarnung named FehlerWarnung 0..
* extension contains DiagnoseKnoten named DiagnoseKnoten 0..1
* extension contains LKFPunkte named LKFPunkte 0..
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

