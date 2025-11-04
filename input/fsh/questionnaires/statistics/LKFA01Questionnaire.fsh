Instance: LKFA01Questionnaire
InstanceOf: Questionnaire
Usage: #example
* title = "LKF A01 Questionnaire"
* status = #active
* description = "LKF A01 Questionnaire - Antiinfectiva-Abrufe"
* item[0].type = #string
* item[=].maxLength = 3
* item[=].linkId = "satzartenkennzeichen"
* item[=].text = "Satzartenkennzeichen"
* item[=].readOnly = true
* item[=].initial.valueString = "A01"
* item[+].type = #integer
* item[=].maxLength = 4
* item[=].linkId = "jahr"
* item[=].text = "Jahr"
* item[+].type = #integer
* item[=].maxLength = 2
* item[=].linkId = "monat"
* item[=].text = "Monat"
* item[+].type = #string
* item[=].maxLength = 6
* item[=].linkId = "krankenanstaltennummer"
* item[=].text = "Krankenanstaltennummer"
* item[+].type = #integer
* item[=].maxLength = 8
* item[=].linkId = "bettenfuehrend-funktionscode"
* item[=].text = "Bettenführende bzw. nicht-bettenführende Hauptkostenstelle – Funktionscode"
* item[+].type = #string
* item[=].maxLength = 2
* item[=].linkId = "bezugsland"
* item[=].text = "Bezugsland"
* item[+].type = #string
* item[=].maxLength = 10
* item[=].linkId = "pharmazentralnummer"
* item[=].text = "Pharmazentralnummer"
* item[+].type = #string
* item[=].maxLength = 100
* item[=].linkId = "handelsname"
* item[=].text = "Handelsname"
* item[+].type = #integer
* item[=].maxLength = 10
* item[=].linkId = "abgerufene-packungen"
* item[=].text = "Abgerufene Packungen"
* item[+].type = #integer
* item[=].maxLength = 10
* item[=].linkId = "menge-pro-packungseinheit"
* item[=].text = "Menge je Packungseinheit"
* item[+].type = #string
* item[=].maxLength = 10
* item[=].linkId = "packungseinheit"
* item[=].text = "Packungseinheit"
* item[+].type = #string
* item[=].maxLength = 10
* item[=].linkId = "atc-code"
* item[=].text = "ATC-Code"