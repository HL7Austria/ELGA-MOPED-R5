Instance: Test1MopedEncounter
InstanceOf: MopedEncounter
Usage: #example
* id = "Test1MopedEncounter"
* status = #in-progress
* meta.profile = "http://example.org/StructureDefinition/MopedEncounter"
/*//Fallnummer
* extension[+].url = "http://example.org/StructureDefinition/moped-ext-fallnummer"
* extension[=] = 
//Unfalldatum
* extension[+].url = "http://example.org/StructureDefinition/moped-ext-unfalldatum"
* extension[=] = */ //Warum Unfalldatum 00000000?

//Aufnahmezahl
* identifier[+].type = $IdentifyerCodeSystem#VN
* identifier[=].value = "1024000028"
* identifier[=].system = "urn:oid:1.3.6.1.4.1.36124.5.914"
* identifier[=].assigner = Reference(Organization/Test1OrganizationHerzJesuKrankenhaus)


* account = Reference(Account/Test1Account)

//Behandlungsart
* class[+].coding.system = $Behandlungsart
* class[=].coding.code = #S
//Aufnahme-/Zugangsart2
* class[+].coding.system = $Aufnahmeart2
* class[=].coding.code = #P
//Patientenreferenz
* subject = Reference(Patient/Test1Patient)
//KH Referenz
* serviceProvider = Reference(Organization/Test1OrganizationHerzJesuKrankenhaus)
//Aufnahmedatum
* actualPeriod.start = "2024-02-22T19:33:00+02:00"

//Ursache
* reason[+].use.coding.system = "https://hl7.org/fhir/codesystem/encounter-reason-use"
* reason[=].use.coding.code = #encounter-reason-use-RV
* reason[=].value = #00

//Zugangsart
* admission.extension[aufnahmeart].valueCoding = $Aufnahmeart#A

//Diagnosen
* diagnosis[+].use.coding.system = "https://termgit.elga.gv.at/CodeSystem/lkf-diagnose-typ"
* diagnosis[=].use.coding.code = #H
* diagnosis[=].condition = Reference(Condition/Test1Condition1)

//Zugewiesen von
* admission.origin = Reference(Organization/Test1OrganizationUeberweisendeOrganisation)



Instance: Test1TransferEncounter1
InstanceOf: MopedTransferEncounter
Usage: #example
* id = "Test1TransferEncounter1"
* meta.profile = "http://example.org/StructureDefinition/MopedTransferEncounter"
* status = #in-progress

* subject = Reference(Patient/Test1Patient)
* partOf = Reference(Encounter/Test1MopedEncounter)
* serviceProvider = Reference(Organization/Test1OrganizationAbteilung1)

* extension[+].url = "http://example.org/StructureDefinition/moped-ext-altersgruppe"
* extension[=].extension[+].url = "beiZugang"
* extension[=].extension[=].valueCode = #55
* extension[=].extension[+].url = "neugeborenes"
* extension[=].extension[=].valueBoolean = false

* actualPeriod.start = "2024-02-22T19:33:00+02:00" //für ersten TransferEncounter gleich mit MopedEncounter start



