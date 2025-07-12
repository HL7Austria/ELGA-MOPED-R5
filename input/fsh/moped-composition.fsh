Profile: MopedComposition
Parent: Composition
Description: "MOPED Profil der Composition Ressource von der alle anderen Compositions ableiten."
Title: "MOPED Composition"
* subject only Reference(HL7ATCorePatient)
* subject 1..1
* encounter only Reference(MopedEncounterA or MopedEncounterS)
* encounter 1..1
* ^experimental = true

* useContext 1..*
* useContext ^slicing.discriminator[+].type = #value
* useContext ^slicing.discriminator[=].path = "code"
* useContext ^slicing.rules = #open
* useContext contains
  Workflow 1..1
* useContext[Workflow].code = http://terminology.hl7.org/CodeSystem/usage-context-type#workflow
* useContext[Workflow].value[x] only CodeableConcept
* useContext[Workflow].valueCodeableConcept from WorkflowStatusVS

/*
* useContext contains
  AuthorizedUser 0..
* useContext[AuthorizedUser].code = http://terminology.hl7.org/CodeSystem/usage-context-type#user
* useContext[AuthorizedUser].value[x] only Reference(HL7ATCoreOrganization)
*/

* author only Reference(HL7ATCoreOrganization)

* extension contains AnzahlVerlegungen named AnzahlVerlegungen 0..1
* extension contains AnzahlBeurlaubungen named AnzahlBeurlaubungen 0..1
* extension contains TageOhneKostenbeitrag named TageOhneKostenbeitrag 0..1
* extension contains Fondsrelevanz named Fondsrelevanz 1..1

* section 1..*
* section.code from CompositionSectionsVS
* section ^slicing.discriminator[+].type = #value
* section ^slicing.discriminator[=].path = "code.coding.code"
* section ^slicing.rules = #open
* section contains TransferEncounter 0..1
* section[TransferEncounter].code.coding.system = Canonical(MopedEncounterTypesCS)
* section[TransferEncounter].code.coding.code = #TENC
* section[TransferEncounter].entry 1..
* section[TransferEncounter].entry only Reference(MopedTransferEncounterI or MopedTransferEncounterA or MopedTransferEncounterS)
* section contains zustaendigeSV 0..1
* section[zustaendigeSV].code.coding.system = Canonical(CompositionSectionsCS)
* section[zustaendigeSV].code.coding.code = #SV
* section[zustaendigeSV].entry 1..
* section[zustaendigeSV].entry only Reference(SVOrganization)
* section contains zustaendigerLGF 1..1 
* section[zustaendigerLGF].code.coding.system = Canonical(CompositionSectionsCS)
* section[zustaendigerLGF].code.coding.code = #LGF
* section[zustaendigerLGF].entry 1..
* section[zustaendigerLGF].entry only Reference(LGFOrganization)
* section contains zustaendigesKH 1..1 
* section[zustaendigesKH].code.coding.system = Canonical(CompositionSectionsCS)
* section[zustaendigesKH].code.coding.code = #KH
* section[zustaendigesKH].entry 1..
* section[zustaendigesKH].entry only Reference(KHOrganization)
* section contains besuchteAbteilungen 0..1 
* section[besuchteAbteilungen].code.coding.system = Canonical(CompositionSectionsCS)
* section[besuchteAbteilungen].code.coding.code = #ABT
* section[besuchteAbteilungen].entry 1..
* section[besuchteAbteilungen].entry only Reference(MopedOrganizationAbteilung)
* section[besuchteAbteilungen].author only Reference(KHOrganization)
* section contains Diagnosen 0..1 
* section[Diagnosen].code.coding.system = Canonical(CompositionSectionsCS)
* section[Diagnosen].code.coding.code = #DIAG
* section[Diagnosen].entry 0..
* section[Diagnosen].section ^slicing.discriminator[+].type = #value
* section[Diagnosen].section ^slicing.discriminator[=].path = "code.coding.code"
* section[Diagnosen].section ^slicing.rules = #open
* section[Diagnosen].section.code from LKFDiagnoseTypVS
* section[Diagnosen].section contains Hauptdiagnosen 0.. and Zusatzdiagnosen 0.. and Aufnahmediagnosen 0..
* section[Diagnosen].section[Hauptdiagnosen].code.coding.code = #H
* section[Diagnosen].section[Hauptdiagnosen].entry 1..
* section[Diagnosen].section[Hauptdiagnosen].entry only Reference(MopedCondition)
* section[Diagnosen].section[Hauptdiagnosen].author only Reference(KHOrganization)
* section[Diagnosen].section[Hauptdiagnosen].code.coding from LKFDiagnoseTypVS
* section[Diagnosen].section[Zusatzdiagnosen].code.coding.code = #Z
* section[Diagnosen].section[Zusatzdiagnosen].entry 1..
* section[Diagnosen].section[Zusatzdiagnosen].entry only Reference(MopedCondition)
* section[Diagnosen].section[Zusatzdiagnosen].author only Reference(KHOrganization)
* section[Diagnosen].section[Zusatzdiagnosen].code.coding from LKFDiagnoseTypVS
* section[Diagnosen].section[Aufnahmediagnosen].code.coding.code = #A
* section[Diagnosen].section[Aufnahmediagnosen].entry 1..
* section[Diagnosen].section[Aufnahmediagnosen].entry only Reference(MopedCondition)
* section[Diagnosen].section[Aufnahmediagnosen].author only Reference(KHOrganization)
* section[Diagnosen].section[Aufnahmediagnosen].code.coding from LKFDiagnoseTypVS

