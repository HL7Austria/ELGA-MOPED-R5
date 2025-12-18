
Profile: MopedLKFRequest
Parent: Claim
Title: "MOPED LKFRequest"
Description: "MOPED Profil der Claim Ressource für die Leistungsabrechnungsanfrage."
* insert MappingHeaderEinfuegen()
* insert ShallPopulateObligation(created, MopedKHActor)
* insert ShallPopulateObligation(status, MopedKHActor)
* insert MopedHandleObligation(status)
* patient only Reference(MopedPatient)
* patient 1..1
* insert MopedHandleObligation(patient)
* use = http://hl7.org/fhir/claim-use#claim
* insert ShallPopulateObligation(use, MopedKHActor)
* type from MopedClaimTypeVS
* type.coding = MopedClaimTypeCS#LKFREQ (exactly)
* insert ShallPopulateObligation(type, MopedKHActor)
* subType from MopedLKFRequestSubTypeVS
* subType 1..1
* insert ShallPopulateObligation(subType, MopedKHActor)
* procedure.extension contains AbrechnungsRelevanz named AbrechnungsRelevanz 0..1
* procedure.extension[AbrechnungsRelevanz] ^short = "LKF: Medizinische Leistung – Abrechnungsrelevanz"
* insert legacyMapping(procedure.extension[AbrechnungsRelevanz], LKF, [[Medizinische Leistung – Abrechnungsrelevanz]])
* insert ShallPopulateObligation(procedure.extension[AbrechnungsRelevanz], MopedKHActor)
* procedure.procedure[x] 1..
* procedure.procedure[x] only Reference(MopedProcedure)
* insert ShallPopulateObligation(procedure.procedure[x], MopedKHActor)

* diagnosisRelatedGroup from LKFAbrechnungsGruppeVS (required)
* diagnosisRelatedGroup ^short =  "LKF: Abrechnung – Gruppe"
* insert legacyMapping(diagnosisRelatedGroup, LKF, [[Abrechnung – Gruppe]])
* diagnosisRelatedGroup 1..1
* insert ShallPopulateObligation(diagnosisRelatedGroup, MopedKHActor)

* insurer only Reference(SVOrganization)
* insurer 1..1
* insert MopedHandleObligation(insurer) //? Fallsplitting?
* provider only Reference(KHOrganization)
* provider 1..1
* insert MopedHandleObligation(provider)
* related ^slicing.rules = #open
* related ^slicing.ordered = false
* related ^slicing.discriminator[+].type = #value
* related ^slicing.discriminator[=].path = "claim.resolve().type"
* related contains zugehoerigeVAE 0.. and vorherigerLKFRequest 0..
* related[zugehoerigeVAE].claim only Reference(MopedVAERequest)
* insert MopedHandleObligation(related[zugehoerigeVAE].claim)
* related[zugehoerigeVAE].relationship = http://terminology.hl7.org/CodeSystem/ex-relatedclaimrelationship#associated
* related[zugehoerigeVAE].relationship 1..1
* insert MopedHandleObligation(related[zugehoerigeVAE].relationship)
* related[vorherigerLKFRequest].claim only Reference(MopedLKFRequest)
* insert ShallPopulateObligation(related[vorherigerLKFRequest].claim, MopedKHActor)
* related[vorherigerLKFRequest].relationship = http://terminology.hl7.org/CodeSystem/ex-relatedclaimrelationship#prior
* related[vorherigerLKFRequest].relationship 1..1
* insert ShallPopulateObligation(related[vorherigerLKFRequest].relationship, MopedKHActor)
* insurance.coverage only Reference(MopedCoverage)
* insurance.coverage 1..1
* insert MopedHandleObligation(insurance.coverage)
* encounter ^slicing.rules = #open
* encounter ^slicing.ordered = false
* encounter ^slicing.discriminator[+].type = #value
* encounter ^slicing.discriminator[=].path = "resolve().type"
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
* diagnosis.onAdmission ^short =  "LKF: Diagnose – im stationären Aufenthalt erworben; Gibt an ob die Diagnose bereits bei Aufnahme in den stationären Aufenthalt vorhanden war"
* insert legacyMapping(diagnosis.onAdmission, LKF, [[Diagnose – im stationären Aufenthalt erworben]])
* insert ShallPopulateObligation(diagnosis.onAdmission, MopedKHActor)

