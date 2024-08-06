
Alias: $ecard-anspruchsarten-vs = https://www.chipkarte.at/de/vdas-on-fhir/site/ValueSet-ecard-anspruchsarten-vs.html
Alias: $ecard-versichertenarten-vs = https://www.chipkarte.at/de/vdas-on-fhir/site/ValueSet-ecard-versichertenarten-vs.html
Alias: $ecard-versichertenkategorien-vs = https://www.chipkarte.at/de/vdas-on-fhir/site/ValueSet-ecard-versichertenkategorien-vs.html

Profile: MOPEDCoverage
Parent: Coverage
Description: "MOPED Profil der Coverage Ressource für Versicherungen. Basierend auf dem Profil \"ecardAnspruch\": https://www.chipkarte.at/de/vdas-on-fhir/site/StructureDefinition-ecard-anspruch-profile.html "


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

