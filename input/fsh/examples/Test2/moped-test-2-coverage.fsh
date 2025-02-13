Instance: Test2MopedCoverage
InstanceOf: MopedCoverage
Usage: #example
* id = "Test2MopedCoverage"
* meta.profile = "http://example.org/StructureDefinition/MopedCoverage"
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