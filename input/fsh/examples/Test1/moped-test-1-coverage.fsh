Instance: Test1MOPEDCoverage
InstanceOf: MOPEDCoverage
Usage: #example
* id = "Test1MOPEDCoverage"
* meta.profile = "http://example.org/StructureDefinition/MOPEDCoverage"
* subscriber = Reference(Patient/Test1Patient)
* beneficiary = Reference(Patient/Test1Patient)

* kind = #insurance
* status = #active

//VDAS-ID
* identifier[+].system = "http://tbd-svc/vdasid"
* identifier[=].value = "TEST12345678"

//Versichertenkategorie
* class[+].type.coding.system = "http://svc.co.at/CodeSystem/ecard-versichertenkategorie-cs"
* class[=].type.coding.code = #01
* class[=].value.value = #01