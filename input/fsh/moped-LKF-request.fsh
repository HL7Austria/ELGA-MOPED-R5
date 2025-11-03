
Profile: MopedLKFRequest
Parent: Claim
Title: "MOPED LKFRequest"
Description: "MOPED Profil der Claim Ressource für die Leistungsabrechnungsanfrage."
* insert ShallPopulateObligation(status, MopedKHActor)
* insert MopedHandleObligation(status)
* patient only Reference(HL7ATCorePatient)
* patient 1..1
* insert MopedHandleObligation(patient)
* use = http://hl7.org/fhir/claim-use#claim
* insert ShallPopulateObligation(use, MopedKHActor)
* type = http://terminology.hl7.org/CodeSystem/claim-type#institutional
* insert ShallPopulateObligation(type, MopedKHActor)
* procedure.extension contains AbrechnungsRelevanz named AbrechnungsRelevanz 0..1
* insert ShallPopulateObligation(procedure.extension[AbrechnungsRelevanz], MopedKHActor)
* procedure.procedure[x] 1..
* procedure.procedure[x] only Reference(MopedProcedure)
* insert ShallPopulateObligation(procedure.procedure[x], MopedKHActor)

* diagnosisRelatedGroup from LKFAbrechnungsGruppeVS (required)
* diagnosisRelatedGroup ^short =  "LKF: Abrechnung - Gruppe"
* diagnosisRelatedGroup 1..1
* insert ShallPopulateObligation(diagnosisRelatedGroup, MopedKHActor)

* insurer only Reference(SVOrganization)
* insurer 1..1
* insert MopedHandleObligation(insurer) //? Fallsplitting?
* provider only Reference(KHOrganization)
* provider 1..1
* insert MopedHandleObligation(provider)
* related.claim only Reference(MopedLKFRequest)
* related.claim 1..1
* insert ShallPopulateObligation(related.claim, MopedKHActor)
* insurance.coverage only Reference(MopedCoverage)
* insurance.coverage 1..1
* insert MopedHandleObligation(insurance.coverage)
* encounter ^slicing.rules = #open
* encounter ^slicing.ordered = false
* encounter ^slicing.discriminator[+].type = #profile
* encounter ^slicing.discriminator[=].path = "resolve()"
* encounter contains MopedEncounter 1..1 and TransferEncounter 1..
* encounter[MopedEncounter] ^short = "Generelle Informationen zu Aufnahme und Entlassung des Patienten"
* encounter[MopedEncounter] only Reference(MopedEncounter)
* encounter[TransferEncounter] ^short = "Informationen zu Verlegungen innerhalb oder zwischen Krankenanstalten"
* encounter[TransferEncounter] only Reference(MopedTransferEncounter)
* insert MopedHandleObligation(encounter[MopedEncounter])
* insert MopedHandleObligation(encounter[TransferEncounter])

* diagnosis.diagnosis[x] 1..1
* diagnosis.diagnosis[x] only Reference(MopedCondition)
* insert ShallPopulateObligation(diagnosis.diagnosis[x], MopedKHActor)
* diagnosis.onAdmission ^definition =  "LKF: Diagnose – im stationären Aufenthalt erworben; Gibt an ob die Diagnose bereits bei Aufnahme in den stationären Aufenthalt vorhanden war"
* insert ShallPopulateObligation(diagnosis.onAdmission, MopedKHActor)

* supportingInfo ^slicing.rules = #open
* supportingInfo ^slicing.discriminator.type = #value
* supportingInfo ^slicing.discriminator.path = "category"
* supportingInfo ^slicing.ordered = false
* supportingInfo contains Plausibilitaetskennzeichen 1..1 
* supportingInfo[Plausibilitaetskennzeichen] ^short = "Plausibilitätskennzeichen - Dieses Datenfeld enthält eine Kennzeichnung als Ergebnis der vom Gesundheitsministerium vorgegebenen Plausibilitätsprüfung."
* supportingInfo[Plausibilitaetskennzeichen].category = ClaimSupportingInformationCategoryCS#PLAUS
* supportingInfo[Plausibilitaetskennzeichen].value[x] only string //change to unsignedInt in R6
//TBD: * supportingInfo[Plausibilitaetskennzeichen].value[x] //add regex pattern so it can only have numbers from 0-5
* insert ShallPopulateObligation(supportingInfo[Plausibilitaetskennzeichen], MopedKHActor)

