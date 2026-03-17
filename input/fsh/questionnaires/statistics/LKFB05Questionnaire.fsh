Instance: LKFB05Questionnaire
InstanceOf: Questionnaire
Usage: #example
* title = "LKF B05 Questionnaire"
* status = #active
* description = "B05 Questionnaire - Erlösstruktur (ES)"
* item[0].type = #string
* item[=].maxLength = 3
* item[=].linkId = "satzartenkennzeichen"
* item[=].text = "Satzartenkennzeichen"
* item[=].readOnly = true
* item[=].initial.valueString = "B05"
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
* item[=].linkId = "erloesindex"
* item[=].text = "ErlösIndex"
* item[=].answerOption[0].valueCoding = $LKFSystem#U01 "LKF-Gebührenersätze"
* item[=].answerOption[+].valueCoding = $LKFSystem#U02 "LKF-Gebühren"
* item[=].answerOption[+].valueCoding = $LKFSystem#U03 "Pflegegebührenersätze"
* item[=].answerOption[+].valueCoding = $LKFSystem#U04 "Amtliche Pflegegebühren"
* item[=].answerOption[+].valueCoding = $LKFSystem#U05 "Anstaltsgebühren inkl. Anteile an Arzthonoraren"
* item[=].answerOption[+].valueCoding = $LKFSystem#U06 "Kostenbeiträge (§ 27a KAKuG)"
* item[=].answerOption[+].valueCoding = $LKFSystem#U07 "Sonstige Erlöse akutstationärer Bereich (Pauschalabgeltungen)"
* item[=].answerOption[+].valueCoding = $LKFSystem#U08 "Stationäre Erlöse Gesamt"
* item[=].answerOption[+].valueCoding = $LKFSystem#U20 "LKF-Gebührenersätze (leistungsbezogen/ambulant)"
* item[=].answerOption[+].valueCoding = $LKFSystem#U21 "LKF-Gebührenersätze (Pauschalabgeltungen/ambulant)"
* item[=].answerOption[+].valueCoding = $LKFSystem#U09 "Leistungsbezogene Vergütung"
* item[=].answerOption[+].valueCoding = $LKFSystem#U10 "Zeitraumbezogene Vergütung (Pauschalabgeltungen)"
* item[=].answerOption[+].valueCoding = $LKFSystem#U11 "Sonstige Erlöse ambulanter Bereich"
* item[=].answerOption[+].valueCoding = $LKFSystem#U12 "Ambulante Erlöse Gesamt"
* item[=].answerOption[+].valueCoding = $LKFSystem#U13 "Erlöse aus sonstigen Patientenversorgungsleistungen"
* item[=].answerOption[+].valueCoding = $LKFSystem#U14 "Begleitpersonen (§ 27a KAKuG)"
* item[=].answerOption[+].valueCoding = $LKFSystem#U15 "Erlöse aus dem Pflege-/Rehabilitations-/Heilstättenbereich"
* item[=].answerOption[+].valueCoding = $LKFSystem#U16 "Sonstige Umsatzerlöse Gesamt"
* item[=].answerOption[+].valueCoding = $LKFSystem#U22 "Vorhaltekostenabgeltung stationär und ambulant (Pauschalabgeltungen)"
* item[=].answerOption[+].valueCoding = $LKFSystem#U17 "Umsatzerlöse"
* item[=].answerOption[+].valueCoding = $LKFSystem#U18 "Ersatz für klinischen Mehraufwand (laufender Betrieb)"
* item[=].answerOption[+].valueCoding = $LKFSystem#U19 "Sonstige betriebliche Erträge"
* item[+].type = #integer
* item[=].maxLength = 10
* item[=].linkId = "wert-gesamt"
* item[=].text = "Wert Gesamt"
* item[+].type = #integer
* item[=].maxLength = 10
* item[=].linkId = "wert-lgf"
* item[=].text = "Wert LGF"