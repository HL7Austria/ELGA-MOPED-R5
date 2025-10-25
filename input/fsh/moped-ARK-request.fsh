
Profile: MopedARKRequest
Parent: Claim
Title: "MOPED ARKRequest"
Description: "MOPED Profil der Claim Ressource für die Kostenmeldung für Ausländerverrechnung und Regresse."
* insert ShallPopulateObligation(status, MopedLGFActor)
* patient only Reference(HL7ATCorePatient)
* insert MopedHandleObligation(patient)
* use = http://hl7.org/fhir/claim-use#claim
* insert ShallPopulateObligation(use, MopedLGFActor)
* type = http://terminology.hl7.org/CodeSystem/claim-type#institutional
* insert ShallPopulateObligation(type, MopedLGFActor)
* subType from KostenmeldungARKVS (required)
* subType 1..1
* subType ^short = "Kostenmeldung für Ausländerverrechnung, Regressangelegenheiten und Kosteninformation"
* insert ShallPopulateObligation(subType, MopedLGFActor)
* diagnosisRelatedGroup from LKFAbrechnungsGruppeVS (required)
* diagnosisRelatedGroup. ^short =  "\"Abrechnung - Gruppe:\" Dieses Datenfeld ist mit der Codenummer der zutreffenden Abrechnungsgruppe zu befüllen. Bei Datensätzen von stationären Krankenhausaufenthalten, die keiner leistungsorientier- ten Diagnosenfallgruppe zugeordnet werden, erfolgt ein Eintrag entsprechend der jeweiligen Aufnahmeart."
* insert ShallPopulateObligation(diagnosisRelatedGroup, MopedLGFActor)
* extension contains DiagnoseKnoten named DiagnoseKnoten 0..1
* insert ShallPopulateObligation(extension[DiagnoseKnoten], MopedLGFActor)
* extension contains Beihilfenaequivalent named Beihilfenaequivalent 0..1
* insert ShallPopulateObligation(extension[Beihilfenaequivalent], MopedLGFActor)
* insurer only Reference(SVOrganization)
* insurer 1..1
* insert MopedHandleObligation(insurer)
* provider only Reference(KHOrganization)
* provider 1..1
* insert MopedHandleObligation(provider)
* related.claim only Reference(MopedLKFRequest)
* related.claim 1..
* insert ShallPopulateObligation(related.claim, MopedLGFActor)
* related.relationship = http://terminology.hl7.org/CodeSystem/ex-relatedclaimrelationship#associated
* insert ShallPopulateObligation(related.relationship, MopedLGFActor)
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
* insert MopedHandleObligation(encounter)