* supportingInfo ^slicing.rules = #open
* supportingInfo ^slicing.discriminator.type = #value
* supportingInfo ^slicing.discriminator.path = "category"
* supportingInfo ^slicing.ordered = false
* supportingInfo contains Plausibilitaetskennzeichen 1..1 
* supportingInfo[Plausibilitaetskennzeichen] ^short = "LKF: Plausibilitätskennzeichen; Dieses Datenfeld enthält eine Kennzeichnung als Ergebnis der vom Gesundheitsministerium vorgegebenen Plausibilitätsprüfung."
* supportingInfo[Plausibilitaetskennzeichen].category = ClaimSupportingInformationCategoryCS#PLAUS
* supportingInfo[Plausibilitaetskennzeichen].value[x] only string //change to unsignedInt in R6
* insert legacyMapping(supportingInfo[Plausibilitaetskennzeichen].value[x], LKF, [[Plausibilitätskennzeichen]])
* insert ShallPopulateObligation(supportingInfo[Plausibilitaetskennzeichen].value[x], MopedKHActor)
//TBD: * supportingInfo[Plausibilitaetskennzeichen].value[x] //add regex pattern so it can only have numbers from 0-5
* insert ShallPopulateObligation(supportingInfo[Plausibilitaetskennzeichen], MopedKHActor)

* supportingInfo contains EndgueltigeMeldung 1..1 
* supportingInfo[EndgueltigeMeldung] ^short = "Feld, welches angibt, ob es sich um die vorläufige oder endgültige Meldung handelt."
* supportingInfo[EndgueltigeMeldung].category = ClaimSupportingInformationCategoryCS#ENDG
* supportingInfo[EndgueltigeMeldung].value[x] only boolean
* insert ShallPopulateObligation(supportingInfo[EndgueltigeMeldung], MopedKHActor)

* supportingInfo contains XDokDevice 1..1 
* supportingInfo[XDokDevice] ^short = "Feld, welches die XDok Version angibt die zum Scoring verwendet wurde."
* supportingInfo[XDokDevice].category = ClaimSupportingInformationCategoryCS#DEVX
* supportingInfo[XDokDevice].value[x] only Reference(MopedDeviceXDok)
* insert ShallPopulateObligation(supportingInfo[XDokDevice], MopedKHActor)

* extension contains DiagnoseKnoten named DiagnoseKnoten 1..1
* extension[DiagnoseKnoten] ^short = "LKF: Abrechnung – Knoten"
* insert legacyMapping(extension[DiagnoseKnoten], LKF, [[Abrechnung – Knoten]])
* insert ShallPopulateObligation(extension[DiagnoseKnoten], MopedKHActor)
* extension contains FehlerWarnung named FehlerWarnung 0..
* insert ShallPopulateObligation(extension[FehlerWarnung], MopedKHActor)
* extension contains Fondsrelevanz named Fondsrelevanz 1..1
* extension[DiagnoseKnoten] ^short = "LKF: Fondsrelevanz"
* insert legacyMapping(extension[Fondsrelevanz], LKF, [[Fondsrelevanz]])
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
* item[Leistungskomponente].category from MopedClaimItemCategoryVS (required)
* item[Leistungskomponente].category.coding = MopedClaimItemCategoryCS#LDFPLK
* insert ShallPopulateObligation(item[Leistungskomponente].category.coding, MopedKHActor)
* item[Leistungskomponente].quantity 1..1
* item[Leistungskomponente].quantity.unit = "LKF Punkte"
* insert ShallPopulateObligation(item[Leistungskomponente].quantity.unit, MopedKHActor)
* item[Leistungskomponente].quantity.value 1..1
* item[Leistungskomponente].quantity.value ^short = "LKF: Leistungskomponente/Leistungspunkte"
* insert legacyMapping(item[Leistungskomponente].quantity.value, LKF, [[Leistungskomponente/Leistungspunkte]])
* insert ShallPopulateObligation(item[Leistungskomponente].quantity.value, MopedKHActor)

* item[Tageskomponente].category.coding from MopedClaimItemCategoryVS (required)
* item[Tageskomponente].category.coding = MopedClaimItemCategoryCS#LDFPTK
* insert ShallPopulateObligation(item[Tageskomponente].category.coding, MopedKHActor)
* item[Tageskomponente].quantity 1..1
* item[Tageskomponente].quantity.unit = "LKF Punkte"
* insert ShallPopulateObligation(item[Tageskomponente].quantity.unit, MopedKHActor)
* item[Tageskomponente].quantity.value 1..1
* item[Tageskomponente].quantity.value ^short = "LKF: Tageskomponente/Kontaktpunkte"
* insert legacyMapping(item[Tageskomponente].quantity.value, LKF, [[Tageskomponente/Kontaktpunkte]])
* insert ShallPopulateObligation(item[Tageskomponente].quantity.value, MopedKHActor)

