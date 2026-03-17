ValueSet: MopedEncounterStatusEntlassungVS
Title: "Encounter Status bei Entlassung"
Description: "Varianten des Encounter Status bei Entlassung"
* ^experimental = true
* http://hl7.org/fhir/encounter-status#discharged
* http://hl7.org/fhir/encounter-status#completed

ValueSet: MopedEncounterStatusAufnahmeVS
Title: "Encounter Status bei der Aufnahme"
Description: "Varianten des Encounter Status bei der Aufnahme"
* ^experimental = true
* http://hl7.org/fhir/encounter-status#planned
* http://hl7.org/fhir/encounter-status#in-progress


ValueSet: MopedEncounterStatusVS
Title: "Encounter Status in Moped"
Description: "Varianten des Encounter Status bei Aufenthalten in Moped"
* ^experimental = true
* include codes from valueset MopedEncounterStatusAufnahmeVS
* include codes from valueset MopedEncounterStatusEntlassungVS