* item ^slicing.rules = #open
* item ^slicing.ordered = false
* item ^slicing.discriminator[+].type = #value
* item ^slicing.discriminator[=].path = "category.coding"
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
* item[Leistungskomponente].category.coding = MopedClaimItemCategoryCS#LDFPLK
* item[Leistungskomponente].quantity 1..1
* item[Leistungskomponente].quantity.unit = "LKF Punkte"
* item[Leistungskomponente].quantity ^short = "Punkteanzahl"
* insert ShallPopulateObligation(item[Leistungskomponente], MopedLGFActor)
* item[Tageskomponente].category.coding from MopedClaimItemCategoryVS (required)
* item[Tageskomponente].category.coding = MopedClaimItemCategoryCS#LDFPTK
* item[Tageskomponente].quantity 1..1
* item[Tageskomponente].quantity.value 1..1
* item[Tageskomponente].quantity.unit = "LKF Punkte"
* item[Tageskomponente].quantity ^short = "Punkteanzahl"
* insert ShallPopulateObligation(item[Tageskomponente], MopedLGFActor)
* item[PunkteBelagsdauerausreisserUntenLeistungskomponente].category.coding from MopedClaimItemCategoryVS (required)
* item[PunkteBelagsdauerausreisserUntenLeistungskomponente].category.coding = MopedClaimItemCategoryCS#SCULK
* item[PunkteBelagsdauerausreisserUntenLeistungskomponente].quantity 1..1
* item[PunkteBelagsdauerausreisserUntenLeistungskomponente].quantity.value 1..1
* item[PunkteBelagsdauerausreisserUntenLeistungskomponente].quantity.unit = "LKF Punkte"
* item[PunkteBelagsdauerausreisserUntenLeistungskomponente].quantity ^short = "Punkteanzahl"
* insert ShallPopulateObligation(item[PunkteBelagsdauerausreisserUntenLeistungskomponente], MopedLGFActor)
* item[PunkteBelagsdauerausreisserUntenTageskomponente].category.coding from MopedClaimItemCategoryVS (required)
* item[PunkteBelagsdauerausreisserUntenTageskomponente].category.coding = MopedClaimItemCategoryCS#SCUTK
* item[PunkteBelagsdauerausreisserUntenTageskomponente].quantity 1..1
* item[PunkteBelagsdauerausreisserUntenTageskomponente].quantity.value 1..1
* item[PunkteBelagsdauerausreisserUntenTageskomponente].quantity.unit = "LKF Punkte"
* item[PunkteBelagsdauerausreisserUntenTageskomponente].quantity ^short = "Punkteanzahl"
* insert ShallPopulateObligation(item[PunkteBelagsdauerausreisserUntenTageskomponente], MopedLGFActor)
* item[ZusatzpunkteBelagsdauerausreisserNachOben].category.coding from MopedClaimItemCategoryVS (required)
* item[ZusatzpunkteBelagsdauerausreisserNachOben].category.coding = MopedClaimItemCategoryCS#BDZU
* item[ZusatzpunkteBelagsdauerausreisserNachOben].quantity 1..1
* item[ZusatzpunkteBelagsdauerausreisserNachOben].quantity.value 1..1
* item[ZusatzpunkteBelagsdauerausreisserNachOben].quantity.unit = "LKF Punkte"
* item[ZusatzpunkteBelagsdauerausreisserNachOben].quantity ^short = "Punkteanzahl"
* insert ShallPopulateObligation(item[ZusatzpunkteBelagsdauerausreisserNachOben], MopedLGFActor)
* item[ZusatzpunkteIntensiv].category.coding from MopedClaimItemCategoryVS (required)
* item[ZusatzpunkteIntensiv].category.coding = MopedClaimItemCategoryCS#INTZU
* item[ZusatzpunkteIntensiv].quantity 1..1
* item[ZusatzpunkteIntensiv].quantity.value 1..1
* item[ZusatzpunkteIntensiv].quantity.unit = "LKF Punkte"
* item[ZusatzpunkteIntensiv].quantity ^short = "Punkteanzahl"
* insert ShallPopulateObligation(item[ZusatzpunkteIntensiv], MopedLGFActor)
* item[ZusatzpunkteMehrfachleistungen].category.coding from MopedClaimItemCategoryVS (required)
* item[ZusatzpunkteMehrfachleistungen].category.coding = MopedClaimItemCategoryCS#MELZU
* item[ZusatzpunkteMehrfachleistungen].quantity 1..1
* item[ZusatzpunkteMehrfachleistungen].quantity.value 1..1
* item[ZusatzpunkteMehrfachleistungen].quantity.unit = "LKF Punkte"
* item[ZusatzpunkteMehrfachleistungen].quantity ^short = "Punkteanzahl"
* insert ShallPopulateObligation(item[ZusatzpunkteMehrfachleistungen], MopedLGFActor)
* item[PunkteSpeziellerBereicheTageweise].category.coding from MopedClaimItemCategoryVS (required)
* item[PunkteSpeziellerBereicheTageweise].category.coding = MopedClaimItemCategoryCS#SCSPEZ
* item[PunkteSpeziellerBereicheTageweise].quantity 1..1
* item[PunkteSpeziellerBereicheTageweise].quantity.value 1..1
* item[PunkteSpeziellerBereicheTageweise].quantity.unit = "LKF Punkte"
* item[PunkteSpeziellerBereicheTageweise].quantity ^short = "Punkteanzahl"
* insert ShallPopulateObligation(item[Gesamtpunkte], MopedLGFActor)
* item[Gesamtpunkte].category.coding from MopedClaimItemCategoryVS (required)
* item[Gesamtpunkte].category.coding = MopedClaimItemCategoryCS#SCGES
* item[Gesamtpunkte].quantity 1..1
* item[Gesamtpunkte].quantity.value 1..1
* item[Gesamtpunkte].quantity.unit = "LKF Punkte"
* item[Gesamtpunkte].quantity ^short = "Punkteanzahl"
* item[Gesamtpunkte].unitPrice 1..1
* item[Gesamtpunkte].unitPrice ^short = "LDF-Punktewert Netto"
* item[Gesamtpunkte].net 1..1
* item[Gesamtpunkte].net ^short = "LDF-Betrag Netto"
* item[Gesamtpunkte].factor = 1
* insert ShallPopulateObligation(item[Patientenanteil], MopedLGFActor)
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
* supportingInfo[Plausibilitaetskennzeichen].code.coding = ClaimSupportingInformationCategoryCS#PLAUS
* supportingInfo[Plausibilitaetskennzeichen].value[x] only string //Ist Wert von 0-5
*/
* total ^short = "Forderungsbetrag für Ausländerverrechnung/Regresse"
* insert ShallPopulateObligation(total, MopedLGFActor)