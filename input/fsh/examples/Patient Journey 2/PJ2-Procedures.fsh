Instance: PJ2Procedure1
InstanceOf: MopedProcedure
Description: "Hackathon Patient Journey 2 Beispiel: Procedure 1"
Usage: #example
* meta.profile = "https://elga.moped.at/StructureDefinition/MopedProcedure"
* identifier[MopedProcedureIdentifier].type.coding = http://terminology.hl7.org/CodeSystem/v2-0203#RI
* identifier[MopedProcedureIdentifier].value = "324200063urn:oid:1.3.6.1.4.1.36124.5.427-PE010-2024-08-08T08:21"
* status = #completed
* code.coding = $LKFLeistungskatalog#PE010 "Physiotherapie im Rahmen eines stationären Aufenthaltes (LE=je Aufenthalt)"
* subject.reference = "Patient?identifier=urn:oid:1.2.40.0.10.1.4.3.1|2873111374"
* encounter.reference = "Encounter?identifier=urn:oid:1.3.6.1.4.1.36124.5.427|324200063"
* occurrenceDateTime = "2024-08-08T08:21:00+02:00"
//TBD MELGruppe einfügen
* performer.actor.reference = "Organization?identifier=urn:oid:1.3.6.1.4.1.36124.5.427|112111"
* performer.onBehalfOf.reference = "Organization?identifier=urn:ietf:rfc:3986|urn:oid:1.3.6.1.4.1.36124.5.427"

Instance: PJ2Procedure2
InstanceOf: MopedProcedure
Description: "Hackathon Patient Journey 2 Beispiel: Procedure 2"
Usage: #example
* meta.profile = "https://elga.moped.at/StructureDefinition/MopedProcedure"
* identifier[MopedProcedureIdentifier].type.coding = http://terminology.hl7.org/CodeSystem/v2-0203#RI
* identifier[MopedProcedureIdentifier].value = "324200063urn:oid:1.3.6.1.4.1.36124.5.427-AN010-2024-08-08T08:21"
* status = #completed
* code.coding = $LKFLeistungskatalog#AN010 "Polysomnographie im Schlaflabor (LE=je Behandlungstag)"
* subject.reference = "Patient?identifier=urn:oid:1.2.40.0.10.1.4.3.1|2873111374"
* encounter.reference = "Encounter?identifier=urn:oid:1.3.6.1.4.1.36124.5.427|324200063"
* occurrenceDateTime = "2024-08-08T08:21:00+02:00"
//TBD MELGruppe einfügen
* performer.actor.reference = "Organization?identifier=urn:oid:1.3.6.1.4.1.36124.5.427|112111"
* performer.onBehalfOf.reference = "Organization?identifier=urn:ietf:rfc:3986|urn:oid:1.3.6.1.4.1.36124.5.427"