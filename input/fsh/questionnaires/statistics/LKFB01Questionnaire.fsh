Instance: LKFB01Questionnaire
InstanceOf: Questionnaire
Usage: #example
* title = "LKF B01 Questionnaire"
* status = #active
* description = "B01 Questionnaire - Basisinformation"
* item[0].type = #string
* item[=].maxLength = 3
* item[=].linkId = "satzartenkennzeichen"
* item[=].text = "Satzartenkennzeichen"
* item[=].readOnly = true
* item[=].initial.valueString = "B01"
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
* item[=].linkId = "berechnungstyp"
* item[=].text = "Berechnungstyp"
* item[=].answerOption[0].valueCoding = $LKFSystem#E "Eigenständig"
* item[=].answerOption[+].valueCoding = $LKFSystem#K "Konsolidiert"
* item[=].answerOption[+].valueCoding = $LKFSystem#S "Summiert"
* item[+].type = #coding
* item[=].linkId = "zuordnungsart"
* item[=].text = "Zuordnungsart"
* item[=].answerOption[0].valueCoding = $LKFSystem#D "Direkt"
* item[=].answerOption[+].valueCoding = $LKFSystem#G "Geschlüsselt"