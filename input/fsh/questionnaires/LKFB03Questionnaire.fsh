Instance: LKFB03Questionnaire
InstanceOf: Questionnaire
Usage: #example
* title = "LKF B03 Questionnaire"
* status = #active
* description = "B03 Questionnaire - Eigenmittelverteilungsrechnung (EVR)"
* item[0].type = #string
* item[=].maxLength = 3
* item[=].linkId = "satzartenkennzeichen"
* item[=].text = "Satzartenkennzeichen"
* item[=].readOnly = true
* item[=].initial.valueString = "B03"
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
* item[=].linkId = "evr-index"
* item[=].text = "EVRIndex"
* item[=].answerOption[0].valueCoding = #R01 "Eigenmittel i.w.S. + Mezzaninkapital"
* item[=].answerOption[+].valueCoding = #R02 "Mezzaninkapital"
* item[=].answerOption[+].valueCoding = #R03 "Eigenmittel i.w.S."
* item[=].answerOption[+].valueCoding = #R04 "Investitionszuschüsse zum Anlagevermögen, verbraucht"
* item[=].answerOption[+].valueCoding = #R05 "Investitionszuschüsse zum Anlagevermögen, nicht verbraucht"
* item[=].answerOption[+].valueCoding = #R06 "Eigenmittel gem. §23 URG"
* item[=].answerOption[+].valueCoding = #R07 "Unversteuerte Rücklagen"
* item[=].answerOption[+].valueCoding = #R08 "Eigenkapital"
* item[=].answerOption[+].valueCoding = #R09 "Kapitalrücklagen"
* item[=].answerOption[+].valueCoding = #R10 "Gewinnrücklagen"
* item[=].answerOption[+].valueCoding = #R11 "Bilanzgewinn/Bilanzverlust"
* item[=].answerOption[+].valueCoding = #R12 "Nenn-Kapital (Grund-, Stammkapital)"
* item[+].type = #integer
* item[=].maxLength = 10
* item[=].linkId = "wert-berichtsjahr"
* item[=].text = "Wert Berichtsjahr"
* item[+].type = #integer
* item[=].maxLength = 10
* item[=].linkId = "wert-vorjahr"
* item[=].text = "Wert Vorjahr"