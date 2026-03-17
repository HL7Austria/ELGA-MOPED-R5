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
* item[=].answerOption[0].valueCoding = $LKFSystem#K "KA-Ebene – Gesamtdarstellung/-bericht"
* item[=].answerOption[+].valueCoding = $LKFSystem#G "Trägerebene – krankenanstaltenübergreifender (gemeinsamer) Bereich"
* item[=].answerOption[+].valueCoding = $LKFSystem#A "Trägerebene – krankenanstaltenfremder Bereich"
* item[=].answerOption[+].valueCoding = $LKFSystem#T "Trägerebene – Gesamtdarstellung/-bericht (KA-übergeordnete Institution)"
* item[+].type = #coding
* item[=].linkId = "evr-index"
* item[=].text = "EVRIndex"
* item[=].answerOption[0].valueCoding = $LKFSystem#R01 "Eigenmittel i.w.S. + Mezzaninkapital"
* item[=].answerOption[+].valueCoding = $LKFSystem#R02 "Mezzaninkapital"
* item[=].answerOption[+].valueCoding = $LKFSystem#R03 "Eigenmittel i.w.S."
* item[=].answerOption[+].valueCoding = $LKFSystem#R04 "Investitionszuschüsse zum Anlagevermögen, verbraucht"
* item[=].answerOption[+].valueCoding = $LKFSystem#R05 "Investitionszuschüsse zum Anlagevermögen, nicht verbraucht"
* item[=].answerOption[+].valueCoding = $LKFSystem#R06 "Eigenmittel gem. §23 URG"
* item[=].answerOption[+].valueCoding = $LKFSystem#R07 "Unversteuerte Rücklagen"
* item[=].answerOption[+].valueCoding = $LKFSystem#R08 "Eigenkapital"
* item[=].answerOption[+].valueCoding = $LKFSystem#R09 "Kapitalrücklagen"
* item[=].answerOption[+].valueCoding = $LKFSystem#R10 "Gewinnrücklagen"
* item[=].answerOption[+].valueCoding = $LKFSystem#R11 "Bilanzgewinn/Bilanzverlust"
* item[=].answerOption[+].valueCoding = $LKFSystem#R12 "Nenn-Kapital (Grund-, Stammkapital)"
* item[+].type = #integer
* item[=].maxLength = 10
* item[=].linkId = "wert-berichtsjahr"
* item[=].text = "Wert Berichtsjahr"
* item[+].type = #integer
* item[=].maxLength = 10
* item[=].linkId = "wert-vorjahr"
* item[=].text = "Wert Vorjahr"