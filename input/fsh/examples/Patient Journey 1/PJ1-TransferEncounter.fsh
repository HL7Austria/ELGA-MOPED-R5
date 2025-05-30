Instance: PJ1TransferEncounter1
InstanceOf: MopedTransferEncounter
Description: "Hackathon Patient Journey 1 Beispiel: TransferEncounter 1"
Usage: #example
* meta.profile = "https://elga.moped.at/StructureDefinition/MopedTransferEncounter"
* status = #completed
* subject = Reference(PJ1Patient)
* serviceProvider = Reference(AbteilungHerzJesu1)

* actualPeriod.start = "2024-02-22T19:33:00+02:00"
* actualPeriod.end = "2024-02-23T07:38:00+02:00"

* subjectStatus.coding = AnwesenheitsartCS#ANW

* type = MopedEncounterTypesCS#TENC

* admission.extension[Altersgruppe].extension[beiZugang].valueCode = AltersgruppeCS#55
* admission.extension[Altersgruppe].extension[beiEntlassung].valueCode = AltersgruppeCS#55
* admission.extension[Altersgruppe].extension[neugeborenes].valueBoolean = false

* admission.dischargeDisposition = AbgangsartCS#1

* partOf = Reference(PJ1Encounter)