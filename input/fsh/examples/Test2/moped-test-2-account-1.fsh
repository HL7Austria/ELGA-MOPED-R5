Instance: Test2Account
InstanceOf: MOPEDAccount
Usage: #example
* meta.profile = "http://example.org/StructureDefinition/MOPEDAccount"
* id = "Test2Account"
* extension[+].url = "http://example.org/StructureDefinition/moped-ext-workflowStatus"
* extension[=].valueCoding = $workflowstatus#TBD
* extension[+].url = "http://example.org/StructureDefinition/moped-ext-verdachtArbeitsSchuelerunfall"
* extension[=].valueCoding = $VerdachtArbeitsSchuelerunfall#0
* extension[+].url = "http://example.org/StructureDefinition/moped-ext-verdachtFremdverschulden"
* extension[=].valueBoolean = false
* status = #active
* subject = Reference(Patient/Test2Patient)
* owner = Reference(Organization/Test2OrganizationKrankenhausRied)

//VDAS-ID
* extension[+].url = "http://example.org/StructureDefinition/moped-ext-vdasid"
* extension[=].valueString = "FJK5MCDPMRCY"
