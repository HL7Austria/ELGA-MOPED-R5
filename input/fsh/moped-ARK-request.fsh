
Profile: MopedARKRequest
Parent: Claim
Title: "MOPED ARKRequest"
Description: "MOPED Profil der Claim Ressource für die Kostenmeldung für Ausländerverrechnung und Regresse."

* patient only Reference(HL7ATCorePatient)
* use = http://hl7.org/fhir/claim-use#claim
* type = http://terminology.hl7.org/CodeSystem/claim-type#institutional
* subType from KostenmeldungARKVS (required)
* subType 1..1
* diagnosisRelatedGroup from LKFAbrechnungsGruppeVS (required)
* diagnosisRelatedGroup. ^short =  "\"Abrechnung - Gruppe:\" Dieses Datenfeld ist mit der Codenummer der zutreffenden Abrechnungsgruppe zu befüllen. Bei Datensätzen von stationären Krankenhausaufenthalten, die keiner leistungsorientier- ten Diagnosenfallgruppe zugeordnet werden, erfolgt ein Eintrag entsprechend der jeweiligen Aufnahmeart."
* extension contains DiagnoseKnoten named DiagnoseKnoten 0..1
* extension contains Beihilfenaequivalent named Beihilfenaequivalent 0..1
* insurer only Reference(SVOrganization)
* insurer 1..1
* provider only Reference(KHOrganization)
* provider 1..1
* related.claim only Reference(MopedLKFRequest)
* related.claim 1..
* related.relationship = http://terminology.hl7.org/CodeSystem/ex-relatedclaimrelationship#associated

//Coverage hier relevant?

* encounter ^slicing.rules = #open
* encounter ^slicing.ordered = false
* encounter ^slicing.discriminator[+].type = #profile
* encounter ^slicing.discriminator[=].path = "resolve()"
* encounter contains MopedEncounter 1..1 /*and TransferEncounter 0..*/
* encounter[MopedEncounter] ^short = "Generelle Informationen zu Aufnahme und Entlassung des Patienten"
* encounter[MopedEncounter] only Reference(MopedEncounter)
/* encounter[TransferEncounter] ^short = "Informationen zu Verlegungen innerhalb oder zwischen Krankenanstalten"
* encounter[TransferEncounter] only Reference(MopedTransferEncounter)*/

* item ^slicing.rules = #open
* item ^slicing.ordered = false
* item ^slicing.discriminator[+].type = #value
* item ^slicing.discriminator[=].path = "category.coding"
* item ^slicing.discriminator[+].type = #value
* item ^slicing.discriminator[=].path = "productOrService"
* item contains Leistungskomponente 1..1 
and Tageskomponente 1..1 
and PunkteBelagsdauerausreisserUntenLeistungskomponente 0..1 
and PunkteBelagsdauerausreisserUntenTageskomponente 0..1 
and ZusatzpunkteBelagsdauerausreisserNachOben 0..1
and ZusatzpunkteIntensiv 0..1
and ZusatzpunkteMehrfachleistungen 0..1
and PunkteSpeziellerBereicheTageweise 0..1
and Gesamtpunkte 1..1
and Patientenanteil 0..1
* item[Leistungskomponente].category from MopedClaimItemCategoryVS (required)
* item[Leistungskomponente].category.coding = MopedClaimItemCategoryCS#Punkte
* item[Leistungskomponente].productOrService from ClaimItemArtenVS (required)
* item[Leistungskomponente].productOrService = LKFPunkteArtenCS#LDFPLK
* item[Leistungskomponente].quantity 1..1
* item[Leistungskomponente].quantity ^short = "Punkteanzahl"

* item[Tageskomponente].category.coding from MopedClaimItemCategoryVS (required)
* item[Tageskomponente].category.coding = MopedClaimItemCategoryCS#Punkte
* item[Tageskomponente].productOrService = LKFPunkteArtenCS#LDFPTK
* item[Tageskomponente].productOrService from ClaimItemArtenVS (required)
* item[Tageskomponente].quantity 1..1
* item[Tageskomponente].quantity ^short = "Punkteanzahl"

* item[PunkteBelagsdauerausreisserUntenLeistungskomponente].category.coding from MopedClaimItemCategoryVS (required)
* item[PunkteBelagsdauerausreisserUntenLeistungskomponente].category.coding = MopedClaimItemCategoryCS#Punkte
* item[PunkteBelagsdauerausreisserUntenLeistungskomponente].productOrService = LKFPunkteArtenCS#SCULK
* item[PunkteBelagsdauerausreisserUntenLeistungskomponente].productOrService from ClaimItemArtenVS (required)
* item[PunkteBelagsdauerausreisserUntenLeistungskomponente].quantity 1..1
* item[PunkteBelagsdauerausreisserUntenLeistungskomponente].quantity ^short = "Punkteanzahl"

