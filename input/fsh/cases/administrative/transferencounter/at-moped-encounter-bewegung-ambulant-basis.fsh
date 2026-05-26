Profile: AtMopedEncounterBewegungAmbulantBasis
Parent: AtMopedEncounterBewegungGenerisch
Id: at-moped-encounter-bewegung-ambulant-basis
Title : "AT MOPED Encounter Bewegung Ambulant Basis Profil"
Description: "MOPED Profil der Encounter Ressource für ambulante Kontakte/Bewegungen"

* identifier ^slicing.rules = #open
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "type.coding.code"
* identifier ^slicing.ordered = false
* identifier contains AufnahmezahlFunktionscodebezogen 0..1
* insert ShallPopulateObligation(identifier[AufnahmezahlFunktionscodebezogen], MopedKAActor)
* identifier[AufnahmezahlFunktionscodebezogen].type.coding.system = $HL7V2
* identifier[AufnahmezahlFunktionscodebezogen].type.coding.code = #VN (exactly)
//* identifier[AufnahmezahlFunktionscodebezogen].assigner only Reference(AtMopedOrganizationOrganisationseinheitKA)
//TBD HealthcareService cannot be assigner anymore
* identifier[AufnahmezahlFunktionscodebezogen].system 1..1
* insert legacyMapping(identifier[AufnahmezahlFunktionscodebezogen].value, LKF, [[Aufnahmezahl – funktionscodebezogen]])
* insert ShallPopulateObligation(identifier[AufnahmezahlFunktionscodebezogen].value, MopedKAActor)

//TBD actualPeriod.start Uhrzeit verpflichtend machen
* subjectStatus from AnwesenheitsartVS (required)
* subjectStatus 1..1
* admission.extension[Altersgruppe].extension[neugeborenes] 0..0
