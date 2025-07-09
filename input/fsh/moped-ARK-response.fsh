
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


* identifier ^slicing.rules = #open
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "type.coding.code"
* identifier ^slicing.ordered = false
* identifier contains ZwischenstaatlicheRENR 0..1 and OEGKForderungsnummer 0..1
* identifier[ZwischenstaatlicheRENR].type from http://hl7.org/fhir/ValueSet/identifier-type (required)
* identifier[ZwischenstaatlicheRENR].type.coding.code = #PLAC (exactly)
* identifier[ZwischenstaatlicheRENR].system 1..1
* identifier[OEGKForderungsnummer].type from http://hl7.org/fhir/ValueSet/identifier-type (required)
* identifier[OEGKForderungsnummer].type.coding.code = #PLAC (exactly)
* identifier[OEGKForderungsnummer].system 1..1


* addItem ^slicing.rules = #open
* addItem ^slicing.ordered = true
* addItem ^slicing.discriminator[+].type = #value
* addItem ^slicing.discriminator[=].path = "productOrService.coding"
* addItem contains Patientenanteil 0..1
* addItem[Patientenanteil].productOrService from ClaimItemArtenVS (required)
* addItem[Patientenanteil].productOrService = ClaimItemArtenCS#Patientenanteil
* addItem[Patientenanteil].unitPrice 1..1
* addItem[Patientenanteil].unitPrice ^short = "Patientenanteil für Angehörige (tägl. Satz) netto"
* addItem[Patientenanteil].net 1..1
* addItem[Patientenanteil].net ^short = "Patientenanteil netto"
* addItem[Patientenanteil].factor = -1

* total ^short = "Forderungsbetrag für Ausländerverrechnung/Regresse"
* total.amount 1..1

* extension contains AbrechnungsartAuslaenderverrechnung named AbrechnungsartAuslaenderverrechnung 0..1
* extension contains Betreuungsschein named Betreuungsschein 0..1
* extension contains Beihilfenaequivalent named Beihilfenaequivalent 0..1

