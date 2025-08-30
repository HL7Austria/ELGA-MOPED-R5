Instance: PJ2Procedure1
InstanceOf: MopedProcedure
Description: "Hackathon Patient Journey 2 Beispiel: Procedure 1"
Usage: #example
* meta.profile = "https://elga.moped.at/StructureDefinition/MopedProcedure"
* extension[Leistungsanzahl].valueUnsignedInt = 1
* status = #completed
* code.coding = $LKFLeistungskatalog#PE010 "Physiotherapie im Rahmen eines stationären Aufenthaltes (LE=je Aufenthalt)"
* subject = Reference(PJ2Patient)
* encounter = Reference(PJ2Encounter)
* occurrenceDateTime = "2024-08-08T08:21:00+02:00"
* performer.actor = Reference(AbteilungKHRied1)
* performer.onBehalfOf = Reference(OrganizationKrankenhausRied)

Instance: PJ2Procedure2
InstanceOf: MopedProcedure
Description: "Hackathon Patient Journey 2 Beispiel: Procedure 2"
Usage: #example
* meta.profile = "https://elga.moped.at/StructureDefinition/MopedProcedure"
* extension[Leistungsanzahl].valueUnsignedInt = 1
* status = #completed
* code.coding = $LKFLeistungskatalog#AN010 "Polysomnographie im Schlaflabor (LE=je Behandlungstag)"
* subject = Reference(PJ2Patient)
* encounter = Reference(PJ2Encounter)
* occurrenceDateTime = "2024-08-08T08:21:00+02:00"
* performer.actor = Reference(AbteilungKHRied1)
* performer.onBehalfOf = Reference(OrganizationKrankenhausRied)