* item[PunkteBelagsdauerausreisserUntenLeistungskomponente].category.coding from MopedClaimItemCategoryVS (required)
* item[PunkteBelagsdauerausreisserUntenLeistungskomponente].category.coding = MopedClaimItemCategoryCS#SCULK
* insert ShallPopulateObligation(item[PunkteBelagsdauerausreisserUntenLeistungskomponente].category.coding, MopedKHActor)
* item[PunkteBelagsdauerausreisserUntenLeistungskomponente].quantity 1..1
* item[PunkteBelagsdauerausreisserUntenLeistungskomponente].quantity.unit = "LKF Punkte"
* insert ShallPopulateObligation(item[PunkteBelagsdauerausreisserUntenLeistungskomponente].quantity.unit, MopedKHActor)
* item[PunkteBelagsdauerausreisserUntenLeistungskomponente].quantity.value 1..1
* item[PunkteBelagsdauerausreisserUntenLeistungskomponente].quantity.value ^short = "LKF: Punkte Belagsdauerausreißer nach unten – Leistungskomponente"
* insert legacyMapping(item[PunkteBelagsdauerausreisserUntenLeistungskomponente].quantity.value, LKF, [[Punkte Belagsdauerausreißer nach unten – Leistungskomponente]])
* insert ShallPopulateObligation(item[PunkteBelagsdauerausreisserUntenLeistungskomponente].quantity.value, MopedKHActor)

* item[PunkteBelagsdauerausreisserUntenTageskomponente].category.coding from MopedClaimItemCategoryVS (required)
* item[PunkteBelagsdauerausreisserUntenTageskomponente].category.coding = MopedClaimItemCategoryCS#SCUTK
* insert ShallPopulateObligation(item[PunkteBelagsdauerausreisserUntenTageskomponente].category.coding, MopedKHActor)
* item[PunkteBelagsdauerausreisserUntenTageskomponente].quantity 1..1
* item[PunkteBelagsdauerausreisserUntenTageskomponente].quantity.unit = "LKF Punkte"
* insert ShallPopulateObligation(item[PunkteBelagsdauerausreisserUntenTageskomponente].quantity.unit, MopedKHActor)
* item[PunkteBelagsdauerausreisserUntenTageskomponente].quantity.value 1..1
* item[PunkteBelagsdauerausreisserUntenTageskomponente].quantity.value ^short = "LKF: Punkte Belagsdauerausreißer nach unten – Tageskomponente"
* insert legacyMapping(item[PunkteBelagsdauerausreisserUntenTageskomponente].quantity.value, LKF, [[Punkte Belagsdauerausreißer nach unten – Tageskomponente]])
* insert ShallPopulateObligation(item[PunkteBelagsdauerausreisserUntenTageskomponente].quantity.value, MopedKHActor)

* item[ZusatzpunkteBelagsdauerausreisserNachOben].category.coding from MopedClaimItemCategoryVS (required)
* item[ZusatzpunkteBelagsdauerausreisserNachOben].category.coding = MopedClaimItemCategoryCS#BDZU
* insert ShallPopulateObligation(item[ZusatzpunkteBelagsdauerausreisserNachOben].category.coding, MopedKHActor)
* item[ZusatzpunkteBelagsdauerausreisserNachOben].quantity 1..1
* item[ZusatzpunkteBelagsdauerausreisserNachOben].quantity.unit = "LKF Punkte"
* insert ShallPopulateObligation(item[ZusatzpunkteBelagsdauerausreisserNachOben].quantity.unit, MopedKHActor)
* item[ZusatzpunkteBelagsdauerausreisserNachOben].quantity.value 1..1
* item[ZusatzpunkteBelagsdauerausreisserNachOben].quantity.value ^short = "LKF: Zusatzpunkte Belagsdauerausreißer nach oben"
* insert legacyMapping(item[ZusatzpunkteBelagsdauerausreisserNachOben].quantity.value, LKF, [[Zusatzpunkte Belagsdauerausreißer nach oben]])
* insert ShallPopulateObligation(item[ZusatzpunkteBelagsdauerausreisserNachOben].quantity.value, MopedKHActor)

