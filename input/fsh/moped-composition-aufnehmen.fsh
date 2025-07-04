Profile: MopedAufnahmeComposition
Parent: MopedComposition
Description: "MOPED Profil der Composition Ressource nach $aufnehmen"
Title: "MOPED Aufnahme Composition"
* ^experimental = true
* status = #partial
* section[MopedEncounter].entry 1..1
* section[TransferEncounter].entry 1..1
* section[besuchteAbteilungen].entry 1..1


* obeys moped-nach-aufnahme-freigegeben-encounter-inprogress
* obeys moped-nach-aufnahme-freigegeben-transfer-encounter-inprogress
* obeys moped-patient-ist-beneficiary-und-subscriber

Invariant: moped-nach-aufnahme-freigegeben-encounter-inprogress
Severity: #error
Description: "Falls der Workflow status 'Aufnahme-freigegeben' ist, dann muss ein MopedEncounter in-progress sein"
Expression: "section.where(code.coding.code = 'ENC').entry.resolve().ofType(Encounter).where(status = 'in-progress').count() = 1"

Invariant: moped-nach-aufnahme-freigegeben-transfer-encounter-inprogress
Severity: #error
Description: "Falls der Workflow status 'Aufnahme-freigegeben' ist, dann muss ein TransferEncounter in-progress sein"
Expression: "section.where(code.coding.code = 'TENC').entry.resolve().ofType(Encounter).where(status = 'in-progress').count() = 1"

Invariant: moped-patient-ist-beneficiary-und-subscriber
Severity: #error
Description: "Der Patient muss als beneficiary in allen Coverages referenziert sein und, falls kein Hauptversicherter vorhanden ist, auch als subscriber"
Expression: "section.where(code.coding.code = 'COV').entry.resolve().ofType(Coverage).all(
  beneficiary.reference = %resource.subject.reference
  and (
    %resource.section.where(code.coding.code = 'HAUPTV').entry.exists()
    or subscriber.reference = %resource.subject.reference
  )
)"