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
* encounter[MopedTransferEncounter] = Reference(PJ1TransferEncounter1)
* diagnosisRelatedGroup.coding = LKFHauptdiagnosegruppenCS#HDG01.31

* insurance.coverage = Reference(PJ1Coverage)
* insurance.sequence = 1
* insurance.focal = true
* procedure[+].extension[AbrechnungsRelevanz].valueCoding = AbrechnungsRelevanzCS#J
* procedure[=].sequence = 1
* procedure[=].procedureReference = Reference(PJ1Procedure1)
* diagnosis[+].diagnosisReference = Reference(PJ1Condition1)
* diagnosis[=].sequence = 1
* diagnosis[=].onAdmission = http://terminology.hl7.org/CodeSystem/ex-diagnosis-on-admission#unknown

* item[+].sequence = 1
* item[=].diagnosisSequence = 1
* item[=].category = https://termgit.elga.gv.at/CodeSystem/lkf-diagnose-typ#H
* item[+].sequence = 2
* item[=].procedureSequence = 1


* extension[DiagnoseKnoten].valueCoding = LKFAbrechnungsKnotenCS#D
* extension[LKFPunkte].extension[PunkteBelagsdauerausreisserUntenLeistungskomponente].valueUnsignedInt = 0
* extension[LKFPunkte].extension[PunkteBelagsdauerausreisserUntenTageskomponente].valueUnsignedInt = 0
* extension[LKFPunkte].extension[ZusatzpunkteBelagsdauerausreisserNachOben].valueUnsignedInt = 0
* extension[LKFPunkte].extension[ZusatzpunkteIntensiv].valueUnsignedInt = 0
* extension[LKFPunkte].extension[ZusatzpunkteMehrfachleistungen].valueUnsignedInt = 0
* extension[LKFPunkte].extension[PunkteSpeziellerBereicheTageweise].valueUnsignedInt = 0
* extension[LKFPunkte].extension[PunkteTotal].valueUnsignedInt = 1110
* extension[LKFPunkte].extension[Leistungskomponente].valueUnsignedInt = 743
* extension[LKFPunkte].extension[TageskomponenteKontaktpunkte].valueUnsignedInt = 367

* extension[Fondsrelevanz].valueCoding = FondsrelevanzCS#J
* extension[Plausibilitaetskennzeichen].valueString = "4"
//* extension[SVAbrechnungsquartal] = 