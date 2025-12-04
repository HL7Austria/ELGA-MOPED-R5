Profile: MopedTransferEncounterA
Parent: MopedTransferEncounter
Description: "MOPED Profil der Encounter Ressource für ambulante Verlegungen"
Title: "MOPED TransferEncounter Ambulant"

* identifier ^slicing.rules = #open
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "type.coding.code"
* identifier ^slicing.ordered = false
* identifier contains AufnahmezahlFunktionscodebezogen 0..1
* identifier[AufnahmezahlFunktionscodebezogen].type from http://terminology.hl7.org/ValueSet/v2-0203 (required)
* identifier[AufnahmezahlFunktionscodebezogen].type.coding.code = #VN (exactly)
* identifier[AufnahmezahlFunktionscodebezogen].assigner only Reference(MopedOrganizationAbteilung)
* identifier[AufnahmezahlFunktionscodebezogen].system 1..1

//TBD actualPeriod.start Uhrzeit verpflichtend machen
* subjectStatus from AnwesenheitsartVS (required)
* subjectStatus 1..1
* admission.extension[Altersgruppe].extension[neugeborenes] 0..0
