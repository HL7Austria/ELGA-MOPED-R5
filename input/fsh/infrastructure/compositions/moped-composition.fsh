Profile: MopedComposition
Parent: Composition
Description: "MOPED Profil der Composition Ressource von der alle anderen Compositions ableiten."
Title: "MOPED Composition"
* insert MappingHeaderEinfuegen()
* id ^short = "KaOrg: Datensatz-ID"
* insert legacyMapping(id, KaOrg, Datensatz-ID)
* insert ShallPopulateObligation(id, MopedDeviceActor)
* insert ShallPopulateObligation(status, MopedDeviceActor)
* insert ShallPopulateObligation(type, MopedDeviceActor)
* insert ShallPopulateObligation(date, MopedDeviceActor)
* insert ShallPopulateObligation(title, MopedDeviceActor)
* subject only Reference(MopedPatient)
* subject 1..1
* insert ShallPopulateObligation(subject, MopedDeviceActor)
* encounter only Reference(MopedEncounterA or MopedEncounterS)
* encounter 1..1
* insert ShallPopulateObligation(encounter, MopedDeviceActor)
* ^experimental = true
* useContext 1..*
* useContext ^slicing.discriminator[+].type = #value
* useContext ^slicing.discriminator[=].path = "code"
* useContext ^slicing.rules = #open
* insert ShallPopulateObligation(useContext, MopedDeviceActor)
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

