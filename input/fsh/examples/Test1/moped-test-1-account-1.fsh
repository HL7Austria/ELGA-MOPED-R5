Instance: Test1Account
InstanceOf: MOPEDAccount

Usage: #example
* meta.profile = "http://example.org/StructureDefinition/MOPEDAccount"
* id = "Test1Account"
* extension[+].url = "http://example.org/StructureDefinition/moped-ext-workflow-status"
* extension[=].valueCoding = $workflowstatus#TBD
* extension[+].url = "http://example.org/StructureDefinition/moped-ext-VerdachtArbeitsSchuelerunfall"
* extension[=].valueCoding = $VerdachtArbeitsSchuelerunfall#0
* extension[+].url = "http://example.org/StructureDefinition/moped-ext-VerdachtFremdverschulden"
* extension[=].valueBoolean = false

//VDAS-ID
* extension[+].url = "http://example.org/StructureDefinition/moped-ext-VDASID"
* extension[=].valueString = "TEST12345678"

* status = #active
* subject = Reference(Patient/Test1Patient)
* owner = Reference(Organization/Test1OrganizationHerzJesuKrankenhaus)




