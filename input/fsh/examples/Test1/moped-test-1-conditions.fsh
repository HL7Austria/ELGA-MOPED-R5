Alias: $icd-10 = http://hl7.org/fhir/sid/icd-10

Instance: Test1Condition1
InstanceOf: MOPEDCondition
Usage: #example
* id = "Test1Condition1"
* identifier[MOPEDConditionIdentifier].type = https://termgit.elga.gv.at/ValueSet/hl7-at-patientidentifier#RI
* identifier[MOPEDConditionIdentifier].value = "1024000028urn:oid:1.3.6.1.4.1.36124.5.9140G47.3"
* code.coding[ICD10] = $icd-10#G47.3 "Sleep Apnea"
* code.coding[HDG] = $LKFHauptdiagnosegruppen#HDG01.31 "TBD"
* subject = Reference(Patient/Test1Patient)
* clinicalStatus = #active
* encounter = Reference(MOPEDEncounter/Test1MOPEDEncounter)
* verificationStatus = #confirmed //TBD
* status = #completed