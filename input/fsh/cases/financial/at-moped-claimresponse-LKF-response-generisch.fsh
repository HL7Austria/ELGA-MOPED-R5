
Profile: AtMopedClaimResponseLKFResponseGenerisch
Parent: ClaimResponse
Id: at-moped-claimresponse-lkfresponse-generisch
Title: "AT MOPED ClaimResponse LKFResponse generisches Profil"
Description: "MOPED generisches Profil der ClaimResponse Ressource für die Leistungsabrechnungsantwort."
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
* patient only Reference(AtMopedPatientvbPKBasis or AtMopedPatientKlarnameBasis)
* insert MopedHandleObligation(patient)
* request only Reference(AtMopedClaimLKFRequestBasis)
* request 1..1
* insert ShallPopulateObligation(request, MopedLGFActor) //oder moped?
* requestor only Reference(AtMopedOrganizationKA)
* requestor 1..1
* insert MopedHandleObligation(requestor)
* outcome 1..1
* outcome ^short = "LKF Bewilligung/Ablehnung"
* insert ShallPopulateObligation(outcome, MopedLGFActor)
* decision 1..1
* insert ShallPopulateObligation(decision, MopedLGFActor)
* insert ShallPopulateObligation(created, MopedLGFActor)
* addItem.extension contains AddItemCategory named AddItemCategory 0..1