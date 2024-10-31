Instance: Test2Procedure1
InstanceOf: Procedure
Usage: #example
* id = "Test2Procedure1"
* code = $LKFmedizinischeEinzelleistungen#MEL01.01
* subject = Reference(Patient/Test2Patient)
* encounter = Reference(MOPEDEncounter/Test2MOPEDEncounter1)
* occurrenceDateTime = "2024-08-08T08:50:00+02:00"
* performer.actor = Reference(MOPEDOrganizationAbteilung/Test2OrganizationAbteilung1)
* performer.onBehalfOf = Reference(HL7ATCoreOrganization/Test2OrganizationKrankenhausRied)
* status = #completed