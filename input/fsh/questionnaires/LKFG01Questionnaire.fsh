Instance: LKFG01Questionnaire
InstanceOf: Questionnaire
Usage: #example
* title = "LKF G01 Questionnaire"
* status = #active
* description = "G01 Questionnaire - Großgerätebasisdaten"
* item[0].type = #string
* item[=].maxLength = 3
* item[=].linkId = "satzartenkennzeichen"
* item[=].text = "Satzartenkennzeichen"
* item[=].readOnly = true
* item[=].initial.valueString = "G01"
* item[+].type = #integer
* item[=].maxLength = 4
* item[=].linkId = "jahr"
* item[=].text = "Jahr"
* item[+].type = #string
* item[=].maxLength = 6
* item[=].linkId = "krankenanstaltennummer"
* item[=].text = "Krankenanstaltennummer"
* item[+].type = #integer
* item[=].maxLength = 8
* item[=].linkId = "funktionscode"
* item[=].text = "Funktionscode"
* item[+].type = #string
* item[=].maxLength = 4
* item[=].linkId = "grosgeraet_positionsnummer"
* item[=].text = "Großgerät – Positionsnummer"
* item[+].type = #coding
* item[=].linkId = "grosgeraet_art"
* item[=].text = "Großgerät – Art (Geräteindex)"
* item[=].answerOption[0].valueCoding = #C10 "Multi-Slice CT <= 16-zeilig"
* item[=].answerOption[+].valueCoding = #C06 "Multi-Slice CT = 64-zeilig"
* item[=].answerOption[+].valueCoding = #C08 "Multi-Slice CT >= 128-zeilig, Dual Source"
* item[=].answerOption[+].valueCoding = #C30 "Funktionsgerät (CT)"
* item[=].answerOption[+].valueCoding = #C49 "Sonstige CT-Geräte"
* item[=].answerOption[+].valueCoding = #M01 "Magnetresonanz-Tomographiegerät (geschlossen) – Feldstärke < 1 Tesla"
* item[=].answerOption[+].valueCoding = #M03 "Magnetresonanz-Tomographiegerät – Feldstärke <= 1,5 Tesla"
* item[=].answerOption[+].valueCoding = #M04 "Magnetresonanz-Tomographiegerät (offen) – Feldstärke < 1 Tesla"
* item[=].answerOption[+].valueCoding = #M05 "Magnetresonanz-Tomographiegerät (offen) – Feldstärke >= 1 Tesla"
* item[=].answerOption[+].valueCoding = #M07 "Magnetresonanz-Tomographiegerät – Feldstärke = 3 Tesla"
* item[=].answerOption[+].valueCoding = #M30 "Funktionsgerät (MR)"
* item[=].answerOption[+].valueCoding = #M49 "Sonstige MR-Geräte"
* item[=].answerOption[+].valueCoding = #H00 "Coronarangiographie – Herzkatheterarbeitsplatz"
* item[=].answerOption[+].valueCoding = #H30 "Funktionsgerät (COR in Hybrid-OP)"
* item[=].answerOption[+].valueCoding = #H49 "Sonstige Herzkatheterarbeitsplätze"
* item[=].answerOption[+].valueCoding = #S01 "Linearbeschleuniger"
* item[=].answerOption[+].valueCoding = #S02 "Linearbeschleuniger inkl. Stereotaxiezusatz"
* item[=].answerOption[+].valueCoding = #S03 "Linearbeschleuniger, geeignet für intraoperativen Einsatz"
* item[=].answerOption[+].valueCoding = #S30 "Funktionsgerät (STR)"
* item[=].answerOption[+].valueCoding = #S49 "Sonstige Hochvolttherapiegeräte"
* item[=].answerOption[+].valueCoding = #E02 "Emissions-Computertomographie, SPECT-fähig"
* item[=].answerOption[+].valueCoding = #E03 "SPECT-Kamera mit Koinzidenzmessung"
* item[=].answerOption[+].valueCoding = #E49 "Sonstige ECT-Geräte"
* item[=].answerOption[+].valueCoding = #P02 "Positronenemissions-Tomographiegeräte – PET-Scanner"
* item[=].answerOption[+].valueCoding = #P03 "PET-CT"
* item[=].answerOption[+].valueCoding = #P49 "Sonstige PET-Geräte"
* item[+].type = #string
* item[=].maxLength = 100
* item[=].linkId = "grosgeraet_type"
* item[=].text = "Großgerät – Type"
* item[+].type = #string
* item[=].maxLength = 100
* item[=].linkId = "hersteller"
* item[=].text = "Hersteller"
* item[+].type = #integer
* item[=].maxLength = 4
* item[=].linkId = "baujahr"
* item[=].text = "Baujahr"
* item[+].type = #integer
* item[=].maxLength = 10
* item[=].linkId = "anschaffungskosten"
* item[=].text = "Anschaffungskosten"
* item[+].type = #string
* item[=].maxLength = 200
* item[=].linkId = "betriebszeiten"
* item[=].text = "Betriebszeiten"
* item[+].type = #string
* item[=].maxLength = 200
* item[=].linkId = "kommentar"
* item[=].text = "Kommentar"