* supportingInfo contains EndgueltigeMeldung 1..1 
* supportingInfo[EndgueltigeMeldung] ^short = "Feld, welches angibt, ob es sich um die vorläufige oder endgültige Meldung handelt."
* supportingInfo[EndgueltigeMeldung].category = ClaimSupportingInformationCategoryCS#ENDG
* supportingInfo[EndgueltigeMeldung].value[x] only boolean
* insert ShallPopulateObligation(supportingInfo[EndgueltigeMeldung], MopedKHActor)

* extension contains DiagnoseKnoten named DiagnoseKnoten 1..1
* extension[DiagnoseKnoten] ^short = "LKF: Abrechnung – Knoten"
* insert ShallPopulateObligation(extension[DiagnoseKnoten], MopedKHActor)
* extension contains FehlerWarnung named FehlerWarnung 0..
* insert ShallPopulateObligation(extension[FehlerWarnung], MopedKHActor)
* extension contains Fondsrelevanz named Fondsrelevanz 1..1
* insert ShallPopulateObligation(extension[Fondsrelevanz], MopedKHActor)
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
* item[Leistungskomponente] ^short = "LKF: Leistungskomponente/Leistungspunkte"
* item[Leistungskomponente].category from MopedClaimItemCategoryVS (required)
* item[Leistungskomponente].category.coding = MopedClaimItemCategoryCS#LDFPLK
* item[Leistungskomponente].quantity 1..1
* item[Leistungskomponente].quantity.unit = "LKF Punkte"
* item[Leistungskomponente].quantity ^short = "Punkteanzahl"
* insert ShallPopulateObligation(item[Leistungskomponente], MopedKHActor)

* item[Tageskomponente] ^short = "LKF: Tageskomponente/Kontaktpunkte"
* item[Tageskomponente].category.coding from MopedClaimItemCategoryVS (required)
* item[Tageskomponente].category.coding = MopedClaimItemCategoryCS#LDFPTK
* item[Tageskomponente].quantity 1..1
* item[Tageskomponente].quantity.value 1..1
* item[Tageskomponente].quantity.unit = "LKF Punkte"
* item[Tageskomponente].quantity ^short = "Punkteanzahl"
* insert ShallPopulateObligation(item[Tageskomponente], MopedKHActor)

* item[PunkteBelagsdauerausreisserUntenLeistungskomponente] ^short = "LKF: Punkte Belagsdauerausreißer nach unten – Leistungskomponente"
* item[PunkteBelagsdauerausreisserUntenLeistungskomponente].category.coding from MopedClaimItemCategoryVS (required)
* item[PunkteBelagsdauerausreisserUntenLeistungskomponente].category.coding = MopedClaimItemCategoryCS#SCULK
* item[PunkteBelagsdauerausreisserUntenLeistungskomponente].quantity 1..1
* item[PunkteBelagsdauerausreisserUntenLeistungskomponente].quantity.value 1..1
* item[PunkteBelagsdauerausreisserUntenLeistungskomponente].quantity.unit = "LKF Punkte"
* item[PunkteBelagsdauerausreisserUntenLeistungskomponente].quantity ^short = "Punkteanzahl"
* insert ShallPopulateObligation(item[PunkteBelagsdauerausreisserUntenLeistungskomponente], MopedKHActor)

* item[PunkteBelagsdauerausreisserUntenTageskomponente] ^short = "LKF: Punkte Belagsdauerausreißer nach unten – Tageskomponente"
* item[PunkteBelagsdauerausreisserUntenTageskomponente].category.coding from MopedClaimItemCategoryVS (required)
* item[PunkteBelagsdauerausreisserUntenTageskomponente].category.coding = MopedClaimItemCategoryCS#SCUTK
* item[PunkteBelagsdauerausreisserUntenTageskomponente].quantity 1..1
* item[PunkteBelagsdauerausreisserUntenTageskomponente].quantity.value 1..1
* item[PunkteBelagsdauerausreisserUntenTageskomponente].quantity.unit = "LKF Punkte"
* item[PunkteBelagsdauerausreisserUntenTageskomponente].quantity ^short = "Punkteanzahl"
* insert ShallPopulateObligation(item[PunkteBelagsdauerausreisserUntenTageskomponente], MopedKHActor)

