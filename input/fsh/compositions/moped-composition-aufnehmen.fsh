Profile: MopedAufnahmeComposition
Parent: MopedComposition
Description: "MOPED Profil der Composition Ressource nach $aufnehmen"
Title: "MOPED Aufnahme Composition"
* ^experimental = true
* status = #partial
* encounter 1..1
* subject 1..1
* section[Diagnosen].entry 1..


* obeys moped-nach-aufnahme-freigegeben-encounter-inprogress


Invariant: moped-nach-aufnahme-freigegeben-encounter-inprogress
Severity: #error
Description: "Falls der Workflow status 'Aufnahme-freigegeben' ist, dann muss ein MopedEncounter in-progress sein"
Expression: "encounter.resolve().ofType(Encounter).where(status = 'in-progress').count() = 1"
