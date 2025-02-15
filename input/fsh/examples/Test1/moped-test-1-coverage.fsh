Instance: Test1MopedCoverage
InstanceOf: MopedCoverage
Usage: #example
* id = "Test1MopedCoverage"
* meta.profile = "http://example.org/StructureDefinition/MopedCoverage"
* subscriber = Reference(Test1Patient)
* beneficiary = Reference(Test1Patient)

* kind = #insurance
* status = #active

//VDAS-ID
* identifier[+].system = "http://tbd-svc/vdasid"
* identifier[=].value = "TEST12345678"

//Versichertenkategorie
* class[+].type.coding.system = $SVCVersichertenkategorien
* class[=].type.coding.code = #01
* class[=].value.value = #01