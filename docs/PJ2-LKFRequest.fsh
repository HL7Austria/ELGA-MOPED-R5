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


* item[+].sequence = 1
* item[=].diagnosisSequence = 1
* item[=].category = https://termgit.elga.gv.at/CodeSystem/lkf-diagnose-typ#H
* item[+].sequence = 2
* item[=].diagnosisSequence = 2
* item[=].category = https://termgit.elga.gv.at/CodeSystem/lkf-diagnose-typ#Z
* item[+].sequence = 3
* item[=].procedureSequence = 1
* item[+].sequence = 4
* item[=].procedureSequence = 2

* supportingInfo[Plausibilitaetskennzeichen].sequence = 1
* supportingInfo[Plausibilitaetskennzeichen].category = http://terminology.hl7.org/CodeSystem/claiminformationcategory#info
* supportingInfo[Plausibilitaetskennzeichen].code.coding = ClaimSupportingInformationTypesCS#PLAUS
* supportingInfo[Plausibilitaetskennzeichen].valueString = "1234"

* extension[DiagnoseKnoten].valueCoding = LKFAbrechnungsKnotenCS#C
* extension[LKFPunkte].extension[PunkteBelagsdauerausreisserUntenLeistungskomponente].valueUnsignedInt = 0
* extension[LKFPunkte].extension[PunkteBelagsdauerausreisserUntenTageskomponente].valueUnsignedInt = 0
* extension[LKFPunkte].extension[ZusatzpunkteBelagsdauerausreisserNachOben].valueUnsignedInt = 0
* extension[LKFPunkte].extension[ZusatzpunkteIntensiv].valueUnsignedInt = 0
* extension[LKFPunkte].extension[ZusatzpunkteMehrfachleistungen].valueUnsignedInt = 0
* extension[LKFPunkte].extension[PunkteSpeziellerBereicheTageweise].valueUnsignedInt = 0
* extension[LKFPunkte].extension[PunkteTotal].valueUnsignedInt = 1384
* extension[LKFPunkte].extension[Leistungskomponente].valueUnsignedInt = 62
* extension[LKFPunkte].extension[TageskomponenteKontaktpunkte].valueUnsignedInt = 1322
