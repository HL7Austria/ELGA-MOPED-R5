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
* item[=].answerOption[0].valueCoding = $LKFSystem#C10 "Multi-Slice CT <= 16-zeilig"
* item[=].answerOption[+].valueCoding = $LKFSystem#C06 "Multi-Slice CT = 64-zeilig"
* item[=].answerOption[+].valueCoding = $LKFSystem#C08 "Multi-Slice CT >= 128-zeilig, Dual Source"
* item[=].answerOption[+].valueCoding = $LKFSystem#C30 "Funktionsgerät (CT)"
* item[=].answerOption[+].valueCoding = $LKFSystem#C49 "Sonstige CT-Geräte"
* item[=].answerOption[+].valueCoding = $LKFSystem#M01 "Magnetresonanz-Tomographiegerät (geschlossen) – Feldstärke < 1 Tesla"
* item[=].answerOption[+].valueCoding = $LKFSystem#M03 "Magnetresonanz-Tomographiegerät – Feldstärke <= 1,5 Tesla"
* item[=].answerOption[+].valueCoding = $LKFSystem#M04 "Magnetresonanz-Tomographiegerät (offen) – Feldstärke < 1 Tesla"
* item[=].answerOption[+].valueCoding = $LKFSystem#M05 "Magnetresonanz-Tomographiegerät (offen) – Feldstärke >= 1 Tesla"
* item[=].answerOption[+].valueCoding = $LKFSystem#M07 "Magnetresonanz-Tomographiegerät – Feldstärke = 3 Tesla"
* item[=].answerOption[+].valueCoding = $LKFSystem#M30 "Funktionsgerät (MR)"
* item[=].answerOption[+].valueCoding = $LKFSystem#M49 "Sonstige MR-Geräte"
* item[=].answerOption[+].valueCoding = $LKFSystem#H00 "Coronarangiographie – Herzkatheterarbeitsplatz"
* item[=].answerOption[+].valueCoding = $LKFSystem#H30 "Funktionsgerät (COR in Hybrid-OP)"
* item[=].answerOption[+].valueCoding = $LKFSystem#H49 "Sonstige Herzkatheterarbeitsplätze"
* item[=].answerOption[+].valueCoding = $LKFSystem#S01 "Linearbeschleuniger"
* item[=].answerOption[+].valueCoding = $LKFSystem#S02 "Linearbeschleuniger inkl. Stereotaxiezusatz"
* item[=].answerOption[+].valueCoding = $LKFSystem#S03 "Linearbeschleuniger, geeignet für intraoperativen Einsatz"
* item[=].answerOption[+].valueCoding = $LKFSystem#S30 "Funktionsgerät (STR)"
* item[=].answerOption[+].valueCoding = $LKFSystem#S49 "Sonstige Hochvolttherapiegeräte"
* item[=].answerOption[+].valueCoding = $LKFSystem#E02 "Emissions-Computertomographie, SPECT-fähig"
* item[=].answerOption[+].valueCoding = $LKFSystem#E03 "SPECT-Kamera mit Koinzidenzmessung"
* item[=].answerOption[+].valueCoding = $LKFSystem#E49 "Sonstige ECT-Geräte"
* item[=].answerOption[+].valueCoding = $LKFSystem#P02 "Positronenemissions-Tomographiegeräte – PET-Scanner"
* item[=].answerOption[+].valueCoding = $LKFSystem#P03 "PET-CT"
* item[=].answerOption[+].valueCoding = $LKFSystem#P49 "Sonstige PET-Geräte"
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