* item[ZusatzpunkteBelagsdauerausreisserNachOben] ^short = "LKF: Zusatzpunkte Belagsdauerausreißer nach oben"
* item[ZusatzpunkteBelagsdauerausreisserNachOben].category.coding from MopedClaimItemCategoryVS (required)
* item[ZusatzpunkteBelagsdauerausreisserNachOben].category.coding = MopedClaimItemCategoryCS#BDZU
* item[ZusatzpunkteBelagsdauerausreisserNachOben].quantity 1..1
* item[ZusatzpunkteBelagsdauerausreisserNachOben].quantity.value 1..1
* item[ZusatzpunkteBelagsdauerausreisserNachOben].quantity.unit = "LKF Punkte"
* item[ZusatzpunkteBelagsdauerausreisserNachOben].quantity ^short = "Punkteanzahl"
* insert ShallPopulateObligation(item[ZusatzpunkteBelagsdauerausreisserNachOben], MopedKHActor)

* item[ZusatzpunkteIntensiv] ^short = "LKF: Zusatzpunkte Intensiv"
* item[ZusatzpunkteIntensiv].category.coding from MopedClaimItemCategoryVS (required)
* item[ZusatzpunkteIntensiv].category.coding = MopedClaimItemCategoryCS#INTZU
* item[ZusatzpunkteIntensiv].quantity 1..1
* item[ZusatzpunkteIntensiv].quantity.value 1..1
* item[ZusatzpunkteIntensiv].quantity.unit = "LKF Punkte"
* item[ZusatzpunkteIntensiv].quantity ^short = "Punkteanzahl"
* insert ShallPopulateObligation(item[ZusatzpunkteIntensiv], MopedKHActor)

* item[ZusatzpunkteMehrfachleistungen] ^short = "LKF: Zusatzpunkte Mehrfachleistungen"
* item[ZusatzpunkteMehrfachleistungen].category.coding from MopedClaimItemCategoryVS (required)
* item[ZusatzpunkteMehrfachleistungen].category.coding = MopedClaimItemCategoryCS#MELZU
* item[ZusatzpunkteMehrfachleistungen].quantity 1..1
* item[ZusatzpunkteMehrfachleistungen].quantity.value 1..1
* item[ZusatzpunkteMehrfachleistungen].quantity.unit = "LKF Punkte"
* item[ZusatzpunkteMehrfachleistungen].quantity ^short = "Punkteanzahl"
* insert ShallPopulateObligation(item[ZusatzpunkteMehrfachleistungen], MopedKHActor)

* item[PunkteSpeziellerBereicheTageweise] ^short = "LKF: Punkte spezieller Bereiche (tageweise)"
* item[PunkteSpeziellerBereicheTageweise].category.coding from MopedClaimItemCategoryVS (required)
* item[PunkteSpeziellerBereicheTageweise].category.coding = MopedClaimItemCategoryCS#SCSPEZ
* item[PunkteSpeziellerBereicheTageweise].quantity 1..1
* item[PunkteSpeziellerBereicheTageweise].quantity.value 1..1
* item[PunkteSpeziellerBereicheTageweise].quantity.unit = "LKF Punkte"
* item[PunkteSpeziellerBereicheTageweise].quantity ^short = "Punkteanzahl"
* insert ShallPopulateObligation(item[PunkteSpeziellerBereicheTageweise], MopedKHActor)

* item[Gesamtpunkte] ^short = "LKF: Punkte total"
* item[Gesamtpunkte].category.coding from MopedClaimItemCategoryVS (required)
* item[Gesamtpunkte].category.coding = MopedClaimItemCategoryCS#SCGES
* item[Gesamtpunkte].quantity 1..1
* item[Gesamtpunkte].quantity.value 1..1
* item[Gesamtpunkte].quantity.unit = "LKF Punkte"
* item[Gesamtpunkte].quantity ^short = "Punkteanzahl"
* insert ShallPopulateObligation(item[Gesamtpunkte], MopedKHActor)
