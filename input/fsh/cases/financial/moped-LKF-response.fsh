
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
* patient only Reference(MopedPatient)
* insert MopedHandleObligation(patient)
* request only Reference(MopedLKFRequest)
* request 1..1
* insert ShallPopulateObligation(request, MopedLGFActor) //oder moped?
* requestor only Reference(KHOrganization)
* requestor 1..1
* insert MopedHandleObligation(requestor)
* outcome 1..1
* outcome ^short = "LKF Bewilligung/Ablehnung"
* insert ShallPopulateObligation(outcome, MopedLGFActor)
* decision 1..1
* insert ShallPopulateObligation(decision, MopedLGFActor)
* insert ShallPopulateObligation(created, MopedLGFActor)
* addItem.extension contains AddItemCategory named AddItemCategory 0..1