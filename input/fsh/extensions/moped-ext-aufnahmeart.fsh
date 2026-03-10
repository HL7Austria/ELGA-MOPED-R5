Extension: Aufnahmeart
Id: moped-ext-aufnahmeart
Title: "Aufnahmeart"
Description: "MOPED Extension für die Aufnahmeart."
Context: MopedEncounter.admission
* value[x] 1..1
* value[x] only Coding
* value[x] from AufnahmeartVS (required)
* value[x] ^binding.description = "Code für die Art der Aufnahme"
