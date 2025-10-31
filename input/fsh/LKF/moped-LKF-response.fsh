
Profile: MopedLKFResponse
Parent: ClaimResponse
Title: "MOPED LKFResponse"
Description: "MOPED Profil der ClaimResponse Ressource für die Leistungsabrechnungsantwort."
* status = #active
* insert ShallPopulateObligation(status, MopedLGFActor)
* insert MopedHandleObligation(status)
* type.coding = http://terminology.hl7.org/CodeSystem/claim-type#institutional
* insert ShallPopulateObligation(type, MopedLGFActor)
* use = #claim
* insert ShallPopulateObligation(use, MopedLGFActor)

* patient only Reference(HL7ATCorePatient)
* insert MopedHandleObligation(patient)
* request only Reference(MopedLKFRequest)
* request 1..1
* insert ShallPopulateObligation(type, MopedLGFActor) //oder moped?
* decision 1..1
* insert ShallPopulateObligation(type, MopedLGFActor)

* addItem.extension contains AddItemCategory named AddItemCategory 0..1