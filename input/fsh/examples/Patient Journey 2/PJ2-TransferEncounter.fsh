Instance: PJ2BewegungsEncounter1
InstanceOf: AtMopedEncounterBewegungStationaerBasis
Description: "Hackathon Patient Journey 2 Beispiel: BewegungsEncounter 1"
Usage: #example
* meta.profile = "https://elga.moped.at/StructureDefinition/MopedBewegungsEncounter"
* status = #completed
* subject = Reference(PJ2Patient)
* serviceType = Reference(AbteilungKARied1)
* actualPeriod.start = "2024-08-08T08:21:00+02:00"
* actualPeriod.end = "2024-08-08T11:22:00+02:00"
* subjectStatus.coding = AnwesenheitsartCS#ANW
* type = MopedEncounterTypesCS#BENC
* admission.extension[Altersgruppe].extension[beiZugang].valueCodeableConcept.coding = AltersgruppeCS#35
* admission.extension[Altersgruppe].extension[beiEntlassung].valueCodeableConcept.coding = AltersgruppeCS#35
* admission.extension[Altersgruppe].extension[neugeborenes].valueBoolean = false
* partOf = Reference(PJ2Encounter)

Instance: PJ2BewegungsEncounter2
InstanceOf: AtMopedEncounterBewegungStationaerBasis
Description: "Hackathon Patient Journey 2 Beispiel: BewegungsEncounter 2"
Usage: #example
* meta.profile = "https://elga.moped.at/StructureDefinition/MopedBewegungsEncounter"
* status = #completed
* subject = Reference(PJ2Patient)
* serviceType = Reference(AbteilungKARied2)
* actualPeriod.start = "2024-08-08T11:22:00+02:00"
* actualPeriod.end = "2024-08-08T11:41:00+02:00"
* subjectStatus.coding = AnwesenheitsartCS#ANW
* type = MopedEncounterTypesCS#BENC
* admission.extension[Altersgruppe].extension[beiZugang].valueCodeableConcept.coding = AltersgruppeCS#35
* admission.extension[Altersgruppe].extension[beiEntlassung].valueCodeableConcept.coding = AltersgruppeCS#35
* admission.extension[Altersgruppe].extension[neugeborenes].valueBoolean = false
* admission.dischargeDisposition = AbgangsartCS#1
* partOf = Reference(PJ2Encounter)

Instance: PJ2BewegungsEncounter3
InstanceOf: AtMopedEncounterBewegungStationaerBasis
Description: "Hackathon Patient Journey 2 Beispiel: BewegungsEncounter 3"
Usage: #example
* meta.profile = "https://elga.moped.at/StructureDefinition/MopedBewegungsEncounter"
* status = #completed
* subject = Reference(PJ2Patient)
* serviceType = Reference(AbteilungKARied3)
* actualPeriod.start = "2024-08-08T11:41:00+02:00"
* actualPeriod.end = "2024-08-09T11:38:00+02:00"
* subjectStatus.coding = AnwesenheitsartCS#ANW
* type = MopedEncounterTypesCS#BENC
* admission.extension[Altersgruppe].extension[beiZugang].valueCodeableConcept.coding = AltersgruppeCS#35
* admission.extension[Altersgruppe].extension[beiEntlassung].valueCodeableConcept.coding = AltersgruppeCS#35
* admission.extension[Altersgruppe].extension[neugeborenes].valueBoolean = false
* admission.dischargeDisposition = AbgangsartCS#1
* partOf = Reference(PJ2Encounter)

Instance: PJ2BewegungsEncounter4
InstanceOf: AtMopedEncounterBewegungStationaerBasis
Description: "Hackathon Patient Journey 2 Beispiel: BewegungsEncounter 4"
Usage: #example
* meta.profile = "https://elga.moped.at/StructureDefinition/MopedBewegungsEncounter"
* status = #completed
* subject = Reference(PJ2Patient)
* serviceType = Reference(AbteilungKARied4)
* actualPeriod.start = "2024-08-09T11:38:00+02:00"
* actualPeriod.end = "2024-08-10T17:00:00+02:00"
* subjectStatus.coding = AnwesenheitsartCS#ANW
* type = MopedEncounterTypesCS#BENC
* admission.extension[Altersgruppe].extension[beiZugang].valueCodeableConcept.coding = AltersgruppeCS#35
* admission.extension[Altersgruppe].extension[beiEntlassung].valueCodeableConcept.coding = AltersgruppeCS#35
* admission.extension[Altersgruppe].extension[neugeborenes].valueBoolean = false
* admission.dischargeDisposition = AbgangsartCS#1
* partOf = Reference(PJ2Encounter)

Instance: PJ2BewegungsEncounter5
InstanceOf: AtMopedEncounterBewegungStationaerBasis
Description: "Hackathon Patient Journey 2 Beispiel: BewegungsEncounter 5"
Usage: #example
* meta.profile = "https://elga.moped.at/StructureDefinition/MopedBewegungsEncounter"
* status = #completed
* subject = Reference(PJ2Patient)
* serviceType = Reference(AbteilungKARied3)
* actualPeriod.start = "2024-08-10T17:00:00+02:00"
* actualPeriod.end = "2024-08-12T19:22:00+02:00"
* subjectStatus.coding = AnwesenheitsartCS#ANW
* type = MopedEncounterTypesCS#BENC
* admission.extension[Altersgruppe].extension[beiZugang].valueCodeableConcept.coding = AltersgruppeCS#35
* admission.extension[Altersgruppe].extension[beiEntlassung].valueCodeableConcept.coding = AltersgruppeCS#35
* admission.extension[Altersgruppe].extension[neugeborenes].valueBoolean = false
* admission.dischargeDisposition = AbgangsartCS#1
* partOf = Reference(PJ2Encounter)
