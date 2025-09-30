Instance: LKFK04Questionnaire
InstanceOf: Questionnaire
Usage: #example
* title = "LKF K04 Questionnaire"
* status = #active
* description = "K04 Questionnaire - KA-Statistik (Personal-Vollzeitäquivalente nach Funktionsgruppen und Dienstverhältnis)"
* item[0].type = #string
* item[=].maxLength = 3
* item[=].linkId = "satzartenkennzeichen"
* item[=].text = "Satzartenkennzeichen"
* item[=].readOnly = true
* item[=].initial.valueString = "K04"
* item[+].type = #integer
* item[=].maxLength = 4
* item[=].linkId = "jahr"
* item[=].text = "Jahr"
* item[+].type = #string
* item[=].maxLength = 6
* item[=].linkId = "krankenanstaltennummer"
* item[=].text = "Krankenanstaltennummer"
* item[+].type = #coding
* item[=].linkId = "personalgruppenindex"
* item[=].text = "Personalgruppenindex"
* item[=].answerOption[0].valueCoding = #111 "Ärzte/Ärztinnen"
* item[=].answerOption[+].valueCoding = #112 "Apotheker:innen, Chemiker:innen, Physiker:innen u.ä."
* item[=].answerOption[+].valueCoding = #113 "Hebammen (inkl. Schüler:innen)"
* item[+].type = #decimal
* item[=].maxLength = 9
* item[=].linkId = "personal-vollzeitäquivalente"
* item[=].text = "Personal – Vollzeitäquivalente"