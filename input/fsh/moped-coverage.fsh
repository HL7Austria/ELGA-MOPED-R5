Profile: MopedCoverage
Parent: Coverage
Description: "MOPED Profil der Coverage Ressource für Versicherungen."
Title: "MOPED Coverage"

* identifier ^slicing.rules = #open
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.ordered = false
* identifier contains VDASID 0..1 MS
* identifier[VDASID].system = $VdasIdSystem
* identifier[VDASID].assigner only Reference(HL7ATCoreOrganization)
* paymentBy.party only Reference(HL7ATCoreOrganization)
* insurer only Reference(SVOrganization)
* policyHolder only Reference(HL7ATCorePatient or Hauptversicherter)
* beneficiary only Reference(HL7ATCorePatient)
* class ^slicing.discriminator.type = #value
* class ^slicing.discriminator.path = "type.coding"
* class ^slicing.ordered = false
* class ^slicing.rules = #open
* class contains
    Versichertenkategorien 0..1 MS
* class[Versichertenkategorien].type from $SVCVersichertenkategorien (required)
* class[Versichertenkategorien].type.coding = http://terminology.hl7.org/CodeSystem/coverage-class#group
* class[Versichertenkategorien] ^short = "Versichertenkategorien"
* class[Versichertenkategorien].value.system = "http://svc.co.at/CodeSystem/ecard-versichertenkategorie-cs"