Instance: Test2MOPEDEncounter1
InstanceOf: MOPEDEncounter
Usage: #example
* id = "Test2MOPEDEncounter1"
* status = #in-progress
* meta.profile = "http://example.org/StructureDefinition/MOPEDEncounter"
/*//Fallnummer
* extension[+].url = "http://example.org/StructureDefinition/moped-ext-fallnummer"
* extension[=] = 
//Unfalldatum
* extension[+].url = "http://example.org/StructureDefinition/moped-ext-unfalldatum"
* extension[=] = */ //Warum Unfalldatum 00000000?

//Aufnahmezahl
* identifier[+].type.coding.code = #v2-0203-VN
* identifier[=].type.coding.system = "https://terminology.hl7.org/6.0.2/CodeSystem-v2-0203.html"
* identifier[=].value = "324200063"
* identifier[=].system = "urn:oid:1.3.6.1.4.1.36124.5.427"
* identifier[=].assigner = Reference(Organization/Test2OrganizationKrankenhausRied)
//Acount
* account = Reference(Account/Test2Account)
//Behandlungsart
* class[+].coding.system = $Behandlungsart
* class[=].coding.code = #S
//Aufnahme-/Zugangsart2
* class[+].coding.system = $Aufnahmeart
* class[=].coding.code = #A
//Patientenreferenz
* subject = Reference(Patient/Test2Patient)
//KH Referenz
* serviceProvider = Reference(Organization/Test2OrganizationKrankenhausRied)
//Aufnahmedatum
* actualPeriod.start = "2024-08-08T08:21:00+02:00"
* actualPeriod.end = "2024-08-08T19:22:00+02:00"
//Ursache
* reason[+].use.coding.system = "https://hl7.org/fhir/codesystem/encounter-reason-use"
* reason[=].use.coding.code = #encounter-reason-use-RV
* reason[=].value = #00
//Zugangsart
* admission.extension[+].url = "http://example.org/StructureDefinition/moped-ext-zugangsart"
* admission.extension[=].valueCoding = $Zugangsart#A
//Entlassungsart
* admission.dischargeDisposition.coding.system = $Entlassungsart
* admission.dischargeDisposition.coding.code = #E
//Diagnosen
* diagnosis[+].use.coding.system = "https://termgit.elga.gv.at/CodeSystem/lkf-diagnose-typ"
* diagnosis[=].use.coding.code = #H
* diagnosis[=].condition = Reference(Condition/Test2Condition1)
* diagnosis[+].use.coding.system = "https://termgit.elga.gv.at/CodeSystem/lkf-diagnose-typ"
* diagnosis[=].use.coding.code = #Z
* diagnosis[=].condition = Reference(Condition/Test2Condition2)
//Zugewiesen von
* admission.origin = Reference(Organization/Test2OrganizationUeberweisendeOrganisation)



Instance: Test2TransferEncounter1
InstanceOf: MOPEDTransferEncounter
Usage: #example
* id = "Test2TransferEncounter1"
* meta.profile = "http://example.org/StructureDefinition/MOPEDTransferEncounter"
* status = #in-progress
* subject = Reference(Patient/Test2Patient)
* partOf = Reference(Encounter/Test2MOPEDEncounter1)
* serviceProvider = Reference(Organization/Test2OrganizationAbteilung1)
* actualPeriod.start = "2024-08-08T08:21:00+02:00" //für ersten TransferEncounter gleich mit MOPEDEncounter start
* extension[+].url = "http://example.org/StructureDefinition/moped-ext-altersgruppe"
* extension[=].extension[+].url = "beiZugang"
* extension[=].extension[=].valueCode = #35
* extension[=].extension[+].url = "neugeborenes"
* extension[=].extension[=].valueBoolean = false


Instance: Test2TransferEncounter2
InstanceOf: MOPEDTransferEncounter
Usage: #example
* id = "Test2TransferEncounter2"
* meta.profile = "http://example.org/StructureDefinition/MOPEDTransferEncounter"
* status = #in-progress
* subject = Reference(Patient/Test2Patient)
* partOf = Reference(Encounter/Test2MOPEDEncounter1)
* serviceProvider = Reference(Organization/Test2OrganizationAbteilung2)
* actualPeriod.start = "2024-08-08T11:22:00+02:00" 
* actualPeriod.end = "2024-08-08T11:41:00+02:00"
* admission.dischargeDisposition.coding.system = $Abgangsart
* admission.dischargeDisposition.coding.code = #1
* extension[+].url = "http://example.org/StructureDefinition/moped-ext-altersgruppe"
* extension[=].extension[+].url = "beiZugang"
* extension[=].extension[=].valueCode = #35
* extension[=].extension[+].url = "neugeborenes"
* extension[=].extension[=].valueBoolean = false


Instance: Test2TransferEncounter3
InstanceOf: MOPEDTransferEncounter
Usage: #example
* id = "Test2TransferEncounter3"
* meta.profile = "http://example.org/StructureDefinition/MOPEDTransferEncounter"
* status = #in-progress
* subject = Reference(Patient/Test2Patient)
* partOf = Reference(Encounter/Test2MOPEDEncounter1)
* serviceProvider = Reference(Organization/Test2OrganizationAbteilung3)
* actualPeriod.start = "2024-08-08T11:41:00+02:00" 
* actualPeriod.end = "2024-08-08T11:41:00+02:00" 
* extension[+].url = "http://example.org/StructureDefinition/moped-ext-altersgruppe"
* extension[=].extension[+].url = "beiZugang"
* extension[=].extension[=].valueCode = #35
* extension[=].extension[+].url = "neugeborenes"
* extension[=].extension[=].valueBoolean = false

Instance: Test2TransferEncounter4
InstanceOf: MOPEDTransferEncounter
Usage: #example
* id = "Test2TransferEncounter4"
* meta.profile = "http://example.org/StructureDefinition/MOPEDTransferEncounter"
* status = #in-progress
* subject = Reference(Patient/Test2Patient)
* partOf = Reference(Encounter/Test2MOPEDEncounter1)
* serviceProvider = Reference(Organization/Test2OrganizationAbteilung4)
* actualPeriod.start = "2024-08-09T11:38:00+02:00" 
* extension[+].url = "http://example.org/StructureDefinition/moped-ext-altersgruppe"
* extension[=].extension[+].url = "beiZugang"
* extension[=].extension[=].valueCode = #35
* extension[=].extension[+].url = "neugeborenes"
* extension[=].extension[=].valueBoolean = false

Instance: Test2TransferEncounter5
InstanceOf: MOPEDTransferEncounter
Usage: #example
* id = "Test2TransferEncounter5"
* meta.profile = "http://example.org/StructureDefinition/MOPEDTransferEncounter"
* status = #in-progress
* subject = Reference(Patient/Test2Patient)
* partOf = Reference(Encounter/Test2MOPEDEncounter1)
* serviceProvider = Reference(Organization/Test2OrganizationAbteilung3)
* actualPeriod.start = "2024-08-10T17:00:00+02:00" 
* extension[+].url = "http://example.org/StructureDefinition/moped-ext-altersgruppe"
* extension[=].extension[+].url = "beiZugang"
* extension[=].extension[=].valueCode = #35
* extension[=].extension[+].url = "neugeborenes"
* extension[=].extension[=].valueBoolean = false
