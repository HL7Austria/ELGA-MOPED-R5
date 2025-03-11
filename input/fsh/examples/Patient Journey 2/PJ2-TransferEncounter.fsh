Instance: PJ2TransferEncounter1
InstanceOf: MopedTransferEncounter
Description: "Hackathon Patient Journey 2 Beispiel: TransferEncounter 1"
Usage: #example
* meta.profile = "https://elga.moped.at/StructureDefinition/MopedTransferEncounter"
* status = #completed
* subject = Reference(PJ2Patient)
* serviceProvider = Reference(AbteilungKHRied1)
* actualPeriod.start = "2024-08-08T08:21:00+02:00"
* actualPeriod.end = "2024-08-08T11:22:00+02:00"
* subjectStatus.coding = AnwesenheitsartCS#ANW
* type = MopedEncounterTypesCS#TENC
* admission.extension[Altersgruppe].extension[beiZugang].valueCode = AltersgruppeCS#35
* admission.extension[Altersgruppe].extension[beiEntlassung].valueCode = AltersgruppeCS#35
* admission.extension[Altersgruppe].extension[neugeborenes].valueBoolean = false
* partOf = Reference(PJ2Encounter)

Instance: PJ2TransferEncounter2
InstanceOf: MopedTransferEncounter
Description: "Hackathon Patient Journey 2 Beispiel: TransferEncounter 2"
Usage: #example
* meta.profile = "https://elga.moped.at/StructureDefinition/MopedTransferEncounter"
* status = #completed
* subject = Reference(PJ2Patient)
* serviceProvider = Reference(AbteilungKHRied2)
* actualPeriod.start = "2024-08-08T11:22:00+02:00"
* actualPeriod.end = "2024-08-08T11:41:00+02:00"
* subjectStatus.coding = AnwesenheitsartCS#ANW
* type = MopedEncounterTypesCS#TENC
* admission.extension[Altersgruppe].extension[beiZugang].valueCode = AltersgruppeCS#35
* admission.extension[Altersgruppe].extension[beiEntlassung].valueCode = AltersgruppeCS#35
* admission.extension[Altersgruppe].extension[neugeborenes].valueBoolean = false
* admission.dischargeDisposition = AbgangsartCS#1
* partOf = Reference(PJ2Encounter)

Instance: PJ2TransferEncounter3
InstanceOf: MopedTransferEncounter
Description: "Hackathon Patient Journey 2 Beispiel: TransferEncounter 3"
Usage: #example
* meta.profile = "https://elga.moped.at/StructureDefinition/MopedTransferEncounter"
* status = #completed
* subject = Reference(PJ2Patient)
* serviceProvider = Reference(AbteilungKHRied3)
* actualPeriod.start = "2024-08-08T11:41:00+02:00"
* actualPeriod.end = "2024-08-09T11:38:00+02:00"
* subjectStatus.coding = AnwesenheitsartCS#ANW
* type = MopedEncounterTypesCS#TENC
* admission.extension[Altersgruppe].extension[beiZugang].valueCode = AltersgruppeCS#35
* admission.extension[Altersgruppe].extension[beiEntlassung].valueCode = AltersgruppeCS#35
* admission.extension[Altersgruppe].extension[neugeborenes].valueBoolean = false
* admission.dischargeDisposition = AbgangsartCS#1
* partOf = Reference(PJ2Encounter)

Instance: PJ2TransferEncounter4
InstanceOf: MopedTransferEncounter
Description: "Hackathon Patient Journey 2 Beispiel: TransferEncounter 4"
Usage: #example
* meta.profile = "https://elga.moped.at/StructureDefinition/MopedTransferEncounter"
* status = #completed
* subject = Reference(PJ2Patient)
* serviceProvider = Reference(AbteilungKHRied4)
* actualPeriod.start = "2024-08-09T11:38:00+02:00"
* actualPeriod.end = "2024-08-10T17:00:00+02:00"
* subjectStatus.coding = AnwesenheitsartCS#ANW
* type = MopedEncounterTypesCS#TENC
* admission.extension[Altersgruppe].extension[beiZugang].valueCode = AltersgruppeCS#35
* admission.extension[Altersgruppe].extension[beiEntlassung].valueCode = AltersgruppeCS#35
* admission.extension[Altersgruppe].extension[neugeborenes].valueBoolean = false
* admission.dischargeDisposition = AbgangsartCS#1
* partOf = Reference(PJ2Encounter)

Instance: PJ2TransferEncounter5
InstanceOf: MopedTransferEncounter
Description: "Hackathon Patient Journey 2 Beispiel: TransferEncounter 5"
Usage: #example
* meta.profile = "https://elga.moped.at/StructureDefinition/MopedTransferEncounter"
* status = #completed
* subject = Reference(PJ2Patient)
* serviceProvider = Reference(AbteilungKHRied3)
* actualPeriod.start = "2024-08-10T17:00:00+02:00"
* actualPeriod.end = "2024-08-12T19:22:00+02:00"
* subjectStatus.coding = AnwesenheitsartCS#ANW
* type = MopedEncounterTypesCS#TENC
* admission.extension[Altersgruppe].extension[beiZugang].valueCode = AltersgruppeCS#35
* admission.extension[Altersgruppe].extension[beiEntlassung].valueCode = AltersgruppeCS#35
* admission.extension[Altersgruppe].extension[neugeborenes].valueBoolean = false
* admission.dischargeDisposition = AbgangsartCS#1
* partOf = Reference(PJ2Encounter)
