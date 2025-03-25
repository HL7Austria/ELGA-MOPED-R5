Instance: PJ1Procedure1
InstanceOf: MopedProcedure
Description: "Hackathon Patient Journey 1 Beispiel: Procedure 1"
Usage: #example
* meta.profile = "https://elga.moped.at/StructureDefinition/MopedProcedure"
* identifier[MopedProcedureIdentifier].type.coding = http://terminology.hl7.org/CodeSystem/v2-0203#RI
* identifier[MopedProcedureIdentifier].value = "1024000028urn:oid:1.3.6.1.4.1.36124.5.9140-AN010-2024-02-22T19:33"
* status = #completed
* code.coding = $LKFLeistungskatalog#AN010 "Polysomnographie im Schlaflabor (LE=je Behandlungstag)"
* subject.reference = "Patient?identifier=urn:oid:1.2.40.0.10.1.4.3.1|9994210469"
* encounter.reference = "Encounter?identifier=urn:oid:1.3.6.1.4.1.36124.5.914|1024000028"
* occurrenceDateTime = "2024-02-22T19:33:00+02:00"
//TBD MELGruppe einfügen
* performer.actor.reference = "Organization?identifier=urn:oid:1.3.6.1.4.1.36124.5.914|131180"
* performer.onBehalfOf.reference = "Organization?identifier=urn:ietf:rfc:3986|urn:oid:1.3.6.1.4.1.36124.5.914"