* section contains Leistungen 0..1 
* section[Leistungen].code.coding.system = Canonical(CompositionSectionsCS)
* section[Leistungen].code.coding.code = #LEI
* section[Leistungen].entry 1..
* section[Leistungen].entry only Reference(MopedProcedure)
* section[Leistungen].author only Reference(KHOrganization)
* section contains Coverages 0..1 
* section[Coverages].code.coding.system = Canonical(CompositionSectionsCS)
* section[Coverages].code.coding.code = #COV
* section[Coverages].entry 1..
* section[Coverages].entry only Reference(MopedCoverage) //TODO Selbstzahlercoverage,...
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
* section contains LKFRequests 0..1 
* section[LKFRequests].code.coding.system = Canonical(CompositionSectionsCS)
* section[LKFRequests].code.coding.code = #LKFReq
* section[LKFRequests].entry 1..
* section[LKFRequests].entry only Reference(MopedLKFRequest)
* section[LKFRequests].author only Reference(KHOrganization)
* section contains LKFResponses 0..1 
* section[LKFResponses].code.coding.system = Canonical(CompositionSectionsCS)
* section[LKFResponses].code.coding.code = #LKFResp
* section[LKFResponses].entry 1..
* section[LKFResponses].entry only Reference(MopedLKFResponse)
* section[LKFResponses].author only Reference(LGFOrganization)
* section contains ARKKostenInformation 0..1 
* section[ARKKostenInformation].code.coding.system = Canonical(CompositionSectionsCS)
* section[ARKKostenInformation].code.coding.code = #ARKReq
* section[ARKKostenInformation].entry 1..
* section[ARKKostenInformation].entry only Reference(MopedARKRequest)
* section[ARKKostenInformation].author only Reference(KHOrganization)
* section contains ARKRueckmeldung 0..1 
* section[ARKRueckmeldung].code.coding.system = Canonical(CompositionSectionsCS)
* section[ARKRueckmeldung].code.coding.code = #ARKResp
* section[ARKRueckmeldung].entry 1..
* section[ARKRueckmeldung].entry only Reference(MopedARKResponse)
* section[ARKRueckmeldung].author only Reference(LGFOrganization)
* section contains ARKStatusUpdate 0..1 
* section[ARKStatusUpdate].code.coding.system = Canonical(CompositionSectionsCS)
* section[ARKStatusUpdate].code.coding.code = #ARKPay
* section[ARKStatusUpdate].entry 1..
* section[ARKStatusUpdate].entry only Reference(MopedARKStatusUpdate)
* section[ARKStatusUpdate].author only Reference(LGFOrganization)
* section contains Observations 0..1 
* section[Observations].code.coding.system = Canonical(CompositionSectionsCS)
* section[Observations].code.coding.code = #OBS
* section[Observations].entry 1..
* section[Observations].entry only Reference(Observation)
* section[Observations].author only Reference(KHOrganization)
* section contains Hauptversicherter 0..1 
* section[Hauptversicherter].code.coding.system = Canonical(CompositionSectionsCS)
* section[Hauptversicherter].code.coding.code = #HAUPTV
* section[Hauptversicherter].entry 1..1
* section[Hauptversicherter].entry only Reference(Hauptversicherter)
* section[Hauptversicherter].author only Reference(KHOrganization)
* section contains Frageboegen 0..1 
* section[Frageboegen].code.coding.system = Canonical(CompositionSectionsCS)
* section[Frageboegen].code.coding.code = #QResp
* section[Frageboegen].entry 0..
* section[Frageboegen].entry only Reference(MopedQuestionnaireResponse)
* section[Frageboegen].author only Reference(KHOrganization)
