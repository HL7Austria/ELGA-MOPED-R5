Instance: LKFK11Questionnaire
InstanceOf: Questionnaire
Usage: #example
* title = "LKF K11 Questionnaire"
* status = #active
* description = "LKF K11 Questionnaire - Sammel-Kostennachweis Summenblatt"
* item[0].type = #string
* item[=].maxLength = 3
* item[=].linkId = "satzartenkennzeichen"
* item[=].text = "Satzartenkennzeichen"
* item[=].readOnly = true
* item[=].initial.valueString = "K11"
* item[+].type = #integer
* item[=].maxLength = 4
* item[=].linkId = "jahr"
* item[=].text = "Jahr"
* item[+].type = #string
* item[=].maxLength = 6
* item[=].linkId = "krankenanstaltennummer"
* item[=].text = "Krankenanstaltennummer"
* item[+].type = #integer
* item[=].maxLength = 10
* item[=].linkId = "personalkosten"
* item[=].text = "Personalkosten (KOAGR01)"
* item[+].type = #integer
* item[=].maxLength = 10
* item[=].linkId = "kosten-med-güter"
* item[=].text = "Kosten für medizinische Gebrauchs- und Verbrauchsgüter (KOAGR02)"
* item[+].type = #integer
* item[=].maxLength = 10
* item[=].linkId = "kosten-nicht-med-güter"
* item[=].text = "Kosten für nicht-medizinische Gebrauchs- und Verbrauchsgüter (KOAGR03)"
* item[+].type = #integer
* item[=].maxLength = 10
* item[=].linkId = "kosten-med-fremdleistungen"
* item[=].text = "Kosten für medizinische Fremdleistungen (KOAGR04)"
* item[+].type = #integer
* item[=].maxLength = 10
* item[=].linkId = "kosten-nicht-med-fremdleistungen"
* item[=].text = "Kosten für nicht-medizinische Fremdleistungen (KOAGR05)"
* item[+].type = #integer
* item[=].maxLength = 10
* item[=].linkId = "energiekosten"
* item[=].text = "Energiekosten (KOAGR06)"
* item[+].type = #integer
* item[=].maxLength = 10
* item[=].linkId = "sonstige-kosten"
* item[=].text = "Abgaben, Beiträge, Gebühren und sonstige Kosten (KOAGR07)"
* item[+].type = #integer
* item[=].maxLength = 10
* item[=].linkId = "kalkulatorische-anlagekapitalkosten"
* item[=].text = "Kalkulatorische Anlagekapitalkosten (KOAGR08)"
* item[+].type = #decimal
* item[=].maxLength = 10
* item[=].linkId = "summe_primärkosten"
* item[=].text = "Summe Primärkosten"
* item[+].type = #integer
* item[=].maxLength = 10
* item[=].linkId = "kostenminderungen"
* item[=].text = "Kostenminderungen"
* item[+].type = #integer
* item[=].maxLength = 10
* item[=].linkId = "endkosten-krankenanstalt"
* item[=].text = "Endkosten der Krankenanstalt"
* item[+].type = #integer
* item[=].maxLength = 10
* item[=].linkId = "sum-kalkulatorische-abschreibung"
* item[=].text = "Summe der kalkulatorischen Abschreibungen"
* item[+].type = #integer
* item[=].maxLength = 10
* item[=].linkId = "abschreibungen-rest-0"
* item[=].text = "Davon kalkulatorische Abschreibungen für Anlagegüter mit Restwert 0"
* item[+].type = #integer
* item[=].maxLength = 10
* item[=].linkId = "Abschreibungen-ausgeschiedener-tillgelegter-anlagen"
* item[=].text = "Davon kalkulatorische Abschreibungen von Restwerten ausgeschiedener oder stillgelegter Anlagen"
* item[+].type = #integer
* item[=].maxLength = 10
* item[=].linkId = "sum-kalkulatorischen-zinsen"
* item[=].text = "Summe der kalkulatorischen Zinsen"
* item[+].type = #integer
* item[=].maxLength = 10
* item[=].linkId = "sum-kalkulatorischen-miete"
* item[=].text = "Summe der kalkulatorischen Mieten"
* item[+].type = #integer
* item[=].maxLength = 10
* item[=].linkId = "endkosten-stationäre-patientenversorgung"
* item[=].text = "Endkosten der stationären Patientenversorgung"
* item[+].type = #integer
* item[=].maxLength = 10
* item[=].linkId = "endkosten-ambulanten-patientenversorgung"
* item[=].text = "Endkosten der ambulanten Patientenversorgung"
* item[+].type = #integer
* item[=].maxLength = 10
* item[=].linkId = "endkosten-nebenkostenstellen"
* item[=].text = "Endkosten der Nebenkostenstellen"