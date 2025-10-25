Instance: LKFK13Questionnaire
InstanceOf: Questionnaire
Usage: #example
* title = "LKF K13 Questionnaire"
* status = #draft
* description = "LKF K13 Questionnaire - Kalkulatorischer Anhang – Kostenminderungen"
* item[0].type = #string
* item[=].maxLength = 3
* item[=].linkId = "satzartenkennzeichen"
* item[=].text = "Satzartenkennzeichen"
* item[=].readOnly = true
* item[=].initial.valueString = "K13"
* item[+].type = #integer
* item[=].maxLength = 4
* item[=].linkId = "jahr"
* item[=].text = "Jahr"
* item[+].type = #string
* item[=].maxLength = 6
* item[=].linkId = "krankenanstaltennummer"
* item[=].text = "Krankenanstaltennummer"
* item[+].type = #coding
* item[=].linkId = "index-kostenminderungsart"
* item[=].text = "Index Kostenminderungsart"
* item[=].answerOption[0].valueCoding = #A "GSBG-Beihilfen"
* item[=].answerOption[+].valueCoding = #B "Klinischer Mehraufwand"
* item[=].answerOption[+].valueCoding = #C "Kostenersätze für Schulen und Akademien"
* item[+].type = #integer
* item[=].maxLength = 10
* item[=].linkId = "kostenminderungen"
* item[=].text = "Kostenminderungen"