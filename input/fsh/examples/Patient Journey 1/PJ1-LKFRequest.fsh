Instance: PJ1LKFRequest1
InstanceOf: MopedLKFRequest
Description: "Hackathon Patient Journey 1 Beispiel: LKFRequest 1"
Usage: #example
* meta.profile = "https://elga.moped.at/StructureDefinition/MopedLKFRequest"
* status = #active
* use = http://hl7.org/fhir/claim-use#claim
* type = http://terminology.hl7.org/CodeSystem/claim-type#institutional
* patient.reference = "Patient?identifier=urn:oid:1.2.40.0.10.1.4.3.1|9994210469"
* created = "2024-10-31"
* insurer.reference = "Organization?identifier=http://svc.co.at/CodeSystem/ecard-svt-cs|11"
* provider.reference = "Organization?identifier=urn:ietf:rfc:3986|urn:oid:1.3.6.1.4.1.36124.5.914"
//TBD Transferencounter
* encounter[MopedEncounter] = Reference(PJ1Encounter)
* diagnosisRelatedGroup.coding = LKFHauptdiagnosegruppenCS#HDG01.31

* insurance.coverage = Reference(PJ1Coverage)
* insurance.sequence = 1
* insurance.focal = true
* procedure[+].extension[AbrechnungsRelevanz].valueCoding = AbrechnungsRelevanzCS#J
* procedure[=].sequence = 1
* procedure[=].procedureReference.reference = "Procedure?identifier.value=1024000028urn:oid:1.3.6.1.4.1.36124.5.9140-AN010-2024-02-22T19:33"
* diagnosis[+].diagnosisReference.reference = "Condition?identifier.value=1024000028urn:oid:1.3.6.1.4.1.36124.5.9140-G47.3"
* diagnosis[=].sequence = 1
* diagnosis[=].onAdmission = http://terminology.hl7.org/CodeSystem/ex-diagnosis-on-admission#unknown

* item[+].sequence = 1
* item[=].procedureSequence = 1
* item[+].sequence = 2
* item[=].diagnosisSequence = 1
* item[=].category = https://termgit.elga.gv.at/CodeSystem/lkf-diagnose-typ#H

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