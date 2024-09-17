Instance: Test1SVCCoverage
InstanceOf: SVCCoverage
Usage: #example
* id = "Test1SVCCoverage"
* meta.profile = "http://example.org/StructureDefinition/SVCCoverage"
* subscriber = Reference("Patient/Test1Patient")
* beneficiary = Reference("Patient/Test1Patient")

* kind = #insurance
* status = #active

//Versichertenkategorie
* class[+].type.coding.system = "http://svc.co.at/CodeSystem/ecard-versichertenkategorie-cs"
* class[=].type.coding.code = #01
* class[=].value.value = #01