* item[PunkteBelagsdauerausreisserUntenTageskomponente].category.coding from MopedClaimItemCategoryVS (required)
* item[PunkteBelagsdauerausreisserUntenTageskomponente].category.coding = MopedClaimItemCategoryCS#Punkte
* item[PunkteBelagsdauerausreisserUntenTageskomponente].productOrService = LKFPunkteArtenCS#SCUTK
* item[PunkteBelagsdauerausreisserUntenTageskomponente].productOrService from ClaimItemArtenVS (required)
* item[PunkteBelagsdauerausreisserUntenTageskomponente].quantity 1..1
* item[PunkteBelagsdauerausreisserUntenTageskomponente].quantity ^short = "Punkteanzahl"

* item[ZusatzpunkteBelagsdauerausreisserNachOben].category.coding from MopedClaimItemCategoryVS (required)
* item[ZusatzpunkteBelagsdauerausreisserNachOben].category.coding = MopedClaimItemCategoryCS#Punkte
* item[ZusatzpunkteBelagsdauerausreisserNachOben].productOrService = LKFPunkteArtenCS#BDZU
* item[ZusatzpunkteBelagsdauerausreisserNachOben].productOrService from ClaimItemArtenVS (required)
* item[ZusatzpunkteBelagsdauerausreisserNachOben].quantity 1..1
* item[ZusatzpunkteBelagsdauerausreisserNachOben].quantity ^short = "Punkteanzahl"

* item[ZusatzpunkteIntensiv].category.coding from MopedClaimItemCategoryVS (required)
* item[ZusatzpunkteIntensiv].category.coding = MopedClaimItemCategoryCS#Punkte
* item[ZusatzpunkteIntensiv].productOrService = LKFPunkteArtenCS#INTZU
* item[ZusatzpunkteIntensiv].productOrService from ClaimItemArtenVS (required)
* item[ZusatzpunkteIntensiv].quantity 1..1
* item[ZusatzpunkteIntensiv].quantity ^short = "Punkteanzahl"

* item[ZusatzpunkteMehrfachleistungen].category.coding from MopedClaimItemCategoryVS (required)
* item[ZusatzpunkteMehrfachleistungen].category.coding = MopedClaimItemCategoryCS#Punkte
* item[ZusatzpunkteMehrfachleistungen].productOrService = LKFPunkteArtenCS#MELZU
* item[ZusatzpunkteMehrfachleistungen].productOrService from ClaimItemArtenVS (required)
* item[ZusatzpunkteMehrfachleistungen].quantity 1..1
* item[ZusatzpunkteMehrfachleistungen].quantity ^short = "Punkteanzahl"

* item[PunkteSpeziellerBereicheTageweise].category.coding from MopedClaimItemCategoryVS (required)
* item[PunkteSpeziellerBereicheTageweise].category.coding = MopedClaimItemCategoryCS#Punkte
* item[PunkteSpeziellerBereicheTageweise].productOrService = LKFPunkteArtenCS#SCSPEZ
* item[PunkteSpeziellerBereicheTageweise].productOrService from ClaimItemArtenVS (required)
* item[PunkteSpeziellerBereicheTageweise].quantity 1..1
* item[PunkteSpeziellerBereicheTageweise].quantity ^short = "Punkteanzahl"

* item[Gesamtpunkte].category.coding from MopedClaimItemCategoryVS (required)
* item[Gesamtpunkte].category.coding = MopedClaimItemCategoryCS#Punkte
* item[Gesamtpunkte].productOrService = LKFPunkteArtenCS#SCGES
* item[Gesamtpunkte].productOrService from ClaimItemArtenVS (required)
* item[Gesamtpunkte].quantity 1..1
* item[Gesamtpunkte].quantity ^short = "Punkteanzahl"
* item[Gesamtpunkte].unitPrice 1..1
* item[Gesamtpunkte].unitPrice ^short = "LDF-Punktewert Netto"
* item[Gesamtpunkte].net 1..1
* item[Gesamtpunkte].net ^short = "LDF-Betrag Netto"
* item[Gesamtpunkte].factor = 1

* item[Patientenanteil].category.coding from MopedClaimItemCategoryVS (required)
* item[Patientenanteil].category.coding = MopedClaimItemCategoryCS#Patientenanteil
* item[Patientenanteil].unitPrice 1..1
* item[Patientenanteil].unitPrice ^short = "Patientenanteil für Angehörige (tägl. Satz) netto"
* item[Patientenanteil].net 1..1
* item[Patientenanteil].net ^short = "Patientenanteil netto"
* item[Patientenanteil].factor = -1
/* supportingInfo ^slicing.rules = #open
* supportingInfo ^slicing.discriminator.type = #value
* supportingInfo ^slicing.discriminator.path = "code.coding"
* supportingInfo ^slicing.ordered = false
* supportingInfo contains Plausibilitaetskennzeichen 0..1
* supportingInfo[Plausibilitaetskennzeichen] ^short = "Plausibilitaetskennzeichen/Qualifier"
* supportingInfo[Plausibilitaetskennzeichen].category = http://terminology.hl7.org/CodeSystem/claiminformationcategory#info
* supportingInfo[Plausibilitaetskennzeichen].code.coding = ClaimSupportingInformationTypesCS#PLAUS
* supportingInfo[Plausibilitaetskennzeichen].value[x] only string //Ist Wert von 0-5
*/
* total ^short = "Forderungsbetrag für Ausländerverrechnung/Regresse"
