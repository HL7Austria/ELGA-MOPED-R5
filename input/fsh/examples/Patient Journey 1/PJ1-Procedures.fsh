Instance: PJ1Procedure1
InstanceOf: MopedProcedure
Description: "Hackathon Patient Journey 1 Beispiel: Procedure 1"
Usage: #example
* meta.profile = "https://elga.moped.at/StructureDefinition/MopedProcedure"
* extension[Leistungsanzahl].valueUnsignedInt = 1
* identifier[MopedProcedureIdentifier].type.coding = http://terminology.hl7.org/CodeSystem/v2-0203#RI
* identifier[MopedProcedureIdentifier].value = "1024000028urn:oid:1.3.6.1.4.1.36124.5.9140-AN010-2024-02-22T19:33"
* status = #completed
* code.coding = $LKFLeistungskatalog#AN010 "Polysomnographie im Schlaflabor (LE=je Behandlungstag)"
* subject = Reference(PJ1Patient)
* encounter = Reference(PJ1Encounter)
* occurrenceDateTime = "2024-02-22T19:33:00+02:00"
* performer.actor = Reference(AbteilungHerzJesu1)
* performer.onBehalfOf = Reference(OrganizationHerzJesuKrankenhaus)