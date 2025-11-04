Instance: LKFK16Questionnaire
InstanceOf: Questionnaire
Usage: #example
* title = "LKF K16 Questionnaire"
* status = #active
* description = "LKF K16 Questionnaire - Kalkulatorischer Anhang – Ausgewählte Kosten"
* item[0].type = #string
* item[=].maxLength = 3
* item[=].linkId = "satzartenkennzeichen"
* item[=].text = "Satzartenkennzeichen"
* item[=].readOnly = true
* item[=].initial.valueString = "K16"
* item[+].type = #integer
* item[=].maxLength = 4
* item[=].linkId = "jahr"
* item[=].text = "Jahr"
* item[+].type = #string
* item[=].maxLength = 6
* item[=].linkId = "krankenanstaltennummer"
* item[=].text = "Krankenanstaltennummer"
* item[+].type = #coding
* item[=].linkId = "kostenindex"
* item[=].text = "Kostenindex"
* item[=].answerOption[0].valueCoding = #10 "Blut"
* item[=].answerOption[+].valueCoding = #20 "Chirurgisches Nahtmaterial"
* item[=].answerOption[+].valueCoding = #30 "Implantate und Prothesen (Summe)"
* item[=].answerOption[+].valueCoding = #31 "Implantate und Prothesen für Gefäß- und Herzchirurgie"
* item[=].answerOption[+].valueCoding = #32 "Implantate und Prothesen für Knochenchirurgie"
* item[=].answerOption[+].valueCoding = #33 "Implantate und Prothesen für Neurochirurgie"
* item[=].answerOption[+].valueCoding = #34 "Körperersatzteile, andere"
* item[=].answerOption[+].valueCoding = #35 "Implantate für HNO"
* item[+].type = #decimal
* item[=].linkId = "kosten"
* item[=].maxLength = 10
* item[=].text = "Kosten"