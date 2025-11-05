Instance: LKFB06Questionnaire
InstanceOf: Questionnaire
Usage: #example
* title = "LKF B06 Questionnaire"
* status = #active
* description = "B06 Questionnaire - Zuschussstruktur (ZS)"
* item[0].type = #string
* item[=].maxLength = 3
* item[=].linkId = "satzartenkennzeichen"
* item[=].text = "Satzartenkennzeichen"
* item[=].readOnly = true
* item[=].initial.valueString = "B06"
* item[+].type = #integer
* item[=].maxLength = 4
* item[=].linkId = "jahr"
* item[=].text = "Jahr"
* item[+].type = #string
* item[=].maxLength = 6
* item[=].linkId = "krankenanstalten-traegernummer"
* item[=].text = "Krankenanstalten-/Trägernummer"
* item[+].type = #coding
* item[=].linkId = "berichtstyp"
* item[=].text = "Berichtstyp"
* item[=].answerOption[0].valueCoding = #K "KA-Ebene – Gesamtdarstellung/-bericht"
* item[=].answerOption[+].valueCoding = #G "Trägerebene – krankenanstaltenübergreifender (gemeinsamer) Bereich"
* item[=].answerOption[+].valueCoding = #A "Trägerebene – krankenanstaltenfremder Bereich"
* item[=].answerOption[+].valueCoding = #T "Trägerebene – Gesamtdarstellung/-bericht (KA-übergeordnete Institution)"
* item[+].type = #coding
* item[=].linkId = "finanzierungstraegerindex"
* item[=].text = "FinanzierungsträgerIndex"
* item[=].answerOption[0].valueCoding = #LF "Landesgesundheitsfonds"
* item[=].answerOption[+].valueCoding = #LD "Land"
* item[=].answerOption[+].valueCoding = #GM "Gemeinde(n)"
* item[=].answerOption[+].valueCoding = #RT "Rechtsträger"
* item[=].answerOption[+].valueCoding = #SO "Sonstige"
* item[+].type = #coding
* item[=].linkId = "zuschussartindex"
* item[=].text = "ZuschussartIndex"
* item[=].answerOption[0].valueCoding = #Z01 "Zuschüsse zum Betriebsabgang"
* item[=].answerOption[+].valueCoding = #Z02 "Sonstige Betriebszuschüsse"
* item[=].answerOption[+].valueCoding = #Z03 "Betriebszuschüsse"
* item[=].answerOption[+].valueCoding = #Z04 "Investitionszuschüsse"
* item[=].answerOption[+].valueCoding = #Z05 "Zins- und Annuitätenzuschüsse"
* item[+].type = #integer
* item[=].maxLength = 10
* item[=].linkId = "zuschuss"
* item[=].text = "Zuschuss"