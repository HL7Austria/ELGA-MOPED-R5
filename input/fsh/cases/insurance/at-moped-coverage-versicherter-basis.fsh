Profile: AtMopedCoverageVersicherterBasis
Parent: AtMopedCoverageGenerisch
Id: at-moped-coverage-versicherter-basis
Title: "AT MOPED Coverage Versicherter Basis Profil"
Description: "MOPED Basis Profil der Coverage Ressource für Personen, welche ein Versicherungsverhältnis mit der Sozialversicherung haben."
* insert MappingHeaderEinfuegen
* insert ShallPopulateObligation(status, MopedKAActor)
* insert MopedHandleObligation(status)
* kind = #insurance
* insert ShallPopulateObligation(kind, MopedKAActor)
* identifier ^slicing.rules = #open
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.ordered = false
* identifier contains VDASID 0..1
* identifier[VDASID].system = $VdasIdSystem
* identifier[VDASID].assigner only Reference(AtMopedOrganizationKA)
* identifier[VDASID] ^short = "KaOrg: VDAS-ID - Ergebnis der Abfrage"
* insert legacyMapping(identifier[VDASID], KaOrg, [[VDAS-ID - Ergebnis der Abfrage]])

* insert ShallPopulateObligation(identifier[VDASID], MopedKAActor)
* insurer only Reference(AtMopedOrganizationSV)
* insurer 1..1
* insurer ^short = "LKF: Leistungszuständiger Kostenträger – Code"
* insert ShallPopulateObligation(insurer, MopedKAActor)
* policyHolder only Reference(AtMopedPatientvbPKBasis or AtMopedPatientKlarnameBasis or AtMopedRelatedPersonHauptversicherterBasis)
* insert ShallPopulateObligation(policyHolder, MopedKAActor)
* beneficiary only Reference(AtMopedPatientvbPKBasis or AtMopedPatientKlarnameBasis)
* insert MopedHandleObligation(beneficiary)
* class ^slicing.discriminator.type = #value
* class ^slicing.discriminator.path = "type.coding"
* class ^slicing.ordered = false
* class ^slicing.rules = #open
* class contains
    Versichertenkategorien 0..1
* class[Versichertenkategorien].type from $SVCVersichertenkategorien (required)
* class[Versichertenkategorien].type.coding = $CoverageClass#group
* class[Versichertenkategorien] ^short = "KaOrg: Versichertengruppe/Kategorie"
* insert legacyMapping(class[Versichertenkategorien].value, KaOrg, [[Versichertengruppe/Kategorie]])
* insert ShallPopulateObligation(class[Versichertenkategorien].value, MopedKAActor)
* class[Versichertenkategorien].value.system = $SVCVersichertenkategorien
* insert ShallPopulateObligation(class[Versichertenkategorien], MopedKAActor)