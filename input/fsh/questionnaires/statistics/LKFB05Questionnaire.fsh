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
* item[=].answerOption[0].valueCoding = #K "KA-Ebene – Gesamtdarstellung/-bericht"
* item[=].answerOption[+].valueCoding = #G "Trägerebene – krankenanstaltenübergreifender (gemeinsamer) Bereich"
* item[=].answerOption[+].valueCoding = #A "Trägerebene – krankenanstaltenfremder Bereich"
* item[=].answerOption[+].valueCoding = #T "Trägerebene – Gesamtdarstellung/-bericht (KA-übergeordnete Institution)"
* item[+].type = #coding
* item[=].linkId = "erloesindex"
* item[=].text = "ErlösIndex"
* item[=].answerOption[0].valueCoding = #U01 "LKF-Gebührenersätze"
* item[=].answerOption[+].valueCoding = #U02 "LKF-Gebühren"
* item[=].answerOption[+].valueCoding = #U03 "Pflegegebührenersätze"
* item[=].answerOption[+].valueCoding = #U04 "Amtliche Pflegegebühren"
* item[=].answerOption[+].valueCoding = #U05 "Anstaltsgebühren inkl. Anteile an Arzthonoraren"
* item[=].answerOption[+].valueCoding = #U06 "Kostenbeiträge (§ 27a KAKuG)"
* item[=].answerOption[+].valueCoding = #U07 "Sonstige Erlöse akutstationärer Bereich (Pauschalabgeltungen)"
* item[=].answerOption[+].valueCoding = #U08 "Stationäre Erlöse Gesamt"
* item[=].answerOption[+].valueCoding = #U20 "LKF-Gebührenersätze (leistungsbezogen/ambulant)"
* item[=].answerOption[+].valueCoding = #U21 "LKF-Gebührenersätze (Pauschalabgeltungen/ambulant)"
* item[=].answerOption[+].valueCoding = #U09 "Leistungsbezogene Vergütung"
* item[=].answerOption[+].valueCoding = #U10 "Zeitraumbezogene Vergütung (Pauschalabgeltungen)"
* item[=].answerOption[+].valueCoding = #U11 "Sonstige Erlöse ambulanter Bereich"
* item[=].answerOption[+].valueCoding = #U12 "Ambulante Erlöse Gesamt"
* item[=].answerOption[+].valueCoding = #U13 "Erlöse aus sonstigen Patientenversorgungsleistungen"
* item[=].answerOption[+].valueCoding = #U14 "Begleitpersonen (§ 27a KAKuG)"
* item[=].answerOption[+].valueCoding = #U15 "Erlöse aus dem Pflege-/Rehabilitations-/Heilstättenbereich"
* item[=].answerOption[+].valueCoding = #U16 "Sonstige Umsatzerlöse Gesamt"
* item[=].answerOption[+].valueCoding = #U22 "Vorhaltekostenabgeltung stationär und ambulant (Pauschalabgeltungen)"
* item[=].answerOption[+].valueCoding = #U17 "Umsatzerlöse"
* item[=].answerOption[+].valueCoding = #U18 "Ersatz für klinischen Mehraufwand (laufender Betrieb)"
* item[=].answerOption[+].valueCoding = #U19 "Sonstige betriebliche Erträge"
* item[+].type = #integer
* item[=].maxLength = 10
* item[=].linkId = "wert-gesamt"
* item[=].text = "Wert Gesamt"
* item[+].type = #integer
* item[=].maxLength = 10
* item[=].linkId = "wert-lgf"
* item[=].text = "Wert LGF"