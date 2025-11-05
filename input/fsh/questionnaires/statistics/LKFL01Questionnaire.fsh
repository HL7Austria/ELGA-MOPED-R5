Instance: LKFL01Questionnaire
InstanceOf: Questionnaire
Usage: #example
* title = "LKF L01 Questionnaire"
* status = #active
* description = "LKF L01 Questionnaire - Spezielle Leistungsbereiche"
* item[0].type = #string
* item[=].maxLength = 3
* item[=].linkId = "satzartenkennzeichen"
* item[=].text = "Satzartenkennzeichen"
* item[=].readOnly = true
* item[=].initial.valueString = "L01"
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
* item[=].linkId = "hauptkostenstelle-funktionscode"
* item[=].text = "Hauptkostenstelle – Funktionscode"
* item[=].enableWhen.question = "leistungsbereich"
* item[=].enableWhen.operator = #!=
* item[=].enableWhen.answerCoding = #M "Spezielle Leistungen"
* item[+].type = #coding
* item[=].linkId = "leistungsbereich"
* item[=].text = "Leistungsbereich"
* item[=].answerOption[0].valueCoding = #I "Intensivüberwachungs-/behandlungseinheiten (Erwachsene/Kinder)"
* item[=].answerOption[+].valueCoding = #G "Akutgeriatrie/Remobilisation"
* item[=].answerOption[+].valueCoding = #L "Palliativmedizinische Einrichtungen"
* item[=].answerOption[+].valueCoding = #N "Neurologische Akut-Nachbehandlung"
* item[=].answerOption[+].valueCoding = #J "Kinder- und Jugendpsychiatrie"
* item[=].answerOption[+].valueCoding = #P "Psychiatrie"
* item[=].answerOption[+].valueCoding = #S "Stroke Unit"
* item[=].answerOption[+].valueCoding = #A "Alkohol- und Drogenentwöhnung"
* item[=].answerOption[+].valueCoding = #M "Spezielle Leistungen"
* item[=].answerOption[+].valueCoding = #R "Remobilisation/Nachsorge"
* item[=].answerOption[+].valueCoding = #O "Psychosomatik"
* item[+].type = #string
* item[=].maxLength = 2
* item[=].linkId = "gruppe-stufe"
* item[=].text = "Gruppe/Stufe"
* item[+].type = #integer
* item[=].maxLength = 6
* item[=].linkId = "punkte"
* item[=].text = "Punkte"