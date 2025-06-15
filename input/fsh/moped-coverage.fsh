Profile: MopedCoverage
Parent: Coverage
Description: "MOPED Profil der Coverage Ressource für Versicherungen."
Title: "MOPED Coverage"

* identifier ^slicing.rules = #open
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.ordered = false
* identifier contains VDASID 0..1 MS
* identifier[VDASID].system = "urn:oid:1.2.40.0.10.1.4.3.9.1"
* identifier[VDASID].assigner only Reference(HL7ATCoreOrganization)
* paymentBy.party only Reference(HL7ATCoreOrganization)
* insurer only Reference(HL7ATCoreOrganization)
* subscriber only Reference(HL7ATCorePatient or Hauptversicherter)
* beneficiary only Reference(HL7ATCorePatient)
* class ^slicing.discriminator.type = #value
* class ^slicing.discriminator.path = "type.coding"
* class ^slicing.ordered = false
* class ^slicing.rules = #open
* class.extension contains CoverageClassValueCode named CoverageClassValueCode 0..1
* class contains
    Versichertenkategorien 0..1 MS
* class[Versichertenkategorien].type.coding = http://terminology.hl7.org/CodeSystem/coverage-class#group
* class[Versichertenkategorien] ^short = "Versichertenkategorien"
* class[Versichertenkategorien].extension[CoverageClassValueCode].valueCodeableConcept from $SVCVersichertenkategorienVS
* class[Versichertenkategorien] obeys class-value-matches-extension

Invariant: class-value-matches-extension
Description: "Falls Coverage.class.extension[CoverageClassValueCode] vorhanden ist, muss Coverage.class.value denselben Code enthalten wie Coverage.class.extension[CoverageClassValueCode].valueCodeableConcept.coding.code."
Severity: #error
Expression: "extension.where(url = 'https://elga.moped.at/StructureDefinition/CoverageClassValueCode').valueCodeableConcept.coding.code.contains(value.value)"
