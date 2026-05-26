Profile: AtMopedBundleAufnehmenKA
Parent: AtMopedBundleInputKA
Id: at-moped-bundle-aufnehmen-KA
Title: "AT MOPED Bundle $aufnehmen KA Profil"
Description: """MOPED Profil der Bundle Ressource für die Input-Ressourcen beim Aufnehmen eines Patienten"""
* entry[Aufenthalt] 1..1
* entry[Aufenthalt].resource only AtMopedEncounterAufenthaltStationaerBasis or AtMopedEncounterBesuchAmbulantBasis //TBD nach Ausarbeitung des ambulanten Falls den generischen "MopedEncounter" ersetzen durch "MopedEncounterAufnahmeA or MopedEncounterAufnahmeS"  
* entry[Aufenthalt].request.method = #POST
* entry[Patient] 1..1
* entry[Aufenthalt].request.method = #POST
* entry[Diagnosen] 1.. 
* entry[Diagnosen] ^short = "Aufnahmediagnose(n)"
* entry[Bewegungen] 1..
* entry[Bewegungen] ^short = "Station auf die der Patient initial aufgenommen wird und evtl. weitere"

