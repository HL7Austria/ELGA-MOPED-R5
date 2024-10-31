Alias: $icd-10 = http://hl7.org/fhir/sid/icd-10

Instance: Test2Condition1
InstanceOf: MOPEDCondition
Usage: #example
* id = "Test2Condition1"
* identifier[MOPEDConditionIdentifier].type.coding.code = #RI
* code.coding[ICD10] = $icd-10#S82.0 "TBD"
* code.coding[HDG] = $LKFHauptdiagnosegruppen#HDG24.01 "TBD"
* subject = Reference(Patient/Test2Patient)
* clinicalStatus = #active
* encounter = Reference(MOPEDEncounter/Test2MOPEDEncounter1)
* verificationStatus = #confirmed


Instance: Test2Condition2
InstanceOf: MOPEDCondition
Usage: #example
* id = "Test2Condition2"
* identifier[MOPEDConditionIdentifier].type.coding.code = #RI
* code.coding[ICD10] = $icd-10#999.9 "TBD"
* code.coding[HDG] = $LKFHauptdiagnosegruppen#HDG24.01 "TBD"
* subject = Reference(Patient/Test2Patient)
* clinicalStatus = #active
* encounter = Reference(MOPEDEncounter/Test2MOPEDEncounter1)
* verificationStatus = #confirmed