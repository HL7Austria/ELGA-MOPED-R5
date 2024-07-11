Extension: Zugangsart
Id: moped-ext-zugangsart
Title: "Zugangsart"
Description: "MOPED Extension für die Art des Zugangs."
Context: MOPEDEncounter
* value[x] 0..1
* value[x] only code
* value[x] from $ZugangsArt (required)
* value[x] ^binding.description = "Code für die Art des Zugangs"