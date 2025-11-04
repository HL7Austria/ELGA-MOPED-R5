
Profile: MopedARKResponse
Parent: ClaimResponse
Title: "MOPED ARKResponse"
Description: "MOPED Profil der ClaimResponse Ressource für die Rückmeldung der SV für Ausländerverrechnung und Regresse."
* insert ShallPopulateObligation(status, MopedSVActor)
* insert MopedHandleObligation(status)
* patient only Reference(MopedPatient)
* insert MopedHandleObligation(patient)
* use = http://hl7.org/fhir/claim-use#claim
* insert ShallPopulateObligation(use, MopedSVActor)
* type = http://terminology.hl7.org/CodeSystem/claim-type#institutional
* insert ShallPopulateObligation(type, MopedSVActor)
* subType from KostenmeldungARKVS (required)
* subType 1..1
* subType ^short = "Kostenmeldung für Ausländerverrechnung, Regressangelegenheiten und Kosteninformation"
* insert ShallPopulateObligation(subType, MopedSVActor)
* request only Reference(MopedARKRequest)
* request 1..1
* insert ShallPopulateObligation(request, MopedSVActor)

* addItem.extension contains AddItemCategory named AddItemCategory 0..1
* addItem ^slicing.rules = #open
* addItem ^slicing.ordered = true
* addItem ^slicing.discriminator[+].type = #value
* addItem ^slicing.discriminator[=].path = "extension('https://elga.moped.at/StructureDefinition/moped-ext-AddItemCategory').value.coding"
* addItem contains Patientenanteil 0..1
* addItem[Patientenanteil].unitPrice 1..1
* addItem[Patientenanteil].unitPrice ^short = "KaOrg: Patientenanteil für Angehörige (tägl. Satz) netto"
* addItem[Patientenanteil].net 1..1
* addItem[Patientenanteil].net ^short = "KaOrg: Patientenanteil"
* addItem[Patientenanteil].factor = -1
* addItem[Patientenanteil].extension[AddItemCategory].valueCodeableConcept.coding = MopedClaimItemCategoryCS#Patientenanteil
* insert ShallPopulateObligation(addItem[Patientenanteil], MopedSVActor)

* total.amount ^short = "KaOrg: Betrag Ausländerverrechnung/Regress"
* total.amount 1..1
* insert ShallPopulateObligation(total, MopedSVActor)

* extension contains AbrechnungsartAuslaenderverrechnung named AbrechnungsartAuslaenderverrechnung 0..1
* extension[AbrechnungsartAuslaenderverrechnung] ^short = "KaOrg: Abrechnungsart Ausländerverrechnung"
* insert ShallPopulateObligation(extension[AbrechnungsartAuslaenderverrechnung], MopedSVActor)
* extension contains Betreuungsschein named Betreuungsschein 0..1
* extension[Betreuungsschein] ^short = "KaOrg: Betreuungsschein bei Ausländerverrechnung"
* insert ShallPopulateObligation(extension[Betreuungsschein], MopedSVActor)
* extension contains MopedSupportingInfo named SupportingInfo 0..
* insert ShallPopulateObligation(extension[MopedSupportingInfo], MopedSVActor)
* extension contains MopedSupportingInfoFREMDRE named MopedSupportingInfoFREMDRE 0..1
* extension[MopedSupportingInfoFREMDRE] ^short = "KaOrg: Rechnungsnummer der zwischenstaatlichen Abrechnung"
* insert ShallPopulateObligation(extension[MopedSupportingInfoFREMDRE], MopedSVActor)
* extension contains MopedSupportingInfoOEGKELBNR named MopedSupportingInfoOEGKELBNR 0..1
* extension[MopedSupportingInfoOEGKELBNR] ^short = "KaOrg: Forderungsnummer der ÖGK"
* insert ShallPopulateObligation(extension[MopedSupportingInfoOEGKELBNR], MopedSVActor)
* extension contains Beihilfenaequivalent named Beihilfenaequivalent 0..1
* extension[Beihilfenaequivalent] ^short = "KaOrg: Beihilfenäquivalent"
* insert ShallPopulateObligation(extension[Beihilfenaequivalent], MopedSVActor)

