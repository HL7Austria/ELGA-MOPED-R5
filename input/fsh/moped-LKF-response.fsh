
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
* decision 1..1