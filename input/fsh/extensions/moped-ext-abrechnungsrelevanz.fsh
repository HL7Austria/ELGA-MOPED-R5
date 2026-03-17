
Extension:    AbrechnungsRelevanz
Id:           moped-ext-AbrechnungsRelevanz
Title:        "Medizinische Leistung - Abrechnungsrelevanz" 
Description:  "Hier ist anzugeben, ob die medizinische Leistung bei der Bepunktung des ambulanten Besuchs/stationären Aufenthalts (Satzart X01) zu berücksichtigen ist."
Context: MopedLKFRequest.procedure
* value[x] 1..1
* value[x] only Coding
* value[x] from AbrechnungsRelevanzVS (required)
