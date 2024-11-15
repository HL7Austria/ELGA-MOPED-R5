Instance: Test1MOPEDEncounterSV
InstanceOf: MOPEDEncounterSV
Usage: #example
* id = "Test1MOPEDEncounterSV"
* status = #in-progress
//Aufnahmezahl
* identifier[+].type.coding.code = #VN 
* identifier[=].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[=].value = "1024000028"
* identifier[=].system = "urn:oid:1.3.6.1.4.1.36124.5.914"
* identifier[=].assigner = Reference(Organization/Test1OrganizationHerzJesuKrankenhaus)
//Patientenreferenz
* subject = Reference(Patient/Test1Patient)
//KH Referenz
* serviceProvider = Reference(Organization/Test1OrganizationHerzJesuKrankenhaus)
//Aufnahmedatum
* actualPeriod.start = "2024-02-22T19:33:00+02:00"
//Ursache
* reason[+].use.coding.system = "http://hl7.org/fhir/encounter-reason-use"
* reason[=].use.coding.code = #RV
* reason[=].value = #00
//Zugangsart
* admission.extension[+].url = "http://example.org/StructureDefinition/moped-ext-zugangsart"
* admission.extension[=].valueCoding = #A
//Diagnosen
* diagnosis[+].condition = Reference(Condition/Test1Condition1)
//Zugewiesen von
* admission.origin = Reference(Organization/Test1OrganizationUeberweisendeOrganisation)


