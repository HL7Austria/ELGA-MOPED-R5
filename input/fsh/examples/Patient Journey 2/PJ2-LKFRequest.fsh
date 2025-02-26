Instance: PJ2LKFRequest1
InstanceOf: MopedLKFRequest
Description: "Hackathon Patient Journey 2 Beispiel: LKFRequest 1"
Usage: #example
* meta.profile = "https://elga.moped.at/StructureDefinition/MopedLKFRequest"
* status = #active
* use = http://hl7.org/fhir/claim-use#claim
* type = http://terminology.hl7.org/CodeSystem/claim-type#institutional
* patient.reference = "Patient?identifier=urn:oid:1.2.40.0.10.1.4.3.1|2873111374"
* created = "2025-02-24"
* insurer.reference = "Organization?identifier=http://svc.co.at/CodeSystem/ecard-svt-cs|14"
* provider.reference = "Organization?identifier=urn:ietf:rfc:3986|urn:oid:1.3.6.1.4.1.36124.5.427"
* encounter[MopedEncounter].reference = "Encounter?identifier=urn:oid:1.3.6.1.4.1.36124.5.427|324200063"
* encounter[+] = Reference(PJ2TransferEncounter1)
* encounter[+] = Reference(PJ2TransferEncounter2)
* encounter[+] = Reference(PJ2TransferEncounter3)
* encounter[+] = Reference(PJ2TransferEncounter4)
* encounter[+] = Reference(PJ2TransferEncounter5)
* diagnosisRelatedGroup.coding = LKFHauptdiagnosegruppenCS#HDG15.03
* insurance.coverage.reference = "Coverage?identifier=FJK5MCDPMRCY"
* insurance.sequence = 1
* insurance.focal = true

* procedure[+].extension[AbrechnungsRelevanz].valueCoding = AbrechnungsRelevanzCS#J
* procedure[=].sequence = 1
* procedure[=].procedureReference.reference = "Procedure?identifier.value=324200063urn:oid:1.3.6.1.4.1.36124.5.427-PE010-2024-08-08T08:21"
* procedure[+].extension[AbrechnungsRelevanz].valueCoding = AbrechnungsRelevanzCS#J
* procedure[=].sequence = 2
* procedure[=].procedureReference.reference = "Procedure?identifier.value=324200063urn:oid:1.3.6.1.4.1.36124.5.427-AN010-2024-08-08T08:21"


* diagnosis[+].diagnosisReference.reference = "Condition?identifier.value=324200063urn:oid:1.3.6.1.4.1.36124.5.427-S82.0"
* diagnosis[=].sequence = 1
* diagnosis[=].onAdmission = http://terminology.hl7.org/CodeSystem/ex-diagnosis-on-admission#unknown
* diagnosis[+].diagnosisReference.reference = "Condition?identifier.value=324200063urn:oid:1.3.6.1.4.1.36124.5.427-999.9"
* diagnosis[=].sequence = 2
* diagnosis[=].onAdmission = http://terminology.hl7.org/CodeSystem/ex-diagnosis-on-admission#unknown

* item[+].sequence = 1
* item[=].procedureSequence = 1
* item[+].sequence = 2
* item[=].procedureSequence = 2

* item[+].sequence = 3
* item[=].diagnosisSequence = 1
* item[=].category = https://termgit.elga.gv.at/CodeSystem/lkf-diagnose-typ#H
* item[+].sequence = 4
* item[=].diagnosisSequence = 2
* item[=].category = https://termgit.elga.gv.at/CodeSystem/lkf-diagnose-typ#Z


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

* extension[Fondsrelevanz].valueCoding = FondsrelevanzCS#J
* extension[Plausibilitaetskennzeichen].valueString = "2"
//* extension[SVAbrechnungsquartal] = 