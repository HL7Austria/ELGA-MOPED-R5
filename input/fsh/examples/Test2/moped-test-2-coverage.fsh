Instance: Test2SVCCoverage
InstanceOf: SVCCoverage
Usage: #example
* id = "Test2SVCCoverage"
* meta.profile = "http://example.org/StructureDefinition/SVCCoverage"
* subscriber = Reference(Patient/Test2Patient)
* beneficiary = Reference(Patient/Test2Patient)

* kind = #insurance
* status = #active

//Versichertenkategorie
* class[+].type.coding.system = "http://svc.co.at/CodeSystem/ecard-versichertenkategorie-cs"
* class[=].type.coding.code = #01
* class[=].value.value = #01