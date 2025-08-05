Profile: MopedAufnehmenBundleKH
Parent: MopedUpdateBundleKH
Title: "MOPED Aufnehmen Bundle KH"
Description: """Bundle für die Input-Ressourcen beim Aufnehmen eines Patienten"""
* entry[Aufenthalt] 1..1
* entry[Aufenthalt].resource only MopedEncounterAufnahmeS //TBD nach Ausarbeitung des ambulanten Falls den generischen "MopedEncounter" ersetzen durch "MopedEncounterAufnahmeA or MopedEncounterAufnahmeS"  
* entry[Patient] 1..1
* entry[Diagnosen] 1.. 
* entry[Diagnosen] ^short = "Aufnahmediagnose(n)"
* entry[Verlegungen] 1..
* entry[Verlegungen] ^short = "Station auf die der Patient initial aufgenommen wird und evtl. weitere"

