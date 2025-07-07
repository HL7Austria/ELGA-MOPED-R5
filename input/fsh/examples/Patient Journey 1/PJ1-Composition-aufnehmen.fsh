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
* extension[Fondsrelevanz].valueCoding = FondsrelevanzCS#J
* extension[SVAbrechnungsquartal].extension[year].valueDate = "2025"
* extension[SVAbrechnungsquartal].extension[quater].valuePositiveInt = 1
* section[MopedEncounter].code.coding.system = Canonical(MopedEncounterTypesCS)
* section[MopedEncounter].code.coding.code = #ENC
* section[MopedEncounter].entry = Reference(PJ1EncounterAufnahme)
* section[MopedEncounter].author =  Reference(OrganizationHerzJesuKrankenhaus)

* section[TransferEncounter].code.coding.system = Canonical(MopedEncounterTypesCS)
* section[TransferEncounter].code.coding.code = #TENC
* section[TransferEncounter].entry = Reference(PJ1TransferEncounter1Aufnahme)

* section[zustaendigeSV].code.coding.system = Canonical(CompositionSectionsCS)
* section[zustaendigeSV].code.coding.code = #SV
* section[zustaendigeSV].entry = Reference(oegk-wien)

* section[zustaendigerLGF].code.coding.system = Canonical(CompositionSectionsCS)
* section[zustaendigerLGF].code.coding.code = #LGF
* section[zustaendigerLGF].entry = Reference(OrganizationLGF)

* section[zustaendigesKH].code.coding.system = Canonical(CompositionSectionsCS)
* section[zustaendigesKH].code.coding.code = #KH
* section[zustaendigesKH].entry = Reference(OrganizationHerzJesuKrankenhaus)

* section[besuchteAbteilungen].code.coding.system = Canonical(CompositionSectionsCS)
* section[besuchteAbteilungen].code.coding.code = #ABT
* section[besuchteAbteilungen].entry = Reference(AbteilungHerzJesu1)
* section[besuchteAbteilungen].author = Reference(OrganizationHerzJesuKrankenhaus)

* section[Coverages].code.coding.system = Canonical(CompositionSectionsCS)
* section[Coverages].code.coding.code = #COV
* section[Coverages].entry = Reference(PJ1Coverage)
* section[Coverages].author = Reference(OrganizationHerzJesuKrankenhaus)

