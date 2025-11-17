
Profile: MopedLKFResponse
Parent: ClaimResponse
Title: "MOPED LKFResponse"
Description: "MOPED Profil der ClaimResponse Ressource für die Leistungsabrechnungsantwort."
* status = #active
* insert ShallPopulateObligation(status, MopedLGFActor)
* insert MopedHandleObligation(status)
* type from MopedClaimTypeVS
* type.coding = MopedClaimTypeCS#LKFRESP (exactly)
* insert ShallPopulateObligation(type, MopedLGFActor)
* subType from KostenmeldungARKVS
* insert ShallPopulateObligation(subType, MopedLGFActor)
* use = #claim
* insert ShallPopulateObligation(use, MopedLGFActor)

* patient only Reference(MopedPatient)
* insert MopedHandleObligation(patient)
* request only Reference(MopedLKFRequest)
* request 1..1
* insert ShallPopulateObligation(type, MopedLGFActor) //oder moped?
* decision 1..1
* insert ShallPopulateObligation(type, MopedLGFActor)

* addItem.extension contains AddItemCategory named AddItemCategory 0..1