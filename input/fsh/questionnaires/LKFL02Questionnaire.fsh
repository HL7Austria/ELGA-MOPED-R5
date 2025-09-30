Instance: LKFL02Questionnaire
InstanceOf: Questionnaire
Usage: #example
* title = "LKF L02 Questionnaire"
* status = #active
* description = "LKF L02 Questionnaire - Abrechnungsrelevante Kostenträger"
* item[0].type = #string
* item[=].maxLength = 3
* item[=].linkId = "satzartenkennzeichen"
* item[=].text = "Satzartenkennzeichen"
* item[=].readOnly = true
* item[=].initial.valueString = "L02"
* item[+].type = #integer
* item[=].maxLength = 4
* item[=].linkId = "jahr"
* item[=].text = "Jahr"
* item[+].type = #string
* item[=].maxLength = 6
* item[=].linkId = "krankenanstaltennummer"
* item[=].text = "Krankenanstaltennummer"
* item[+].type = #string
* item[=].maxLength = 2
* item[=].linkId = "kostentraeger-code"
* item[=].text = "Kostenträger – Code"
* item[+].type = #coding
* item[=].linkId = "lgf-relevanz"
* item[=].text = "LGF – Relevanz"
* item[=].answerOption[0].valueCoding = #J "Ja – LKF-relevant"
* item[=].answerOption[+].valueCoding = #N "Nein – nicht LKF-relevant"