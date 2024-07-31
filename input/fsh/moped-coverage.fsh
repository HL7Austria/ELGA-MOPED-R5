
Alias: $at-core-patient = http://fhir.hl7.at/eCard-at/StructureDefinition/at-core-patient
Alias: $ecard-anspruchsarten-vs = http://svc.co.at/Valueset/ecard-anspruchsarten-vs
Alias: $ecard-versichertenarten-vs = http://svc.co.at/Valueset/ecard-versichertenarten-vs
Alias: $ecard-versichertenkategorien-vs = http://svc.co.at/Valueset/ecard-versichertenkategorien-vs

Profile: MOPEDCoverage
Parent: Coverage
Description: "MOPED Profil der Coverage Ressource für Versicherungen."


* extension contains
    RezeptgebbefreitExtension named RezeptgebbefreitExtension 0..1 and
    KostenanteilbefreitExtension named KostenanteilbefreitExtension 0..1

* type from $ecard-anspruchsarten-vs (required)
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
* class[Versichertenkategorien].type from $ecard-versichertenkategorien-vs (required)
* class[Versichertenkategorien].type.coding.system = "http://svc.co.at/CodeSystem/ecard-versichertenkategorie-cs"