* author only Reference(KHOrganization)
* insert legacyMapping(author, LKF, [[Krankenanstaltennummer/Leistungserbringer-Stammdaten-ID]])
* insert legacyMapping(author, LKF, [[Krankenanstaltennummer]])
* insert legacyMapping(author, KaOrg, [[Krankenanstaltennummer des Bundesministeriums]])
* insert legacyMapping(author, KaOrg, [[Vertragspartnernummer der Krankenanstalt]])
* insert ShallPopulateObligation(author, MopedDeviceActor)
* extension contains AnzahlVerlegungen named AnzahlVerlegungen 0..1
* insert ShallPopulateObligation(extension[AnzahlVerlegungen], MopedDeviceActor)
* extension contains AnzahlBeurlaubungen named AnzahlBeurlaubungen 0..1
* extension[AnzahlBeurlaubungen] ^short = "KaOrg: Fallnummer"
* insert legacyMapping(extension[AnzahlBeurlaubungen], KaOrg, Fallnummer)
* insert ShallPopulateObligation(extension[AnzahlBeurlaubungen], MopedDeviceActor)
* section 1..*
* section.code from CompositionSectionsVS
* section ^slicing.discriminator[+].type = #value
* section ^slicing.discriminator[=].path = "code.coding.code"
* section ^slicing.rules = #open
//* insert ShallPopulateObligation(section)
//* insert ObligationActor(section, MopedDeviceActor)
* section contains Bewegungen 0..1
* section[Bewegungen].code.coding.system = Canonical(MopedEncounterTypesCS)
* section[Bewegungen].code.coding.code = #TENC
* section[Bewegungen].entry 1..
* section[Bewegungen].entry only Reference(MopedTransferEncounterI or MopedTransferEncounterA or MopedTransferEncounterS)
* insert ShallPopulateObligation(section[Bewegungen], MopedDeviceActor)
* section contains zustaendigeSV 0..1
* section[zustaendigeSV] ^short = "LKF: Leistungszuständiger Kostenträger – Code; KaOrg: Kostenträger (leistungszuständig)"
* insert legacyMapping(section[zustaendigeSV].entry, LKF, [[Leistungszuständiger Kostenträger – Code]])
* insert legacyMapping(section[zustaendigeSV].entry, KaOrg, [[Kostenträger (leistungszuständig)]])
* insert ShallPopulateObligation(section[zustaendigeSV].entry, MopedDeviceActor)
* section[zustaendigeSV].code.coding.system = Canonical(CompositionSectionsCS)
* section[zustaendigeSV].code.coding.code = #SV
* section[zustaendigeSV].entry 1..
* section[zustaendigeSV].entry only Reference(SVOrganization)
* insert ShallPopulateObligation(section[zustaendigeSV], MopedDeviceActor)
* section contains zustaendigerLGF 1..1 
* section[zustaendigerLGF].code.coding.system = Canonical(CompositionSectionsCS)
* section[zustaendigerLGF].code.coding.code = #LGF
* section[zustaendigerLGF].entry 1..
* section[zustaendigerLGF].entry only Reference(LGFOrganization)
* insert ShallPopulateObligation(section[zustaendigerLGF], MopedDeviceActor)
* section contains zustaendigesKH 1..1 
* section[zustaendigesKH].code.coding.system = Canonical(CompositionSectionsCS)
* section[zustaendigesKH].code.coding.code = #KH
* section[zustaendigesKH].entry 1..
* section[zustaendigesKH].entry only Reference(KHOrganization)
* insert ShallPopulateObligation(section[zustaendigesKH], MopedDeviceActor)
* section contains besuchteAbteilungen 0..1 
* section[besuchteAbteilungen].code.coding.system = Canonical(CompositionSectionsCS)
* section[besuchteAbteilungen].code.coding.code = #ABT
* section[besuchteAbteilungen].entry 1..
* section[besuchteAbteilungen].entry only Reference(MopedKHOrganisationseinheit)
* section[besuchteAbteilungen].author only Reference(KHOrganization)
* insert ShallPopulateObligation(section[besuchteAbteilungen], MopedDeviceActor)
* section contains Diagnosen 0..1 
* section[Diagnosen].code.coding.system = Canonical(CompositionSectionsCS)
* section[Diagnosen].code.coding.code = #DIAG
* section[Diagnosen].entry 0..
* section[Diagnosen].entry only Reference(MopedCondition)
* insert ShallPopulateObligation(section[Diagnosen], MopedDeviceActor)
* section contains Leistungen 0..1 
* section[Leistungen].code.coding.system = Canonical(CompositionSectionsCS)
* section[Leistungen].code.coding.code = #LEI
* section[Leistungen].entry 1..
* section[Leistungen].entry only Reference(MopedProcedure)
* section[Leistungen].author only Reference(KHOrganization)
* insert ShallPopulateObligation(section[Leistungen], MopedDeviceActor)
* section contains Versichertenanspruch 0..1 
* section[Versichertenanspruch].code.coding.system = Canonical(CompositionSectionsCS)
* section[Versichertenanspruch].code.coding.code = #COV
* section[Versichertenanspruch].entry 1..
* section[Versichertenanspruch].entry only Reference(MopedCoverage or MopedCoverageSelbstzahler)
* section[Versichertenanspruch].author only Reference(KHOrganization)
* insert ShallPopulateObligation(section[Versichertenanspruch], MopedDeviceActor)
* section contains VAERequests 0.. 
* section[VAERequests].code.coding.system = Canonical(MopedClaimTypeCS)
* section[VAERequests].code.coding.code = #VAEREQ
* section[VAERequests].entry 1..
* section[VAERequests].entry only Reference(MopedVAERequestInitial or MopedVAERequestVerlaengerung)
* section[VAERequests].author only Reference(KHOrganization)
* insert ShallPopulateObligation(section[VAERequests], MopedDeviceActor)
* section contains VAEResponses 0.. 
* section[VAEResponses].code.coding.system = Canonical(MopedClaimTypeCS)
* section[VAEResponses].code.coding.code = #VAERESP
* section[VAEResponses].entry 1..
* section[VAEResponses].entry only Reference(MopedVAEResponse)
* section[VAEResponses].author only Reference(SVOrganization)
* insert ShallPopulateObligation(section[VAEResponses], MopedDeviceActor)
* section contains LKFRequests 0..1 
* section[LKFRequests].code.coding.system = Canonical(MopedClaimTypeCS)
* section[LKFRequests].code.coding.code = #LKFREQ
* section[LKFRequests].entry 1..
* section[LKFRequests].entry only Reference(MopedLKFRequest)
* section[LKFRequests].author only Reference(KHOrganization)
* insert ShallPopulateObligation(section[LKFRequests], MopedDeviceActor)
* section contains LKFResponses 0..1 
* section[LKFResponses].code.coding.system = Canonical(MopedClaimTypeCS)
* section[LKFResponses].code.coding.code = #LKFRESP
* section[LKFResponses].entry 1..
* section[LKFResponses].entry only Reference(MopedLKFResponse)
* section[LKFResponses].author only Reference(LGFOrganization)
* insert ShallPopulateObligation(section[LKFResponses], MopedDeviceActor)
* section contains ARKKostenInformation 0..1 
* section[ARKKostenInformation].code.coding.system = Canonical(MopedClaimTypeCS)
* section[ARKKostenInformation].code.coding.code = #ARKREQ
* section[ARKKostenInformation].entry 1..
* section[ARKKostenInformation].entry only Reference(MopedARKRequest)
* section[ARKKostenInformation].author only Reference(KHOrganization)
* insert ShallPopulateObligation(section[ARKKostenInformation], MopedDeviceActor)
* section contains ARKRueckmeldung 0..1 
* section[ARKRueckmeldung].code.coding.system = Canonical(MopedClaimTypeCS)
* section[ARKRueckmeldung].code.coding.code = #ARKRESP
* section[ARKRueckmeldung].entry 1..
* section[ARKRueckmeldung].entry only Reference(MopedARKResponse)
* section[ARKRueckmeldung].author only Reference(LGFOrganization)
* insert ShallPopulateObligation(section[ARKRueckmeldung], MopedDeviceActor)
* section contains ARKStatusUpdate 0..1 
* section[ARKStatusUpdate].code.coding.system = Canonical(CompositionSectionsCS)
* section[ARKStatusUpdate].code.coding.code = #ARKPAY
* section[ARKStatusUpdate].entry 1..
* section[ARKStatusUpdate].entry only Reference(MopedARKStatusUpdate)
* section[ARKStatusUpdate].author only Reference(LGFOrganization)
* insert ShallPopulateObligation(section[ARKStatusUpdate], MopedDeviceActor)
* section contains Entbindung 0..1 
* section[Entbindung].code.coding.system = Canonical(CompositionSectionsCS)
* section[Entbindung].code.coding.code = #OBS
* section[Entbindung].entry 1..
* section[Entbindung].entry only Reference(Observation)
* section[Entbindung].author only Reference(KHOrganization)
* insert ShallPopulateObligation(section[Entbindung], MopedDeviceActor)
* section contains Hauptversicherter 0..1 
* section[Hauptversicherter].code.coding.system = Canonical(CompositionSectionsCS)
* section[Hauptversicherter].code.coding.code = #HAUPTV
* section[Hauptversicherter].entry 1..1
* section[Hauptversicherter].entry only Reference(Hauptversicherter)
* section[Hauptversicherter].author only Reference(KHOrganization)
* insert ShallPopulateObligation(section[Hauptversicherter], MopedDeviceActor)
* section contains Frageboegen 0..1 
* section[Frageboegen].code.coding.system = Canonical(CompositionSectionsCS)
* section[Frageboegen].code.coding.code = #QRESP
* section[Frageboegen].entry 0..
* section[Frageboegen].entry only Reference(MopedQuestionnaireResponseFallbezogen)
* section[Frageboegen].author only Reference(KHOrganization)
* insert ShallPopulateObligation(section[Frageboegen], MopedDeviceActor)
* section contains Kommunikation 0..1 
* section[Kommunikation].code.coding.system = Canonical(CompositionSectionsCS)
* section[Kommunikation].code.coding.code = #COMM
* section[Kommunikation].entry 0..
//* section[Kommunikation].entry only Reference(MopedCommunication or MopedCommunicationResponse) //TBD Profile für die generische Kommunikation anlegen
* section[Kommunikation].author only Reference(KHOrganization or SVOrganization or LGFOrganization)
* insert ShallPopulateObligation(section[Kommunikation], MopedDeviceActor)