Instance: LKFK07Questionnaire
InstanceOf: Questionnaire
Usage: #example
* title = "LKF K07 Questionnaire"
* status = #active
* description = "LKF K07 Questionnaire - KA-Statistik (Personal der nicht-ärztlichen Gesundheitsberufe)"
* item[0].type = #string
* item[=].maxLength = 3
* item[=].linkId = "satzartenkennzeichen"
* item[=].text = "Satzartenkennzeichen"
* item[=].readOnly = true
* item[=].initial.valueString = "K07"
* item[+].type = #integer
* item[=].maxLength = 4
* item[=].linkId = "jahr"
* item[=].text = "Jahr"
* item[+].type = #string
* item[=].maxLength = 6
* item[=].linkId = "krankenanstaltennummer"
* item[=].text = "Krankenanstaltennummer"
* item[+].type = #coding
* item[=].linkId = "index-nicht-ärztliche-gesundheitsberufe"
* item[=].text = "Index nicht-ärztliche Gesundheitsberufe"
* item[=].answerOption[0].valueCoding = #30 "Hebammen"
* item[=].answerOption[+].valueCoding = #41 "Allgemeine Gesundheits- und Krankenpflege"
* item[=].answerOption[+].valueCoding = #42 "Kinder- und Jugendlichenpflege"
* item[+].type = #integer
* item[=].maxLength = 6
* item[=].linkId = "personal-männlich – kopfzahl"
* item[=].text = "Personal männlich – Kopfzahl"
* item[+].type = #integer
* item[=].maxLength = 6
* item[=].linkId = "personal-weiblich-kopfzahl"
* item[=].text = "Personal weiblich – Kopfzahl"
* item[+].type = #integer
* item[=].maxLength = 6
* item[=].linkId = "kopfzahl-eu-ausländer"
* item[=].text = "Darunter EU-Ausländer/innen insgesamt – Kopfzahl"
* item[+].type = #integer
* item[=].maxLength = 6
* item[=].linkId = "kopfzahl-nicht-eu-ausländer"
* item[=].text = "Darunter Nicht-EU-Ausländer/innen insgesamt – Kopfzahl"
* item[+].type = #decimal
* item[=].maxLength = 9
* item[=].linkId = "personal-männlich-vollzeitäquivalente"
* item[=].text = "Personal männlich – Vollzeitäquivalente"
* item[+].type = #decimal
* item[=].maxLength = 9
* item[=].linkId = "personal-weiblich-vollzeitäquivalente"
* item[=].text = "Personal weiblich – Vollzeitäquivalente"
* item[+].type = #decimal
* item[=].maxLength = 9
* item[=].linkId = "vollzeitäquivalente-eu-ausländer"
* item[=].text = "Darunter EU-Ausländer/innen insgesamt – Vollzeitäquivalente"
* item[+].type = #decimal
* item[=].maxLength = 9
* item[=].linkId = "vollzeitäquivalente-eu-nicht-ausländer"
* item[=].text = "Darunter Nicht-EU-Ausländer/innen insgesamt – Vollzeitäquivalente"