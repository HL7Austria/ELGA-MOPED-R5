Instance: LKFK14Questionnaire
InstanceOf: Questionnaire
Usage: #example
* title = "LKF K14 Questionnaire"
* status = #active
* description = "LKF K14 Questionnaire - Kalkulatorischer Anhang – Kalkulatorischer Anlagenspiegel"
* item[0].type = #string
* item[=].maxLength = 3
* item[=].linkId = "satzartenkennzeichen"
* item[=].text = "Satzartenkennzeichen"
* item[=].readOnly = true
* item[=].initial.valueString = "K14"
* item[+].type = #integer
* item[=].maxLength = 4
* item[=].linkId = "jahr"
* item[=].text = "Jahr"
* item[+].type = #string
* item[=].maxLength = 6
* item[=].linkId = "krankenanstaltennummer"
* item[=].text = "Krankenanstaltennummer"
* item[+].type = #coding
* item[=].linkId = "anlagenindex"
* item[=].text = "Anlagenindex"
* item[=].answerOption[0].valueCoding = #A "Grundstücke (MLV-Nr. 91)"
* item[=].answerOption[+].valueCoding = #B "Bauten (MLV-Nr. 92–99)"
* item[=].answerOption[+].valueCoding = #C "Anlagen in Bau"
* item[+].type = #integer
* item[=].maxLength = 10
* item[=].linkId = "anschaffungs-und-herstellungskosten"
* item[=].text = "Anschaffungs- und Herstellungskosten"
* item[+].type = #decimal
* item[=].maxLength = 10
* item[=].linkId = "zugänge"
* item[=].text = "Zugänge"
* item[+].type = #decimal
* item[=].maxLength = 10
* item[=].linkId = "abgänge"
* item[=].text = "Abgänge"
* item[+].type = #decimal
* item[=].maxLength = 10
* item[=].linkId = "umbuchungen"
* item[=].text = "Umbuchungen"
* item[+].type = #decimal
* item[=].maxLength = 10
* item[=].linkId = "kumulierte-abschreibungen"
* item[=].text = "Kumulierte Abschreibungen"
* item[+].type = #decimal
* item[=].maxLength = 10
* item[=].linkId = "buchwerte-ende-berichtsjahres"
* item[=].text = "Buchwerte am Ende des Berichtsjahres"
* item[+].type = #decimal
* item[=].maxLength = 10
* item[=].linkId = "buchwerte-vorjahr"
* item[=].text = "Buchwerte Vorjahr"
* item[+].type = #decimal
* item[=].maxLength = 10
* item[=].linkId = "abschreibungen-laufendes-berichtsjahr"
* item[=].text = "Abschreibungen laufendes Berichtsjahr"