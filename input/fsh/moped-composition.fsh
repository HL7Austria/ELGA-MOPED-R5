Profile: MopedComposition
Parent: Composition
Description: "MOPED Profil der Composition Ressource für die Composition in der sich der gesamte Moped Datensatz aufbaut."
Title: "MOPED Composition"
* subject only Reference(HL7ATCorePatient)
* encounter only Reference(MopedEncounter)

* useContext 1..*
* useContext ^slicing.discriminator[+].type = #value
* useContext ^slicing.discriminator[=].path = "code"
* useContext ^slicing.rules = #open
* useContext contains
  Workflow 1..1
* useContext[Workflow].code = http://terminology.hl7.org/CodeSystem/usage-context-type#workflow
* useContext[Workflow].value[x] only CodeableConcept
* useContext[Workflow].valueCodeableConcept from WorkflowStatus

* useContext contains
  AuthorizedUser 0..
* useContext[AuthorizedUser].code = http://terminology.hl7.org/CodeSystem/usage-context-type#user
* useContext[AuthorizedUser].value[x] only Reference(HL7ATCoreOrganization)

* author only Reference(HL7ATCoreOrganization)

* section 1..*
* section.code from CompositionSectionsVS
* section ^slicing.discriminator[+].type = #value
* section ^slicing.discriminator[=].path = "code.coding.code"
* section ^slicing.rules = #open
* section contains MopedEncounter 1..1
* section[MopedEncounter].code.coding.system = Canonical(MopedEncounterTypesCS)
* section[MopedEncounter].code.coding.code = #ENC
* section[MopedEncounter].entry 1..1
* section[MopedEncounter].entry only Reference(MopedEncounter)
* section[MopedEncounter].author only Reference(KHOrganization)
* section contains TransferEncounter 0..
* section[TransferEncounter].code.coding.system = Canonical(MopedEncounterTypesCS)
* section[TransferEncounter].code.coding.code = #TENC
* section[TransferEncounter].entry 1..
* section[TransferEncounter].entry only Reference(MopedEncounter)
* section contains zustaendigeSV 0..
* section[zustaendigeSV].code.coding.system = Canonical(CompositionSectionsCS)
* section[zustaendigeSV].code.coding.code = #SV
* section[zustaendigeSV].entry 1..
* section[zustaendigeSV].entry only Reference(SVOrganization)
* section contains zustaendigerLGF 0.. 
* section[zustaendigerLGF].code.coding.system = Canonical(CompositionSectionsCS)
* section[zustaendigerLGF].code.coding.code = #LGF
* section[zustaendigerLGF].entry 1..
* section[zustaendigerLGF].entry only Reference(LGFOrganization)
* section contains zustaendigesKH 0.. 
* section[zustaendigesKH].code.coding.system = Canonical(CompositionSectionsCS)
* section[zustaendigesKH].code.coding.code = #KH
* section[zustaendigesKH].entry 1..
* section[zustaendigesKH].entry only Reference(KHOrganization)
* section contains besuchteAbteilungen 0.. 
* section[besuchteAbteilungen].code.coding.system = Canonical(CompositionSectionsCS)
* section[besuchteAbteilungen].code.coding.code = #ABT
* section[besuchteAbteilungen].entry 1..
* section[besuchteAbteilungen].entry only Reference(MopedOrganizationAbteilung)
* section[besuchteAbteilungen].author only Reference(KHOrganization)
* section contains Diagnosen 0.. 
* section[Diagnosen].code.coding.system = Canonical(CompositionSectionsCS)
* section[Diagnosen].code.coding.code = #DIAG
* section[Diagnosen].entry 1..
* section[Diagnosen].entry only Reference(MopedCondition)
* section[Diagnosen].author only Reference(KHOrganization)
* section contains Leistungen 0.. 
* section[Leistungen].code.coding.system = Canonical(CompositionSectionsCS)
* section[Leistungen].code.coding.code = #LEI
* section[Leistungen].entry 1..
* section[Leistungen].entry only Reference(MopedProcedure)
* section[Leistungen].author only Reference(KHOrganization)
* section contains Coverages 0.. 
* section[Coverages].code.coding.system = Canonical(CompositionSectionsCS)
* section[Coverages].code.coding.code = #COV
* section[Coverages].entry 1..
* section[Coverages].entry only Reference(MopedCoverage) //TODO Selbstzahlercoverage
* section[Coverages].author only Reference(KHOrganization)
* section contains VAERequests 0.. 
* section[VAERequests].code.coding.system = Canonical(CompositionSectionsCS)
* section[VAERequests].code.coding.code = #VAEReq
* section[VAERequests].entry 1..
* section[VAERequests].entry only Reference(MopedVAERequest)
* section[VAERequests].author only Reference(KHOrganization)
* section contains VAEResponses 0.. 
* section[VAEResponses].code.coding.system = Canonical(CompositionSectionsCS)
* section[VAEResponses].code.coding.code = #VAEResp
* section[VAEResponses].entry 1..
* section[VAEResponses].entry only Reference(MopedVAEResponse)
* section[VAEResponses].author only Reference(SVOrganization)
* section contains LKFRequests 0.. 
* section[LKFRequests].code.coding.system = Canonical(CompositionSectionsCS)
* section[LKFRequests].code.coding.code = #LKFReq
* section[LKFRequests].entry 1..
* section[LKFRequests].entry only Reference(MopedLKFRequest)
* section[LKFRequests].author only Reference(KHOrganization)
* section contains LKFResponses 0.. 
* section[LKFResponses].code.coding.system = Canonical(CompositionSectionsCS)
* section[LKFResponses].code.coding.code = #LKFResp
* section[LKFResponses].entry 1..
* section[LKFResponses].entry only Reference(MopedLKFResponse)
* section[LKFResponses].author only Reference(LGFOrganization)
* section contains Observations 0.. 
* section[Observations].code.coding.system = Canonical(CompositionSectionsCS)
* section[Observations].code.coding.code = #OBS
* section[Observations].entry 1..
* section[Observations].entry only Reference(Observation)
* section[Observations].author only Reference(KHOrganization)
* section contains Hauptversicherter 0.. 
* section[Hauptversicherter].code.coding.system = Canonical(CompositionSectionsCS)
* section[Hauptversicherter].code.coding.code = #HAUPTV
* section[Hauptversicherter].entry 1..
* section[Hauptversicherter].entry only Reference(Hauptversicherter)
* section[Hauptversicherter].author only Reference(KHOrganization)
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