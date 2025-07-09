Instance: PJ2LKFRequest1
InstanceOf: MopedLKFRequest
Description: "Hackathon Patient Journey 2 Beispiel: LKFRequest 1"
Usage: #example
* meta.profile = "https://elga.moped.at/StructureDefinition/MopedLKFRequest"
* status = #active
* use = http://hl7.org/fhir/claim-use#claim
* type = http://terminology.hl7.org/CodeSystem/claim-type#institutional
* patient = Reference(PJ2Patient)
* created = "2025-02-24"
* insurer = Reference(oegk-oberoesterreich)
* provider = Reference(OrganizationKrankenhausRied)
* encounter[MopedEncounter] = Reference(PJ2Encounter)
* encounter[TransferEncounter] = Reference(PJ2TransferEncounter1)
* encounter[TransferEncounter] = Reference(PJ2TransferEncounter2)
* encounter[TransferEncounter] = Reference(PJ2TransferEncounter3)
* encounter[TransferEncounter] = Reference(PJ2TransferEncounter4)
* encounter[TransferEncounter] = Reference(PJ2TransferEncounter5)
* diagnosisRelatedGroup.coding = LKFHauptdiagnosegruppenCS#HDG15.03
* insurance.coverage = Reference(PJ2Coverage)
* insurance.sequence = 1
* insurance.focal = true

* procedure[+].extension[AbrechnungsRelevanz].valueCoding = AbrechnungsRelevanzCS#J
* procedure[=].sequence = 1
* procedure[=].procedureReference = Reference(PJ2Procedure1)
* procedure[+].extension[AbrechnungsRelevanz].valueCoding = AbrechnungsRelevanzCS#J
* procedure[=].sequence = 2
* procedure[=].procedureReference = Reference(PJ2Procedure2)


* diagnosis[Hauptdiagnose].diagnosisReference = Reference(PJ2Condition1)
* diagnosis[Hauptdiagnose].sequence = 1
* diagnosis[Hauptdiagnose].type.coding = $LKFdiagnoseTyp#H
* diagnosis[Hauptdiagnose].onAdmission = http://terminology.hl7.org/CodeSystem/ex-diagnosis-on-admission#unknown
* diagnosis[Zusatzdiagnose].diagnosisReference = Reference(PJ2Condition2)
* diagnosis[Zusatzdiagnose].sequence = 2
* diagnosis[Zusatzdiagnose].type.coding = $LKFdiagnoseTyp#Z
* diagnosis[Zusatzdiagnose].onAdmission = http://terminology.hl7.org/CodeSystem/ex-diagnosis-on-admission#unknown

* supportingInfo[Plausibilitaetskennzeichen].sequence = 1
* supportingInfo[Plausibilitaetskennzeichen].category = http://terminology.hl7.org/CodeSystem/claiminformationcategory#info
* supportingInfo[Plausibilitaetskennzeichen].code.coding = ClaimSupportingInformationTypesCS#PLAUS
* supportingInfo[Plausibilitaetskennzeichen].valueString = "1234"

* extension[DiagnoseKnoten].valueCoding = LKFAbrechnungsKnotenCS#C

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
* item[Gesamtpunkte].quantity.value = 1384
* item[Gesamtpunkte].category.coding = MopedClaimItemCategoryCS#Punkte
* item[Gesamtpunkte].productOrService = LKFPunkteArtenCS#SCGES
* item[Gesamtpunkte].sequence = 7
* item[Leistungskomponente].quantity.value = 62
* item[Leistungskomponente].category.coding = MopedClaimItemCategoryCS#Punkte
* item[Leistungskomponente].productOrService = LKFPunkteArtenCS#LDFPLK
* item[Leistungskomponente].sequence = 8
* item[Tageskomponente].quantity.value = 1322
* item[Tageskomponente].category.coding = MopedClaimItemCategoryCS#Punkte
* item[Tageskomponente].productOrService = LKFPunkteArtenCS#LDFPTK
* item[Tageskomponente].sequence = 9
