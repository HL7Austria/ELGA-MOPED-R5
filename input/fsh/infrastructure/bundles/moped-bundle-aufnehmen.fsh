Profile: MopedAufnehmenBundleKH
Parent: MopedInputBundleKH
Title: "MOPED Aufnehmen Bundle KH"
Description: """Bundle für die Input-Ressourcen beim Aufnehmen eines Patienten"""
* entry[Aufenthalt] 1..1
* entry[Aufenthalt].resource only MopedEncounterAufnahmeS //TBD nach Ausarbeitung des ambulanten Falls den generischen "MopedEncounter" ersetzen durch "MopedEncounterAufnahmeA or MopedEncounterAufnahmeS"  
* entry[Aufenthalt].request.method = #POST
* entry[Patient] 1..1
* entry[Aufenthalt].request.method = #POST
* entry[Diagnosen] 1.. 
* entry[Diagnosen] ^short = "Aufnahmediagnose(n)"
* entry[Verlegungen] 1..
* entry[Verlegungen] ^short = "Station auf die der Patient initial aufgenommen wird und evtl. weitere"

