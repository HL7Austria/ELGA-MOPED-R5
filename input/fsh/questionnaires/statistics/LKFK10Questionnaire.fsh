Instance: LKFK10Questionnaire
InstanceOf: Questionnaire
Usage: #example
* title = "LKF K10 Questionnaire"
* status = #active
* description = "LKF K10 Questionnaire - Kostenstellen-Statistik und Kostennachweis (Neben- und Hilfskostenstellen)"
* item[0].type = #string
* item[=].maxLength = 3
* item[=].linkId = "satzartenkennzeichen"
* item[=].text = "Satzartenkennzeichen"
* item[=].readOnly = true
* item[=].initial.valueString = "K10"
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
* item[=].linkId = "neben-hilfskostenstelle-funktionscode"
* item[=].text = "Neben-/Hilfskostenstelle – Funktionscode"
* item[+].type = #integer
* item[=].maxLength = 6
* item[=].linkId = "nettogrundrissfläche"
* item[=].text = "Nettogrundrissfläche"
* item[+].type = #decimal
* item[=].maxLength = 9
* item[=].linkId = "personal-insgesamt"
* item[=].text = "Personal insgesamt-Vollzeitäquivalente"
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
* item[+].type = #integer
* item[=].maxLength = 10
* item[=].linkId = "kosten-med-vor-und-entsorgung"
* item[=].text = "Kosten der vorwiegend medizinisch bedingten Ver- und Entsorgung (KOAGR11)"
* item[+].type = #integer
* item[=].maxLength = 10
* item[=].linkId = "kosten-nicht-med-vor-und-entsorgung"
* item[=].text = "Kosten der vorwiegend nicht-medizinisch bedingten Ver- und Entsorgung (KOAGR12)"
* item[+].type = #integer
* item[=].maxLength = 10
* item[=].linkId = "kosten-verwaltung"
* item[=].text = "Kosten der Verwaltung (KOAGR13)"
* item[+].type = #integer
* item[=].maxLength = 10
* item[=].linkId = "andere-sekundärkosten (KOAGR14)"
* item[=].text = "Andere Sekundärkosten (KOAGR14)"
* item[+].type = #integer
* item[=].maxLength = 10
* item[=].linkId = "kostenminderungen"
* item[=].text = "Kostenminderungen"
* item[+].type = #integer
* item[=].maxLength = 10
* item[=].linkId = "summe-sum-innerbetrieblicher-leistungen"
* item[=].text = "Summe abgegebener innerbetrieblicher Leistungen"
* item[+].type = #integer
* item[=].maxLength = 10
* item[=].linkId = "unter-überdeckung"
* item[=].text = "Unter- oder Überdeckung"
* item[+].type = #integer
* item[=].maxLength = 10
* item[=].linkId = "endkosten-kostenstelle"
* item[=].text = "Endkosten der Kostenstelle"