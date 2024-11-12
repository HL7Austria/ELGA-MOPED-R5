Instance: Test2Condition1
InstanceOf: MOPEDCondition
Usage: #example
* id = "Test2Condition1"
* identifier[MOPEDConditionIdentifier].type.coding.code = https://termgit.elga.gv.at/ValueSet/hl7-at-patientidentifier#RI
* identifier[MOPEDConditionIdentifier].value = "324200063urn:oid:1.3.6.1.4.1.36124.5.427S82.0"
* code.coding[ICD10] = $ICD10AT#S82.0 "TBD"
* code.coding[HDG] = $LKFHauptdiagnosegruppen#HDG24.01 "TBD"
* subject = Reference(Test2Patient)
* clinicalStatus.coding = $ConditionClinicalStatus#active
* encounter = Reference(Test2MOPEDEncounter1)
* verificationStatus.coding = $ConditionVerificationStatus#confirmed


Instance: Test2Condition2
InstanceOf: MOPEDCondition
Usage: #example
* id = "Test2Condition2"
* identifier[MOPEDConditionIdentifier].type.coding.code = https://termgit.elga.gv.at/ValueSet/hl7-at-patientidentifier#RI
* identifier[MOPEDConditionIdentifier].value = "324200063urn:oid:1.3.6.1.4.1.36124.5.427999.9"
* code = $ICD10AT#T88.8XXA "Other specified complications of surgical and medical care, not elsewhere classified, initial encounter"
* code.coding[HDG] = $LKFHauptdiagnosegruppen#HDG24.01 "TBD"
* subject = Reference(Test2Patient)
* clinicalStatus.coding = $ConditionClinicalStatus#active
* encounter = Reference(Test2MOPEDEncounter1)
* verificationStatus.coding = $ConditionVerificationStatus#confirmed

