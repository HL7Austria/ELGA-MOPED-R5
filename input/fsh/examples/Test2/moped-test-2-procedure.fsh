Instance: Test2Procedure1
InstanceOf: MOPEDProcedure
Usage: #example
* id = "Test2Procedure1"
* identifier[MOPEDConditionIdentifier].type = $IdentifyerCodeSystem#RI "Resource identifier"
* identifier[MOPEDConditionIdentifier].value = "324200063urn:oid:1.3.6.1.4.1.36124.5.427MEL01.012024-08-08T08:50"
* code = $LKFmedizinischeEinzelleistungen#MEL01.01
* subject = Reference(Test2Patient)
* encounter = Reference(Test2MOPEDEncounter1)
* occurrenceDateTime = "2024-08-08T08:50:00+02:00"
* performer.actor = Reference(Test2OrganizationAbteilung2)
* performer.onBehalfOf = Reference(Test2OrganizationKrankenhausRied)
* status = #completed