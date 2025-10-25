
Instance: LKFK09Questionnaire
InstanceOf: Questionnaire
Usage: #example
* title = "LKF K09 Questionnaire"
* status = #active
* description = "LKF K09 Questionnaire - Kostenstellen-Statistik und Kostennachweis (nicht-bettenführende Hauptkostenstelle)"
* item[0].type = #string
* item[=].maxLength = 3
* item[=].linkId = "satzartenkennzeichen"
* item[=].text = "Satzartenkennzeichen"
* item[=].readOnly = true
* item[=].initial.valueString = "K09"
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
* item[=].linkId = "nicht-bettenführende-hauptkostenstelle–funktionscode"
* item[=].text = "Nicht-bettenführende Hauptkostenstelle – Funktionscode"
* item[+].type = #integer
* item[=].maxLength = 6
* item[=].linkId = "ambulante-betreuungsplätze"
* item[=].text = "Ambulante Betreuungsplätze"
* item[+].type = #integer
* item[=].maxLength = 6
* item[=].linkId = "ambulante-patient"
* item[=].text = "Ambulante Patienten/Patientinnen"
* item[+].type = #integer
* item[=].maxLength = 8
* item[=].linkId = "frequenzen-ambulanten-patient"
* item[=].text = "Frequenzen an ambulanten Patienten/Patientinnen"
* item[+].type = #integer
* item[=].maxLength = 8
* item[=].linkId = "frequenzen-stationären-patienten-andere-krankenhäuser"
* item[=].text = "Frequenzen an stationären Patienten/Patientinnen anderer Krankenhäuser"
* item[+].type = #integer
* item[=].maxLength = 8
* item[=].linkId = "frequenzen-stationären-patienten"
* item[=].text = "Frequenzen an stationären Patienten/Patientinnen"
* item[+].type = #integer
* item[=].maxLength = 6
* item[=].linkId = "nettogrundrissfläche"
* item[=].text = "Nettogrundrissfläche"
* item[+].type = #decimal
* item[=].maxLength = 9
* item[=].linkId = "ärzte-vollzeitäquivalente"
* item[=].text = "Ärzte/Ärztinnen – Vollzeitäquivalente (MLV 1-1)"
* item[+].type = #decimal
* item[=].maxLength = 9
* item[=].linkId = "apotheker-chemiker-physiker-vollzeitäquivalente"
* item[=].text = "Apotheker/innen, Chemiker/innen, Physiker/innen u.ä. – Vollzeitäquivalente (MLV 1-2)"
* item[+].type = #decimal
* item[=].maxLength = 9
* item[=].linkId = "hebammen-vollzeitäquivalente"
* item[=].text = "Hebammen – Vollzeitäquivalente (MLV 1-3)"
* item[+].type = #decimal
* item[=].maxLength = 9
* item[=].linkId = "weitere-gesundheitsberufe-vollzeitäquivalente"
* item[=].text = "Gehobener Dienst für Gesundheits- und Krankenpflege und weitere Gesundheitsberufe – Vollzeitäquivalente (MLV 1-4)"
* item[+].type = #decimal
* item[=].maxLength = 9
* item[=].linkId = "medizinisch-technische-dienste"
* item[=].text = "Gehobene medizinisch-technische Dienste, medizinisch-technischer Fachdienst und Masseure/ Masseurinnen – Vollzeitäquivalente (MLV 1-5)"
* item[+].type = #decimal
* item[=].maxLength = 9
* item[=].linkId = "sanitäter–vollzeitäquivalente"
* item[=].text = "Sanitäter, Pflegehilfe und MA – Vollzeitäquivalente (MLV 1-6)"
* item[+].type = #decimal
* item[=].maxLength = 9
* item[=].linkId = "verwaltungs-und-kanzleipersonal–vollzeitäquivalente"
* item[=].text = "Verwaltungs- und Kanzleipersonal – Vollzeitäquivalente (MLV 1-7)"
* item[+].type = #decimal
* item[=].maxLength = 9
* item[=].linkId = "betriebspersonal-vollzeitäquivalente"
* item[=].text = "Betriebspersonal – Vollzeitäquivalente (MLV 1-8)"
* item[+].type = #decimal
* item[=].maxLength = 9
* item[=].linkId = "sonstige-vollzeitäquivalente"
* item[=].text = "Sonstiges Personal – Vollzeitäquivalente (MLV 1-9)"
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