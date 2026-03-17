CodeSystem: Aufnahmeart2CS
Title: "Aufnahmeart2 des Patienten"
Description: "CodeSystem für die Aufnahmeart des Patienten"
* ^status = #active
* ^experimental = true
* ^caseSensitive = true
* #P "geplante stationäre Aufnahme/geplanter ambulanter Besuch (mit vorhergehender Terminvereinbarung, Richtwert: mindestens 24 Stunden)"
* #A "akute stationäre Aufnahme/akuter ambulanter Besuch (ohne vorhergehende Terminvereinbarung)"
* #K "stationäre Aufnahme/ambulanter Besuch aus Kapazitätsgründen zugewiesen"
* #S "Krisenfall – akute Aufnahme/akuter ambulanter Besuch aufgrund von Epidemien/Großschadensereignissen"

ValueSet: Aufnahmeart2VS
Title: "Aufnahmeart2 des Patienten"
Description: "ValueSet für die Aufnahmeart des Patienten"
* ^experimental = true
* include codes from system Aufnahmeart2CS