Instance: LKFL03Questionnaire
InstanceOf: Questionnaire
Usage: #example
* title = "LKF L03 Questionnaire"
* status = #active
* description = "LKF L03 Questionnaire - Exklusionen medizinischer Leistungen"
* item[0].type = #string
* item[=].maxLength = 3
* item[=].linkId = "satzartenkennzeichen"
* item[=].text = "Satzartenkennzeichen"
* item[=].readOnly = true
* item[=].initial.valueString = "L03"
* item[+].type = #integer
* item[=].maxLength = 4
* item[=].linkId = "jahr"
* item[=].text = "Jahr"
* item[+].type = #string
* item[=].maxLength = 6
* item[=].linkId = "krankenanstaltennummer"
* item[=].text = "Krankenanstaltennummer"
* item[+].type = #string
* item[=].maxLength = 10
* item[=].linkId = "medizinische-leistung-code"
* item[=].text = "Medizinische Leistung – Code"