* item[ZusatzpunkteIntensiv].category.coding from MopedClaimItemCategoryVS (required)
* item[ZusatzpunkteIntensiv].category.coding = MopedClaimItemCategoryCS#INTZU
* insert ShallPopulateObligation(item[ZusatzpunkteIntensiv].category.coding, MopedKHActor)
* item[ZusatzpunkteIntensiv].quantity 1..1
* item[ZusatzpunkteIntensiv].quantity.unit = "LKF Punkte"
* insert ShallPopulateObligation(item[ZusatzpunkteIntensiv].quantity.unit, MopedKHActor)
* item[ZusatzpunkteIntensiv].quantity.value 1..1
* item[ZusatzpunkteIntensiv].quantity.value ^short = "LKF: Zusatzpunkte Intensiv"
* insert legacyMapping(item[ZusatzpunkteIntensiv].quantity.value, LKF, [[Zusatzpunkte Intensiv]])
* insert ShallPopulateObligation(item[ZusatzpunkteIntensiv].quantity.value, MopedKHActor)

* item[ZusatzpunkteMehrfachleistungen].category.coding from MopedClaimItemCategoryVS (required)
* item[ZusatzpunkteMehrfachleistungen].category.coding = MopedClaimItemCategoryCS#MELZU
* insert ShallPopulateObligation(item[ZusatzpunkteMehrfachleistungen].category.coding, MopedKHActor)
* item[ZusatzpunkteMehrfachleistungen].quantity 1..1
* item[ZusatzpunkteMehrfachleistungen].quantity.unit = "LKF Punkte"
* insert ShallPopulateObligation(item[ZusatzpunkteMehrfachleistungen].quantity.unit, MopedKHActor)
* item[ZusatzpunkteMehrfachleistungen].quantity.value 1..1
* item[ZusatzpunkteMehrfachleistungen].quantity.value ^short = "LKF: Zusatzpunkte Mehrfachleistungen"
* insert legacyMapping(item[ZusatzpunkteMehrfachleistungen].quantity.value, LKF, [[Zusatzpunkte Mehrfachleistungen]])
* insert ShallPopulateObligation(item[ZusatzpunkteMehrfachleistungen].quantity.value, MopedKHActor)

* item[PunkteSpeziellerBereicheTageweise].category.coding from MopedClaimItemCategoryVS (required)
* item[PunkteSpeziellerBereicheTageweise].category.coding = MopedClaimItemCategoryCS#SCSPEZ
* insert ShallPopulateObligation(item[PunkteSpeziellerBereicheTageweise].category.coding, MopedKHActor)
* item[PunkteSpeziellerBereicheTageweise].quantity 1..1
* item[PunkteSpeziellerBereicheTageweise].quantity.unit = "LKF Punkte"
* insert ShallPopulateObligation(item[PunkteSpeziellerBereicheTageweise].quantity.unit, MopedKHActor)
* item[PunkteSpeziellerBereicheTageweise].quantity.value 1..1
* item[PunkteSpeziellerBereicheTageweise].quantity.value ^short = "LKF: Punkte spezieller Bereiche (tageweise)"
* insert legacyMapping(item[PunkteSpeziellerBereicheTageweise].quantity.value, LKF, [[Punkte spezieller Bereiche (tageweise)]])
* insert ShallPopulateObligation(item[PunkteSpeziellerBereicheTageweise].quantity.value, MopedKHActor)

* item[Gesamtpunkte].category.coding from MopedClaimItemCategoryVS (required)
* item[Gesamtpunkte].category.coding = MopedClaimItemCategoryCS#SCGES
* insert ShallPopulateObligation(item[Gesamtpunkte].category.coding, MopedKHActor)
* item[Gesamtpunkte].quantity 1..1
* item[Gesamtpunkte].quantity.unit = "LKF Punkte"
* insert ShallPopulateObligation(item[Gesamtpunkte].quantity.unit, MopedKHActor)
* item[Gesamtpunkte].quantity.value 1..1
* item[Gesamtpunkte].quantity.value ^short = "LKF: Punkte total"
* insert legacyMapping(item[Gesamtpunkte].quantity.value, LKF, [[Punkte total]])
* insert ShallPopulateObligation(item[Gesamtpunkte].quantity.value, MopedKHActor)
