Instance: Test1Account
InstanceOf: MOPEDAccount

Usage: #example
* meta.profile = "http://example.org/StructureDefinition/MOPEDAccount"
* id = "Test1Account"
* extension[+].url = "http://example.org/StructureDefinition/moped-ext-workflowStatus"
* extension[=].valueCoding = $workflowstatus#TBD
* extension[+].url = "http://example.org/StructureDefinition/moped-ext-verdachtArbeitsSchuelerunfall"
* extension[=].valueCoding = $VerdachtArbeitsSchuelerunfall#0
* extension[+].url = "http://example.org/StructureDefinition/moped-ext-verdachtFremdverschulden"
* extension[=].valueBoolean = false

* status = #active
* subject = Reference(Patient/Test1Patient)
* owner = Reference(Organization/Test1OrganizationHerzJesuKrankenhaus)




