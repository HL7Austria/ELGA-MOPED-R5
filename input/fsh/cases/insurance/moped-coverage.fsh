Profile: MopedCoverage
Parent: Coverage
Description: "MOPED Profil der Coverage Ressource für Versicherungen."
Title: "MOPED Coverage"
* insert ShallPopulateObligation(status, MopedKHActor)
* insert MopedHandleObligation(status)
* kind = #insurance
* insert ShallPopulateObligation(kind, MopedKHActor)
* identifier ^slicing.rules = #open
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.ordered = false
* identifier contains VDASID 0..1
* identifier[VDASID].system = $VdasIdSystem
* identifier[VDASID].assigner only Reference(KHOrganization)
* identifier[VDASID] ^short = "KaOrg: VDAS-ID, Ergebnis der Abfrage"
* insert ShallPopulateObligation(identifier[VDASID], MopedKHActor)
* insurer only Reference(SVOrganization)
* insurer 1..1
* insert ShallPopulateObligation(insurer, MopedKHActor)
* policyHolder only Reference(MopedPatient or Hauptversicherter)
* insert ShallPopulateObligation(policyHolder, MopedKHActor)
* beneficiary only Reference(MopedPatient)
* insert MopedHandleObligation(beneficiary)
* class ^slicing.discriminator.type = #value
* class ^slicing.discriminator.path = "type.coding"
* class ^slicing.ordered = false
* class ^slicing.rules = #open
* class contains
    Versichertenkategorien 0..1
* class[Versichertenkategorien].type from $SVCVersichertenkategorien (required)
* class[Versichertenkategorien].type.coding = http://terminology.hl7.org/CodeSystem/coverage-class#group
* class[Versichertenkategorien] ^short = "KaOrg: Versichertengruppe/Kategorie"
* class[Versichertenkategorien].value.system = "http://svc.co.at/CodeSystem/ecard-versichertenkategorie-cs"
* insert ShallPopulateObligation(class[Versichertenkategorien], MopedKHActor)