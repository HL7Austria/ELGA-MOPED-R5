Instance: PJ1LKFRequest1
InstanceOf: MopedLKFRequest
Description: "Hackathon Patient Journey 1 Beispiel: LKFRequest 1"
Usage: #example
* meta.profile = "https://elga.moped.at/StructureDefinition/MopedLKFRequest"
* status = #active
* use = http://hl7.org/fhir/claim-use#claim
* type.coding = MopedClaimTypeCS#LKFREQ
* subType.coding = MopedClaimSubTypeCS#LKFREQVORL
* patient = Reference(PJ1Patient)
* created = "2024-10-31"
* insurer = Reference(SV11)
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
* diagnosis[+].diagnosisReference = Reference(PJ1Condition1)
* diagnosis[=].sequence = 1
* diagnosis[=].onAdmission = http://terminology.hl7.org/CodeSystem/ex-diagnosis-on-admission#unknown

* supportingInfo[Plausibilitaetskennzeichen].sequence = 1
* supportingInfo[Plausibilitaetskennzeichen].category = ClaimSupportingInformationCategoryCS#PLAUS
* supportingInfo[Plausibilitaetskennzeichen].valueString = "1234"
* supportingInfo[EndgueltigeMeldung].sequence = 2
* supportingInfo[EndgueltigeMeldung].category = ClaimSupportingInformationCategoryCS#ENDG
* supportingInfo[EndgueltigeMeldung].valueBoolean = false
* supportingInfo[XDokDevice].sequence = 3
* supportingInfo[XDokDevice].category = ClaimSupportingInformationCategoryCS#DEVX
* supportingInfo[XDokDevice].valueReference = Reference(XDokExampleDevice)

* extension[DiagnoseKnoten].valueCoding = LKFAbrechnungsKnotenCS#D
* extension[Fondsrelevanz].valueCoding = FondsrelevanzCS#J

* item[PunkteBelagsdauerausreisserUntenLeistungskomponente].quantity.value = 0
* item[PunkteBelagsdauerausreisserUntenLeistungskomponente].category.coding = MopedClaimItemCategoryCS#SCULK
* item[PunkteBelagsdauerausreisserUntenLeistungskomponente].sequence = 1
* item[PunkteBelagsdauerausreisserUntenTageskomponente].quantity.value = 0
* item[PunkteBelagsdauerausreisserUntenTageskomponente].category.coding = MopedClaimItemCategoryCS#SCUTK
* item[PunkteBelagsdauerausreisserUntenTageskomponente].sequence = 2
* item[ZusatzpunkteBelagsdauerausreisserNachOben].quantity.value = 0
* item[ZusatzpunkteBelagsdauerausreisserNachOben].category.coding = MopedClaimItemCategoryCS#BDZU
* item[ZusatzpunkteBelagsdauerausreisserNachOben].sequence = 3
* item[ZusatzpunkteIntensiv].quantity.value = 0
* item[ZusatzpunkteIntensiv].category.coding = MopedClaimItemCategoryCS#INTZU
* item[ZusatzpunkteIntensiv].sequence = 4
* item[ZusatzpunkteMehrfachleistungen].quantity.value = 0
* item[ZusatzpunkteMehrfachleistungen].category.coding = MopedClaimItemCategoryCS#MELZU
* item[ZusatzpunkteMehrfachleistungen].sequence = 5
* item[PunkteSpeziellerBereicheTageweise].quantity.value = 0
* item[PunkteSpeziellerBereicheTageweise].category.coding = MopedClaimItemCategoryCS#SCSPEZ
* item[PunkteSpeziellerBereicheTageweise].sequence = 6
* item[Gesamtpunkte].quantity.value = 1110
* item[Gesamtpunkte].category.coding = MopedClaimItemCategoryCS#SCGES
* item[Gesamtpunkte].sequence = 7
* item[Leistungskomponente].quantity.value = 743
* item[Leistungskomponente].category.coding = MopedClaimItemCategoryCS#LDFPLK
* item[Leistungskomponente].sequence = 8
* item[Tageskomponente].quantity.value = 367
* item[Tageskomponente].category.coding = MopedClaimItemCategoryCS#LDFPTK
* item[Tageskomponente].sequence = 9