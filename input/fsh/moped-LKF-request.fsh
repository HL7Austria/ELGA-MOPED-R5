
Profile: MopedLKFRequest
Parent: Claim
Title: "MOPED LKFRequest"
Description: "MOPED Profil der Claim Ressource für die Leistungsabrechnungsanfrage."


* patient only Reference(HL7ATCorePatient)
* patient 1..1
* use = http://hl7.org/fhir/claim-use#claim
* type = http://terminology.hl7.org/CodeSystem/claim-type#institutional

* procedure.extension contains AbrechnungsRelevanz named AbrechnungsRelevanz 1..1
* diagnosisRelatedGroup from LKFAbrechnungsGruppeVS (required)
* diagnosisRelatedGroup ^short =  "\"Abrechnung - Gruppe:\" Dieses Datenfeld ist mit der Codenummer der zutreffenden Abrechnungsgruppe zu befüllen. Bei Datensätzen von stationären Krankenhausaufenthalten, die keiner leistungsorientier- ten Diagnosenfallgruppe zugeordnet werden, erfolgt ein Eintrag entsprechend der jeweiligen Aufnahmeart."
* diagnosisRelatedGroup 1..1

* insurer only Reference(SVOrganization)
* insurer 1..1
* provider only Reference(KHOrganization)
* provider 1..1
* related.claim only Reference(MopedLKFRequest)
* related.claim 1..1
* insurance.coverage only Reference(MopedCoverage)
* insurance.coverage 1..1
* encounter ^slicing.rules = #open
* encounter ^slicing.ordered = false
* encounter ^slicing.discriminator[+].type = #profile
* encounter ^slicing.discriminator[=].path = "resolve()"
* encounter contains MopedEncounter 1..1 and TransferEncounter 1..
* encounter[MopedEncounter] ^short = "Generelle Informationen zu Aufnahme und Entlassung des Patienten"
* encounter[MopedEncounter] only Reference(MopedEncounter)
* encounter[TransferEncounter] ^short = "Informationen zu Verlegungen innerhalb oder zwischen Krankenanstalten"
* encounter[TransferEncounter] only Reference(MopedTransferEncounter)

* diagnosis ^slicing.rules = #open
* diagnosis ^slicing.ordered = true
* diagnosis ^slicing.discriminator[+].type = #value
* diagnosis ^slicing.discriminator[=].path = "type.coding"
* diagnosis contains Hauptdiagnose 1.. and Zusatzdiagnose 0..
* diagnosis[Hauptdiagnose].type.coding from LKFDiagnoseTypVS (required)
* diagnosis[Hauptdiagnose].type.coding = $LKFdiagnoseTyp#H
* diagnosis[Hauptdiagnose].type ^binding.description = "Code für den Typ der LKF Diagnose, der angibt ob es sich um eine Haupt- oder Nebendiagnose handelt"
* diagnosis[Hauptdiagnose].diagnosis[x] 1..1
* diagnosis[Hauptdiagnose].diagnosis[x] only Reference(MopedCondition)
* diagnosis[Hauptdiagnose].onAdmission ^definition =  "Gibt an ob die Diagnose bereits bei Aufnahme in den stationären Aufenthalt vorhanden war"
* diagnosis[Zusatzdiagnose].type.coding from LKFDiagnoseTypVS (required)
* diagnosis[Zusatzdiagnose].type.coding = $LKFdiagnoseTyp#Z
* diagnosis[Zusatzdiagnose].type ^binding.description = "Code für den Typ der LKF Diagnose, der angibt ob es sich um eine Haupt- oder Nebendiagnose handelt"
* diagnosis[Zusatzdiagnose].diagnosis[x] 1..1
* diagnosis[Zusatzdiagnose].diagnosis[x] only Reference(MopedCondition)
* diagnosis[Zusatzdiagnose].onAdmission ^definition =  "Gibt an ob die Diagnose bereits bei Aufnahme in den stationären Aufenthalt vorhanden war"

* supportingInfo ^slicing.rules = #open
* supportingInfo ^slicing.discriminator.type = #value
* supportingInfo ^slicing.discriminator.path = "category"
* supportingInfo ^slicing.ordered = false
* supportingInfo contains Plausibilitaetskennzeichen 1..1 
* supportingInfo[Plausibilitaetskennzeichen] ^short = "Plausibilitätskennzeichen - Dieses Datenfeld enthält eine Kennzeichnung als Ergebnis der vom Gesundheitsministerium vorgegebenen Plausibilitätsprüfung."
* supportingInfo[Plausibilitaetskennzeichen].category = ClaimSupportingInformationCategoryCS#PLAUS
* supportingInfo[Plausibilitaetskennzeichen].value[x] only string //change to unsignedInt in R6
//TBD: * supportingInfo[Plausibilitaetskennzeichen].value[x] //add regex pattern so it can only have numbers from 0-5

