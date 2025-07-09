
Profile: MopedLKFResponse
Parent: ClaimResponse
Title: "MOPED LKFResponse"
Description: "MOPED Profil der ClaimResponse Ressource für die Leistungsabrechnungsantwort."

* status = #active
* type.coding = http://terminology.hl7.org/CodeSystem/claim-type#institutional
* use = #claim

* patient only Reference(HL7ATCorePatient)
* request only Reference(MopedLKFRequest)
* request 1..1

* diagnosisRelatedGroup from LKFAbrechnungsGruppeVS (required)
* diagnosisRelatedGroup. ^short =  "\"Abrechnung - Gruppe:\" Dieses Datenfeld ist mit der Codenummer der zutreffenden Abrechnungsgruppe zu befüllen. Bei Datensätzen von stationären Krankenhausaufenthalten, die keiner leistungsorientier- ten Diagnosenfallgruppe zugeordnet werden, erfolgt ein Eintrag entsprechend der jeweiligen Aufnahmeart."
* extension contains DiagnoseKnoten named DiagnoseKnoten 0..1

* decision 1..1