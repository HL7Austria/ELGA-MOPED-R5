
Alias: $ecard-anspruchsarten-vs = http://svc.co.at/Valueset/ecard-anspruchsarten-vs
Alias: $ecard-versichertenarten-vs = http://svc.co.at/CodeSystem/ecard-versichertenart-vs
Alias: $ecard-versichertenkategorien-vs = http://svc.co.at/CodeSystem/ecard-versichertenkategorie-vs

Profile: SVCCoverage
Parent: Coverage
Description: "SVC Profil der Coverage Ressource für Versicherungen. Basierend auf dem Profil \"ecardAnspruch\": https://www.chipkarte.at/de/vdas-on-fhir/site/StructureDefinition-ecard-anspruch-profile.html "

* identifier ^slicing.rules = #open
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.ordered = false
* identifier contains VDASID 0..1
* identifier[VDASID].system = "http://tbd-svc/vdasid"
* identifier[VDASID].assigner only Reference(HL7ATCoreOrganization)
* extension contains
    RezeptgebbefreitExtension named RezeptgebbefreitExtension 0..1 and
    KostenanteilbefreitExtension named KostenanteilbefreitExtension 0..1

* type from $ecard-anspruchsarten-vs (required)
* type ^short = "Anspruchsart"
* subscriber only Reference(HL7ATCorePatient)
* beneficiary only Reference(HL7ATCorePatient)
* class ^slicing.discriminator.type = #value
* class ^slicing.discriminator.path = "type.coding.code"
* class ^slicing.ordered = false
* class ^slicing.rules = #open
* class contains
    Versichertenarten 0..1 MS and
    Versichertenkategorien 0..1 MS
* class[Versichertenarten].type from $ecard-versichertenarten-vs (required)
* class[Versichertenarten].type.coding.system = "http://svc.co.at/CodeSystem/ecard-versichertenart-cs"
* class[Versichertenarten] ^short = "Versichertenarten"
* class[Versichertenkategorien].type from $ecard-versichertenkategorien-vs (required)
* class[Versichertenkategorien].type.coding.system = "http://svc.co.at/CodeSystem/ecard-versichertenkategorie-cs"
* class[Versichertenkategorien] ^short = "Versichertenkategorien"

