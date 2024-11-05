Instance: Test2Procedure1
InstanceOf: MOPEDProcedure
Usage: #example
* id = "Test2Procedure1"
* identifier[MOPEDConditionIdentifier].type.coding.code = https://termgit.elga.gv.at/ValueSet/hl7-at-patientidentifier#RI
* identifier[MOPEDConditionIdentifier].value = "324200063urn:oid:1.3.6.1.4.1.36124.5.427MEL01.012024-08-08T08:50"
* code = $LKFmedizinischeEinzelleistungen#MEL01.01
* subject = Reference(Patient/Test2Patient)
* encounter = Reference(MOPEDEncounter/Test2MOPEDEncounter1)
* occurrenceDateTime = "2024-08-08T08:50:00+02:00"
* performer.actor = Reference(MOPEDOrganizationAbteilung/Test2OrganizationAbteilung1)
* performer.onBehalfOf = Reference(HL7ATCoreOrganization/Test2OrganizationKrankenhausRied)
* status = #completed