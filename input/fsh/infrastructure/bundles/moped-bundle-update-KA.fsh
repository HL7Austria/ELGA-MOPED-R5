Profile: MopedUpdateBundleKA
Parent: MopedInputBundleKA
Title: "MOPED Update Bundle KA"
Description: """Bundle für die Input-Ressourcen beim Update von Informationen zu einem Fall"""

* entry[Aufenthalt].resource only MopedEncounter //TBD nach Entscheidung zu ambulantem Fall den generischen "MopedEncounter" ersetzen durch "MopedEncounterA or MopedEncounterS"  
* entry[Aufenthalt].request.method = $HTTPVerb#PUT
* entry[Aufenthalt].request.method ^short = "PUT"
* entry[Patient].resource only MopedPatient
* entry[Patient].request.method = $HTTPVerb#PUT
* entry[Patient].request.method ^short = "PUT"
