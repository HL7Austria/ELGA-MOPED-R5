CodeSystem: MopedEncounterParticipantTypesCS
Title: "Moped Encounter Participant Type CodeSystem"
Description: "CodeSystem für die Moped Encounter Participant Types"
* ^status = #active
* ^experimental = true
* ^caseSensitive = true
* #fachlich "Fachlich"
* #pflegerisch "Pflegerisch"


ValueSet: MopedEncounterParticipantTypesVS
Title: "Moped Encounter Participant Type ValueSet"
Description: "ValueSet für die Moped Encounter Participant Types"
* ^experimental = true
* include codes from system MopedEncounterParticipantTypesCS