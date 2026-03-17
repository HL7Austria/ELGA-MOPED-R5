Profile: MopedUpdateBundleKH
Parent: MopedInputBundleKH
Title: "MOPED Update Bundle KH"
Description: """Bundle für die Input-Ressourcen beim Update von Informationen zu einem Fall"""

* entry[Aufenthalt].resource only MopedEncounter //TBD nach Entscheidung zu ambulantem Fall den generischen "MopedEncounter" ersetzen durch "MopedEncounterA or MopedEncounterS"  
* entry[Aufenthalt].request.method = http://hl7.org/fhir/http-verb#PUT
* entry[Aufenthalt].request.method ^short = "PUT"
* entry[Patient].resource only MopedPatient
* entry[Patient].request.method = http://hl7.org/fhir/http-verb#PUT
* entry[Patient].request.method ^short = "PUT"
