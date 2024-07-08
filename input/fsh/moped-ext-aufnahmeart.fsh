Extension: Aufnahmeart
Id: moped-ext-aufnahme-art
Title: "Aufnahmeart"
Description: "MOPED Extension für die Art der Aufnahme."
Context: MOPEDAdmissionEncounter
* value[x] 0..1
* value[x] only code
* value[x] from $AufnahmeArt (required)
* value[x] ^binding.description = "Code für die Art der Aufnahme"