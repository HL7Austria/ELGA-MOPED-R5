Alias: $icd-10 = http://hl7.org/fhir/sid/icd-10

Instance: Test1Condition1
InstanceOf: Condition
Usage: #example
* id = "Test1Condition1"
* code = $icd-10#G47.3 "Sleep Apnea"
* subject = Reference(Patient/Test1Patient)
* clinicalStatus = #active
