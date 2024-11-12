Instance: Test1Condition1
InstanceOf: MOPEDCondition
Usage: #example
* id = "Test1Condition1"
* identifier[MOPEDConditionIdentifier].type.coding.code = #RI
* code.coding[ICD10] = $ICD10AT#G47.3 "Sleep apnoea"
* code.coding[HDG] = $LKFHauptdiagnosegruppen#HDG24.01 "TBD"
* subject = Reference(Patient/Test1Patient)
* clinicalStatus = $ConditionClinicalStatus#active
* encounter = Reference(Test2MOPEDEncounter1)
* verificationStatus = $ConditionVerificationStatus#confirmed

