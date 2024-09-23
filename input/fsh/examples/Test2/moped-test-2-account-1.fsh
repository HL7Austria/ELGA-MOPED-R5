Instance: Test2Account
InstanceOf: MOPEDAccount
Usage: #example
* meta.profile = "http://example.org/StructureDefinition/MOPEDAccount"
* id = "Test2Account"
* extension[+].url = "http://example.org/StructureDefinition/moped-ext-workflow-status"
* extension[=].valueCode = #TBD
* extension[+].url = "http://example.org/StructureDefinition/moped-ext-VerdachtArbeitsSchuelerunfall"
* extension[=].valueCode = $VerdachtArbeitsSchuelerunfall#0
* extension[+].url = "http://example.org/StructureDefinition/moped-ext-VerdachtFremdverschulden"
* extension[=].valueBoolean = false
* status = #active
* subject = Reference(Patient/Test2Patient)
* owner = Reference(Organization/Test2OrganizationKrankenhausRied)

//VDAS-ID
* extension[+].url = "http://example.org/StructureDefinition/moped-ext-VDASID"
* extension[=].valueString = "FJK5MCDPMRCY"
