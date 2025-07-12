
Profile: MopedARKResponse
Parent: ClaimResponse
Title: "MOPED ARKResponse"
Description: "MOPED Profil der ClaimResponse Ressource für die Rückmeldung der SV für Ausländerverrechnung und Regresse."

* patient only Reference(HL7ATCorePatient)
* use = http://hl7.org/fhir/claim-use#claim
* type = http://terminology.hl7.org/CodeSystem/claim-type#institutional
* subType from KostenmeldungARKVS (required)
* subType 1..1
* subType ^short = "Kostenmeldung für Ausländerverrechnung, Regressangelegenheiten und Kosteninformation"
* request only Reference(MopedARKRequest)
* request 1..1

* addItem.extension contains AddItemCategory named AddItemCategory 0..1
* addItem ^slicing.rules = #open
* addItem ^slicing.ordered = true
* addItem ^slicing.discriminator[+].type = #value
* addItem ^slicing.discriminator[=].path = "extension('https://elga.moped.at/StructureDefinition/moped-ext-AddItemCategory').value.coding"
* addItem contains Patientenanteil 0..1
* addItem[Patientenanteil].unitPrice 1..1
* addItem[Patientenanteil].unitPrice ^short = "Patientenanteil für Angehörige (tägl. Satz) netto"
* addItem[Patientenanteil].net 1..1
* addItem[Patientenanteil].net ^short = "Patientenanteil netto"
* addItem[Patientenanteil].factor = -1
* addItem[Patientenanteil].extension[AddItemCategory].valueCodeableConcept.coding = MopedClaimItemCategoryCS#Patientenanteil

* total ^short = "Forderungsbetrag für Ausländerverrechnung/Regresse"
* total.amount 1..1

* extension contains AbrechnungsartAuslaenderverrechnung named AbrechnungsartAuslaenderverrechnung 0..1
* extension contains Betreuungsschein named Betreuungsschein 0..1
* extension contains MopedSupportingInfo named SupportingInfo 0..
* extension contains MopedSupportingInfoFREMDRE named MopedSupportingInfoFREMDRE 0..1
* extension contains MopedSupportingInfoOEGKELBNR named MopedSupportingInfoOEGKELBNR 0..1
* extension contains Beihilfenaequivalent named Beihilfenaequivalent 0..1

