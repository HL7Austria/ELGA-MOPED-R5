Instance: LKFK12Questionnaire
InstanceOf: Questionnaire
Usage: #example
* title = "LKF K12 Questionnaire"
* status = #active
* description = "LKF K12 Questionnaire - Sammel-Kostennachweis Detailblätter"
* item[0].type = #string
* item[=].maxLength = 3
* item[=].linkId = "satzartenkennzeichen"
* item[=].text = "Satzartenkennzeichen"
* item[=].readOnly = true
* item[=].initial.valueString = "K12"
* item[+].type = #integer
* item[=].maxLength = 4
* item[=].linkId = "jahr"
* item[=].text = "Jahr"
* item[+].type = #string
* item[=].maxLength = 6
* item[=].linkId = "krankenanstaltennummer"
* item[=].text = "Krankenanstaltennummer"
* item[+].type = #coding
* item[=].linkId = "blattnummer"
* item[=].text = "Blattnummer"
* item[=].answerOption[0].valueCoding = #01/11 "Personalkosten (Kostenartennummer 111–119)"
* item[=].answerOption[+].valueCoding = #01/12 "Personalkosten (Kostenartennummer 121–129)"
* item[=].answerOption[+].valueCoding = #01/13 "Personalkosten (Kostenartennummer 131–139)"
* item[+].type = #integer
* item[=].maxLength = 3
* item[=].linkId = "mlv-nummer"
* item[=].text = "MLV-Nummer"
* item[+].type = #integer
* item[=].maxLength = 10
* item[=].linkId = "aufwand-finanzbuchführung"
* item[=].text = "Aufwand gemäß Finanzbuchführung"
* item[+].type = #integer
* item[=].maxLength = 10
* item[=].linkId = "neutraler-aufwand"
* item[=].text = "Neutraler Aufwand"
* item[+].type = #integer
* item[=].maxLength = 10
* item[=].linkId = "kalkulatorische-kosten"
* item[=].text = "Kalkulatorische Kosten"
* item[+].type = #integer
* item[=].maxLength = 10
* item[=].linkId = "kosten"
* item[=].text = "Kosten"