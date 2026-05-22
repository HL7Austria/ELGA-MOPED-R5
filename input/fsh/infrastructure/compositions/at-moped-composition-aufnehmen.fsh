Profile: AtMopedCompositionAufnehmen
Parent: AtMopedCompositionGenerisch
Id: at-moped-composition-aufnehmen
Title: "AT MOPED Composition $aufnehmen Profil"
Description: "MOPED Profil der Composition Ressource nach $aufnehmen"
* ^experimental = true
* status = #partial
* encounter 1..1
* encounter only Reference(AtMopedEncounterBesuchAmbulantBasis or AtMopedEncounterAufenthaltStationaerBasis)
* subject 1..1
* section[Diagnosen].entry 1..


* obeys moped-nach-aufnahme-freigegeben-encounter-inprogress


Invariant: moped-nach-aufnahme-freigegeben-encounter-inprogress
Severity: #error
Description: "Falls der Workflow status 'Aufnahme-freigegeben' ist, dann muss ein MopedEncounter in-progress sein"
Expression: "encounter.resolve().ofType(Encounter).where(status = 'in-progress').count() = 1"
