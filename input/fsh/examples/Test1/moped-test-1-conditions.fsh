Alias: $icd-10 = http://hl7.org/fhir/sid/icd-10

Instance: Test1Condition1
InstanceOf: MOPEDCondition
Usage: #example
* id = "Test1Condition1"
* identifier[MOPEDConditionIdentifier].type.coding.code = #RI
* code.coding[ICD10] = $icd-10#G47.3 "Sleep Apnea"
* code.coding[HDG] = $LKFHauptdiagnosegruppen#HDG24.01 "TBD"
* subject = Reference(Patient/Test1Patient)
* clinicalStatus = #active
* encounter = Reference(MOPEDEncounter/Test2MOPEDEncounter1)
* verificationStatus = #confirmed
