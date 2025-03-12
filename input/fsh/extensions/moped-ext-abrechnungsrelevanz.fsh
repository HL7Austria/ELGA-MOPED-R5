
Extension:    AbrechnungsRelevanz
Id:           moped-ext-AbrechnungsRelevanz
Title:        "Medizinische Leistung - Abrechnungsrelevanz" 
Description:  "Hier ist anzugeben, ob die medizinische Leistung bei der Bepunktung des ambulanten Besuchs/stationären Aufenthalts (Satzart X01) zu berücksichtigen ist."
Context: MopedLKFRequest.procedure
* value[x] 0..1
* value[x] only Coding
* value[x] from AbrechnungsRelevanzVS (required)
* . ^definition =  "\"Medizinische Leistung - Abrechnungsrelevanz:\" Hier ist anzugeben, ob die medizinische Leistung bei der Bepunktung des ambulanten Besuchs/stationären Aufenthalts (Satzart X01) zu berücksichtigen ist."
