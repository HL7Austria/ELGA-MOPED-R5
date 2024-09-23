Alias: $icd-10 = http://hl7.org/fhir/sid/icd-10

Instance: Test2Condition1
InstanceOf: Condition
Usage: #example
* id = "Test2Condition1"
* code = $icd-10#S82.0 "TBD"
* subject = Reference(Patient/Test2Patient)
* clinicalStatus = #active


Instance: Test2Condition2
InstanceOf: Condition
Usage: #example
* id = "Test2Condition2"
* code = $icd-10#999.9 "TBD"
* subject = Reference(Patient/Test2Patient)
* clinicalStatus = #active