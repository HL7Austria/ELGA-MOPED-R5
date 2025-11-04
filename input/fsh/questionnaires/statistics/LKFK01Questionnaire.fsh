Instance: LKFK01Questionnaire
InstanceOf: Questionnaire
Usage: #example
* title = "LKF K01 Questionnaire"
* status = #active
* description = "K01 Questionnaire - den Kostenstellenplan"
* item[0].type = #string
* item[=].maxLength = 3
* item[=].linkId = "satzartenkennzeichen"
* item[=].text = "Satzartenkennzeichen"
* item[=].readOnly = true
* item[=].initial.valueString = "K01"
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
* item[=].maxLength = 8
* item[=].linkId = "interne-kostenstellennummer"
* item[=].text = "Interne Kostenstellennummer"
* item[+].type = #string
* item[=].maxLength = 50
* item[=].linkId = "interne-kostenstellenbezeichnung"
* item[=].text = "Interne Kostenstellenbezeichnung"
* item[+].type = #coding
* item[=].linkId = "spezielle-organisationsform"
* item[=].text = "Spezielle Organisationsform"
* item[=].answerOption[0].valueCoding = #A "Abteilung"
* item[=].answerOption[+].valueCoding = #R "Referenzzentrum – ohne Versorgungsstufengliederung"
* item[=].answerOption[+].valueCoding = #Z "Referenzzentrum – höchste Versorgungsstufe"