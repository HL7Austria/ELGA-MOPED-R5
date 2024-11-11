Profile: MOPEDCoverage
Parent: Coverage
Description: "MOPED Profil der Coverage Ressource für Versicherungen."

* identifier ^slicing.rules = #open
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "type.coding.code"
* identifier ^slicing.ordered = false
* identifier contains VDASID 0..1
* identifier.system = "http://tbd-svc/vdasid"
* identifier[VDASID].assigner only Reference(HL7ATCoreOrganization)
* paymentBy.party only Reference(HL7ATCoreOrganization)
* insurer only Reference(HL7ATCoreOrganization)
* subscriber only Reference(HL7ATCorePatient or Hauptversicherter)
* beneficiary only Reference(HL7ATCorePatient)
* class ^slicing.discriminator.type = #value
* class ^slicing.discriminator.path = "type.coding.system"
* class ^slicing.ordered = false
* class ^slicing.rules = #open
* class contains
    Versichertenkategorien 0..1 MS
* class[Versichertenkategorien].type from http://svc.co.at/CodeSystem/ecard-versichertenkategorie-cs (required)
* class[Versichertenkategorien] ^short = "Versichertenkategorien"

