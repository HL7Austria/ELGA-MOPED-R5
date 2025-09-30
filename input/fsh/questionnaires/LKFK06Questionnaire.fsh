Instance: LKFK06Questionnaire
InstanceOf: Questionnaire
Usage: #example
* title = "LKF K06 Questionnaire"
* status = #active
* description = "LKF K06 Questionnaire - KA-Statistik (Konsiliarärztlicher Dienst)"
* item[0].type = #string
* item[=].maxLength = 3
* item[=].linkId = "satzartenkennzeichen"
* item[=].text = "Satzartenkennzeichen"
* item[=].readOnly = true
* item[=].initial.valueString = "K06"
* item[+].type = #integer
* item[=].maxLength = 6
* item[=].linkId = "jahr"
* item[=].text = "Jahr"
* item[=].repeats = false
* item[+].type = #string
* item[=].maxLength = 6
* item[=].linkId = "krankenanstaltennummer"
* item[=].text = "Krankenanstaltennummer"
* item[+].type = #coding
* item[=].linkId = "fachrichtungsindex"
* item[=].text = "Fachrichtungsindex"
* item[=].answerOption[0].valueCoding = #00 "Allgemeinmedizin"
* item[=].answerOption[+].valueCoding = #01 "Anästhesiologie und Intensivmedizin"
* item[=].answerOption[+].valueCoding = #02 "Augenheilkunde und Optometrie"
* item[+].type = #integer
* item[=].maxLength = 6
* item[=].linkId = "konsiliarärztinnen-kopfzahl"
* item[=].text = "Konsiliarärzte/-ärztinnen – Kopfzahl"