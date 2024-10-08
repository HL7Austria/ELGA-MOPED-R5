Instance: Test1MOPEDEncounter
InstanceOf: MOPEDEncounter
Usage: #example
* id = "Test1MOPEDEncounter"
* status = #in-progress
* meta.profile = "http://example.org/StructureDefinition/MOPEDEncounter"
/*//Fallnummer
* extension[+].url = "http://example.org/StructureDefinition/moped-ext-fallnummer"
* extension[=] = 
//Unfalldatum
* extension[+].url = "http://example.org/StructureDefinition/moped-ext-unfalldatum"
* extension[=] = */ //Warum Unfalldatum 00000000?

//Aufnahmezahl
* identifier[+].type.coding.code = #VN 
* identifier[=].type.coding.system = "https://termgit.elga.gv.at/ValueSet/hl7-at-patientidentifier"
* identifier[=].value = "1024000028"
* identifier[=].assigner = Reference(Organization/Test1OrganizationHerzJesuKrankenhaus)


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

//Ursache
* reason[+].use.coding.system = "http://hl7.org/fhir/ValueSet/encounter-reason-use"
* reason[=].use.coding.code = #RV
* reason[=].value = #00

//Zugangsart
* admission.extension[+].url = "http://example.org/StructureDefinition/moped-ext-zugangsart"
* admission.extension[=].valueCoding = $Zugangsart#A

//Diagnosen
* diagnosis[+].use.coding.system = "https://termgit.elga.gv.at/ValueSet/lkf-diagnose-typ"
* diagnosis[=].use.coding.code = #H
* diagnosis[=].condition = Reference(Condition/Test1Condition1)

//Zugewiesen von
* admission.origin = Reference(Organization/Test1OrganizationUeberweisendeOrganisation)



Instance: Test1TransferEncounter1
InstanceOf: MOPEDTransferEncounter
Usage: #example
* id = "Test1TransferEncounter1"
* meta.profile = "http://example.org/StructureDefinition/MOPEDTransferEncounter"
* status = #in-progress

* subject = Reference(Patient/Test1Patient)
* partOf = Reference(Encounter/Test1MOPEDEncounter1)
* serviceProvider = Reference(Organization/Test1OrganizationAbteilung1)

* extension[+].url = "http://example.org/StructureDefinition/moped-ext-Altersgruppe"
* extension[=].valueUnsignedInt = 50
* extension[+].url = "http://example.org/StructureDefinition/moped-ext-Neugeborenes"
* extension[=].valueBoolean = false

* actualPeriod.start = "2024-02-22T19:33:00+02:00" //für ersten TransferEncounter gleich mit MOPEDEncounter start



