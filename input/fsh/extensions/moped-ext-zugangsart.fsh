Extension: Zugangsart
Id: moped-ext-zugangsart
Title: "Zugangsart"
Description: "MOPED Extension für die Art des Zugangs."
Context: MOPEDEncounter.admission
* value[x] 0..1
* value[x] only Coding
* value[x] from ZugangsartVS (required)
* value[x] ^binding.description = "Code für die Art des Zugangs"