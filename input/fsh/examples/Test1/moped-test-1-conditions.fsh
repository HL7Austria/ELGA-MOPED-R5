Instance: Test1Condition1
InstanceOf: MopedCondition
Usage: #example
* id = "Test1Condition1"
* identifier[MopedConditionIdentifier].type = $IdentifyerCodeSystem#RI
* code.coding[ICD10] = $ICD10AT#G47.3 "Sleep apnoea"
* code.coding[HDG] = $LKFHauptdiagnosegruppen#HDG24.01 "TBD"
* subject = Reference(Patient/Test1Patient)
* clinicalStatus = $ConditionClinicalStatus#active
* encounter = Reference(Test2MopedEncounter1)
* verificationStatus = $ConditionVerificationStatus#confirmed