* extension contains DiagnoseKnoten named DiagnoseKnoten 1..1
* extension contains FehlerWarnung named FehlerWarnung 0..

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
* item[Leistungskomponente].quantity 1..1
* item[Leistungskomponente].quantity.unit = "LKF Punkte"
* item[Leistungskomponente].quantity ^short = "Punkteanzahl"

* item[Tageskomponente].category.coding from MopedClaimItemCategoryVS (required)
* item[Tageskomponente].category.coding = MopedClaimItemCategoryCS#LDFPTK
* item[Tageskomponente].quantity 1..1
* item[Tageskomponente].quantity.value 1..1
* item[Tageskomponente].quantity.unit = "LKF Punkte"
* item[Tageskomponente].quantity ^short = "Punkteanzahl"

* item[PunkteBelagsdauerausreisserUntenLeistungskomponente].category.coding from MopedClaimItemCategoryVS (required)
* item[PunkteBelagsdauerausreisserUntenLeistungskomponente].category.coding = MopedClaimItemCategoryCS#SCULK
* item[PunkteBelagsdauerausreisserUntenLeistungskomponente].quantity 1..1
* item[PunkteBelagsdauerausreisserUntenLeistungskomponente].quantity.value 1..1
* item[PunkteBelagsdauerausreisserUntenLeistungskomponente].quantity.unit = "LKF Punkte"
* item[PunkteBelagsdauerausreisserUntenLeistungskomponente].quantity ^short = "Punkteanzahl"

* item[PunkteBelagsdauerausreisserUntenTageskomponente].category.coding from MopedClaimItemCategoryVS (required)
* item[PunkteBelagsdauerausreisserUntenTageskomponente].category.coding = MopedClaimItemCategoryCS#SCUTK
* item[PunkteBelagsdauerausreisserUntenTageskomponente].quantity 1..1
* item[PunkteBelagsdauerausreisserUntenTageskomponente].quantity.value 1..1
* item[PunkteBelagsdauerausreisserUntenTageskomponente].quantity.unit = "LKF Punkte"
* item[PunkteBelagsdauerausreisserUntenTageskomponente].quantity ^short = "Punkteanzahl"

* item[ZusatzpunkteBelagsdauerausreisserNachOben].category.coding from MopedClaimItemCategoryVS (required)
* item[ZusatzpunkteBelagsdauerausreisserNachOben].category.coding = MopedClaimItemCategoryCS#BDZU
* item[ZusatzpunkteBelagsdauerausreisserNachOben].quantity 1..1
* item[ZusatzpunkteBelagsdauerausreisserNachOben].quantity.value 1..1
* item[ZusatzpunkteBelagsdauerausreisserNachOben].quantity.unit = "LKF Punkte"
* item[ZusatzpunkteBelagsdauerausreisserNachOben].quantity ^short = "Punkteanzahl"

* item[ZusatzpunkteIntensiv].category.coding from MopedClaimItemCategoryVS (required)
* item[ZusatzpunkteIntensiv].category.coding = MopedClaimItemCategoryCS#INTZU
* item[ZusatzpunkteIntensiv].quantity 1..1
* item[ZusatzpunkteIntensiv].quantity.value 1..1
* item[ZusatzpunkteIntensiv].quantity.unit = "LKF Punkte"
* item[ZusatzpunkteIntensiv].quantity ^short = "Punkteanzahl"

* item[ZusatzpunkteMehrfachleistungen].category.coding from MopedClaimItemCategoryVS (required)
* item[ZusatzpunkteMehrfachleistungen].category.coding = MopedClaimItemCategoryCS#MELZU
* item[ZusatzpunkteMehrfachleistungen].quantity 1..1
* item[ZusatzpunkteMehrfachleistungen].quantity.value 1..1
* item[ZusatzpunkteMehrfachleistungen].quantity.unit = "LKF Punkte"
* item[ZusatzpunkteMehrfachleistungen].quantity ^short = "Punkteanzahl"

* item[PunkteSpeziellerBereicheTageweise].category.coding from MopedClaimItemCategoryVS (required)
* item[PunkteSpeziellerBereicheTageweise].category.coding = MopedClaimItemCategoryCS#SCSPEZ
* item[PunkteSpeziellerBereicheTageweise].quantity 1..1
* item[PunkteSpeziellerBereicheTageweise].quantity.value 1..1
* item[PunkteSpeziellerBereicheTageweise].quantity.unit = "LKF Punkte"
* item[PunkteSpeziellerBereicheTageweise].quantity ^short = "Punkteanzahl"

* item[Gesamtpunkte].category.coding from MopedClaimItemCategoryVS (required)
* item[Gesamtpunkte].category.coding = MopedClaimItemCategoryCS#SCGES
* item[Gesamtpunkte].quantity 1..1
* item[Gesamtpunkte].quantity.value 1..1
* item[Gesamtpunkte].quantity.unit = "LKF Punkte"
* item[Gesamtpunkte].quantity ^short = "Punkteanzahl"
