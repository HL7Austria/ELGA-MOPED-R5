Instance: Test2SVCCoverage
InstanceOf: MOPEDCoverage
Usage: #example
* id = "Test2MOPEDCoverage"
* meta.profile = "http://example.org/StructureDefinition/SVCCoverage"
* subscriber = Reference(Test2Patient)
* beneficiary = Reference(Test2Patient)

* kind = #insurance
* status = #active

//VDAS-ID
* identifier[+].system = $VdasIdSystem
* identifier[=].value = "foirwejfwe8"

//Versichertenkategorie
* class[+].type.coding.system = $SVCVersichertenkategorien
* class[=].type.coding.code = #01
* class[=].value.value = #01