Instance: LKFG02Questionnaire
InstanceOf: Questionnaire
Usage: #example
* title = "LKF G02 Questionnaire"
* status = #active
* description = "G02 Questionnaire - Großgeräteleistungsdaten"
* item[0].type = #string
* item[=].maxLength = 3
* item[=].linkId = "satzartenkennzeichen"
* item[=].text = "Satzartenkennzeichen"
* item[=].readOnly = true
* item[=].initial.valueString = "G02"
* item[+].type = #integer
* item[=].maxLength = 4
* item[=].linkId = "jahr"
* item[=].text = "Jahr"
* item[+].type = #string
* item[=].maxLength = 6
* item[=].linkId = "krankenanstaltennummer"
* item[=].text = "Krankenanstaltennummer"
* item[+].type = #string
* item[=].maxLength = 4
* item[=].linkId = "grosgeraet-positionsnummer"
* item[=].text = "Großgerät – Positionsnummer"
* item[+].type = #coding
* item[=].linkId = "grosgeraet-leistungsindex"
* item[=].text = "Großgerät – Leistungsindex"
* item[=].answerOption[0].valueCoding = #C50 "Computertomographie (CT) – Alle Leistungen"
* item[=].answerOption[+].valueCoding = #M50 "Magnetresonanz-Tomographie (MR) – Alle Leistungen"
* item[=].answerOption[+].valueCoding = #H51 "Coronarangiographie (COR)"
* item[=].answerOption[+].valueCoding = #H52 "Coronarangiographie - PTCA ein Gefäß"
* item[=].answerOption[+].valueCoding = #H53 "Coronarangiographie - PTCA mehr als ein Gefäß"
* item[=].answerOption[+].valueCoding = #H54 "Coronarangiographie - Stentimplantation"
* item[=].answerOption[+].valueCoding = #H55 "Coronarangiographie - Ablation"
* item[=].answerOption[+].valueCoding = #H56 "Coronarangiographie - Elektrophysiologie"
* item[=].answerOption[+].valueCoding = #H99 "Coronarangiographie - Sonstige Eingriffe bei strukturellen Herzerkrankungen"
* item[=].answerOption[+].valueCoding = #S54 "Strahlentherapie - Bestrahlungstermine für strahlentherapeutische Leistungen"
* item[=].answerOption[+].valueCoding = #S55 "Strahlentherapie - Bestrahlungstermine für radiochirurgische Leistungen"
* item[=].answerOption[+].valueCoding = #S56 "Strahlentherapie - Bestrahlungstermine für intensitätsmodulierte Strahlentherapie (IMRT)"
* item[=].answerOption[+].valueCoding = #E51 "Emissions-Computertomographie (ECT) – Untersuchungen mit planarer Technik"
* item[=].answerOption[+].valueCoding = #E52 "Emissions-Computertomographie (ECT) – Untersuchungen mit Schichttechnik"
* item[=].answerOption[+].valueCoding = #P51 "Positronenemissions-Tomographie (PET) – Untersuchungen mit 18-FDG"
* item[=].answerOption[+].valueCoding = #P99 "Positronenemissions-Tomographie (PET) – Untersuchungen mit sonstigen Tracern"
* item[+].type = #integer
* item[=].maxLength = 10
* item[=].linkId = "ambulante-frequenzen"
* item[=].text = "Ambulante Frequenzen"
* item[+].type = #integer
* item[=].maxLength = 10
* item[=].linkId = "stationaere-frequenzen"
* item[=].text = "Stationäre Frequenzen"
* item[+].type = #integer
* item[=].maxLength = 4
* item[=].linkId = "durchschnittliche-dauer-je-frequenz"
* item[=].text = "Durchschnittliche Dauer je Frequenz in Minuten"