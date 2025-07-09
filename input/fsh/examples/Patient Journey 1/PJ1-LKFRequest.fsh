Instance: PJ1LKFRequest1
InstanceOf: MopedLKFRequest
Description: "Hackathon Patient Journey 1 Beispiel: LKFRequest 1"
Usage: #example
* meta.profile = "https://elga.moped.at/StructureDefinition/MopedLKFRequest"
* status = #active
* use = http://hl7.org/fhir/claim-use#claim
* type = http://terminology.hl7.org/CodeSystem/claim-type#institutional
* patient = Reference(PJ1Patient)
* created = "2024-10-31"
* insurer = Reference(oegk-wien)
* provider = Reference(OrganizationHerzJesuKrankenhaus)
* encounter[MopedEncounter] = Reference(PJ1Encounter)
* encounter[TransferEncounter] = Reference(PJ1TransferEncounter1)
* diagnosisRelatedGroup.coding = LKFHauptdiagnosegruppenCS#HDG01.31

* insurance.coverage = Reference(PJ1Coverage)
* insurance.sequence = 1
* insurance.focal = true
* procedure[+].extension[AbrechnungsRelevanz].valueCoding = AbrechnungsRelevanzCS#J
* procedure[=].sequence = 1
* procedure[=].procedureReference = Reference(PJ1Procedure1)
* diagnosis[Hauptdiagnose].diagnosisReference = Reference(PJ1Condition1)
* diagnosis[Hauptdiagnose].sequence = 1
* diagnosis[Hauptdiagnose].type.coding = $LKFdiagnoseTyp#H
* diagnosis[Hauptdiagnose].onAdmission = http://terminology.hl7.org/CodeSystem/ex-diagnosis-on-admission#unknown

* supportingInfo[Plausibilitaetskennzeichen].sequence = 1
* supportingInfo[Plausibilitaetskennzeichen].category = http://terminology.hl7.org/CodeSystem/claiminformationcategory#info
* supportingInfo[Plausibilitaetskennzeichen].code.coding = ClaimSupportingInformationTypesCS#PLAUS
* supportingInfo[Plausibilitaetskennzeichen].valueString = "1234"


* extension[DiagnoseKnoten].valueCoding = LKFAbrechnungsKnotenCS#D
* item[PunkteBelagsdauerausreisserUntenLeistungskomponente].quantity.value = 0
* item[PunkteBelagsdauerausreisserUntenLeistungskomponente].category.coding = MopedClaimItemCategoryCS#Punkte
* item[PunkteBelagsdauerausreisserUntenLeistungskomponente].productOrService = LKFPunkteArtenCS#SCULK
* item[PunkteBelagsdauerausreisserUntenLeistungskomponente].sequence = 1
* item[PunkteBelagsdauerausreisserUntenTageskomponente].quantity.value = 0
* item[PunkteBelagsdauerausreisserUntenTageskomponente].category.coding = MopedClaimItemCategoryCS#Punkte
* item[PunkteBelagsdauerausreisserUntenTageskomponente].productOrService = LKFPunkteArtenCS#SCUTK
* item[PunkteBelagsdauerausreisserUntenTageskomponente].sequence = 2
* item[ZusatzpunkteBelagsdauerausreisserNachOben].quantity.value = 0
* item[ZusatzpunkteBelagsdauerausreisserNachOben].category.coding = MopedClaimItemCategoryCS#Punkte
* item[ZusatzpunkteBelagsdauerausreisserNachOben].productOrService = LKFPunkteArtenCS#BDZU
* item[ZusatzpunkteBelagsdauerausreisserNachOben].sequence = 3
* item[ZusatzpunkteIntensiv].quantity.value = 0
* item[ZusatzpunkteIntensiv].category.coding = MopedClaimItemCategoryCS#Punkte
* item[ZusatzpunkteIntensiv].productOrService = LKFPunkteArtenCS#INTZU
* item[ZusatzpunkteIntensiv].sequence = 4
* item[ZusatzpunkteMehrfachleistungen].quantity.value = 0
* item[ZusatzpunkteMehrfachleistungen].category.coding = MopedClaimItemCategoryCS#Punkte
* item[ZusatzpunkteMehrfachleistungen].productOrService = LKFPunkteArtenCS#MELZU
* item[ZusatzpunkteMehrfachleistungen].sequence = 5
* item[PunkteSpeziellerBereicheTageweise].quantity.value = 0
* item[PunkteSpeziellerBereicheTageweise].category.coding = MopedClaimItemCategoryCS#Punkte
* item[PunkteSpeziellerBereicheTageweise].productOrService = LKFPunkteArtenCS#SCSPEZ
* item[PunkteSpeziellerBereicheTageweise].sequence = 6
* item[Gesamtpunkte].quantity.value = 1110
* item[Gesamtpunkte].category.coding = MopedClaimItemCategoryCS#Punkte
* item[Gesamtpunkte].productOrService = LKFPunkteArtenCS#SCGES
* item[Gesamtpunkte].sequence = 7
* item[Leistungskomponente].quantity.value = 743
* item[Leistungskomponente].category.coding = MopedClaimItemCategoryCS#Punkte
* item[Leistungskomponente].productOrService = LKFPunkteArtenCS#LDFPLK
* item[Leistungskomponente].sequence = 8
* item[Tageskomponente].quantity.value = 367
* item[Tageskomponente].category.coding = MopedClaimItemCategoryCS#Punkte
* item[Tageskomponente].productOrService = LKFPunkteArtenCS#LDFPTK
* item[Tageskomponente].sequence = 9