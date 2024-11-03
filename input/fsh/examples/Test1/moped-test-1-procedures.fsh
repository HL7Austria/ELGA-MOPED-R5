Instance: Test1Procedure1
InstanceOf: MOPEDProcedure
Usage: #example
* id = "Test1Procedure1"
* identifier[MOPEDProcedureIdentifier].type = https://termgit.elga.gv.at/ValueSet/hl7-at-patientidentifier#RI
* identifier[MOPEDProcedureIdentifier].value = "1024000028urn:oid:1.3.6.1.4.1.36124.5.9140AN0102024-02-22T19:33"
* code[0] = $LKFmedizinischeEinzelleistungen#AN010 "Polysomnographie im Schlaflabor (LE=je Behandlungstag)"
* subject = Reference(Patient/Test1Patient)
* encounter = Reference(MOPEDEncounter/Test1MOPEDEncounter)
* occurrenceDateTime = "2024-02-22T19:33:00+02:00"
* performer.actor = Reference(MOPEDOrganizationAbteilung/Test1OrganizationAbteilung1)
* performer.onBehalfOf = Reference(HL7ATCoreOrganization/Test1OrganizationHerzJesuKrankenhaus)
* status = #completed