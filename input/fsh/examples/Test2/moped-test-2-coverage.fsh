Instance: Test2SVCCoverage
InstanceOf: MOPEDCoverage
Usage: #example
* id = "Test2MOPEDCoverage"
* meta.profile = "http://example.org/StructureDefinition/SVCCoverage"
* subscriber = Reference(Patient/Test2Patient)
* beneficiary = Reference(Patient/Test2Patient)

* kind = #insurance
* status = #active

//VDAS-ID
* identifier[+].system = "http://tbd-svc/vdasid"
* identifier[=].value = "foirwejfwe8"

//Versichertenkategorie
* class[+].type.coding.system = "http://svc.co.at/CodeSystem/ecard-versichertenkategorie-cs"
* class[=].type.coding.code = #01
* class[=].value.value = #01