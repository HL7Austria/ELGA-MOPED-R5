Instance: Test1MOPEDEncounterBund
InstanceOf: MOPEDEncounterBund
Usage: #example
* id = "Test1MOPEDEncounterBund"
* status = #in-progress
* meta.profile = "http://example.org/StructureDefinition/MOPEDEncounterBund"
//DatensatzID
* identifier[+].type.coding.code = #ANON
* identifier[=].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[=].value = "fb0db1bc083206dd011294220dd43884249f9bff9b830bd18d433b45466b8e62"
* identifier[=].system = "http://example.org/DatensatzID"
* account = Reference(Account/Test1Account)
//Behandlungsart
* class[+].coding.system = $Behandlungsart
* class[=].coding.code = #S
//Aufnahme-/Zugangsart2
* class[+].coding.system = $Aufnahmeart
* class[=].coding.code = #P
//Patientenreferenz
* subject = Reference(Patient/Test1Patient)
//KH Referenz
* serviceProvider = Reference(Organization/Test1OrganizationHerzJesuKrankenhaus)
//Aufnahmedatum
* actualPeriod.start = "2024-02-22T19:33:00+02:00"
//Zugangsart
* admission.extension[+].url = "http://example.org/StructureDefinition/moped-ext-zugangsart"
* admission.extension[=].valueCoding.code = #A
//Diagnosen
* diagnosis[+].use.coding.system = "https://termgit.elga.gv.at/CodeSystem/lkf-diagnose-typ"
* diagnosis[=].use.coding.code = #H
* diagnosis[=].condition = Reference(Condition/Test1Condition1)
//Zugewiesen von
* admission.origin = Reference(Organization/Test1OrganizationUeberweisendeOrganisation)


