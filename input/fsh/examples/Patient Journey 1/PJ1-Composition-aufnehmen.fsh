Instance: PJ1CompositionAufnehmen
InstanceOf: MopedAufnahmeComposition
Description: "PJ1 Beispiel der Composition Ressource nach $aufnehmen"
Title: "MOPED PJ1 Composition nach $aufnehmen"
* subject = Reference(PJ1Patient)
* encounter = Reference(PJ1EncounterAufnahme)
* type = http://loinc.org#34133-9
* useContext[Workflow].code = http://terminology.hl7.org/CodeSystem/usage-context-type#workflow
* useContext[Workflow].valueCodeableConcept = WorkflowStatusCS#Aufnahme-freigegeben
* status = #partial
* date = "2025-03-31"
* title = "PJ1CompositionNachAufnehmen"
* author = Reference(OrganizationHerzJesuKrankenhaus)
* extension[AnzahlVerlegungen].valueUnsignedInt = 1
* extension[AnzahlBeurlaubungen].valueUnsignedInt = 0

* encounter = Reference(PJ1EncounterAufnahme)

* section[zustaendigeSV].code.coding.system = Canonical(CompositionSectionsCS)
* section[zustaendigeSV].code.coding.code = #SV
* section[zustaendigeSV].entry = Reference(SV11)

* section[zustaendigerLGF].code.coding.system = Canonical(CompositionSectionsCS)
* section[zustaendigerLGF].code.coding.code = #LGF
* section[zustaendigerLGF].entry = Reference(OrganizationLGF)

* section[zustaendigesKH].code.coding.system = Canonical(CompositionSectionsCS)
* section[zustaendigesKH].code.coding.code = #KH
* section[zustaendigesKH].entry = Reference(OrganizationHerzJesuKrankenhaus)

* section[Diagnosen].code.coding.system = Canonical(CompositionSectionsCS)
* section[Diagnosen].code.coding.code = #DIAG
* section[Diagnosen].author = Reference(OrganizationHerzJesuKrankenhaus)
* section[Diagnosen].entry = Reference(PJ1Condition1)

