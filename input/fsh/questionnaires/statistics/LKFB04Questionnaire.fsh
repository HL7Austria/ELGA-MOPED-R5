Instance: LKFB04Questionnaire
InstanceOf: Questionnaire
Usage: #example
* title = "LKF B04 Questionnaire"
* status = #active
* description = "B04 Questionnaire - Quellen- und Verwendungsanalyse (QVA)"
* item[0].type = #string
* item[=].maxLength = 3
* item[=].linkId = "satzartenkennzeichen"
* item[=].text = "Satzartenkennzeichen"
* item[=].readOnly = true
* item[=].initial.valueString = "B04"
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
* item[=].linkId = "qva-kategorie"
* item[=].text = "Kategorie des QVAIndex"
* item[=].answerOption[0].valueCoding = #E "Einnahmen"
* item[=].answerOption[+].valueCoding = #A "Ausgaben"
* item[=].answerOption[+].valueCoding = #S "Saldo"
* item[+].type = #coding
* item[=].linkId = "qva-index-einnahmen"
* item[=].text = "QVAIndex – Einnahmen"
* item[=].enableWhen.question = "qva-kategorie"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerCoding.code = #E
* item[=].answerOption[0].valueCoding = #E01 "Umsatzerlöse (Gesamt)"
* item[=].answerOption[+].valueCoding = #E02 "Umsatzerlöse (stationär)"
* item[=].answerOption[+].valueCoding = #E03 "Umsatzerlöse (ambulant)"
* item[=].answerOption[+].valueCoding = #E04 "Umsatzerlöse (sonstige)"
* item[=].answerOption[+].valueCoding = #E05 "Ersatz klinischer Mehraufwand (laufender Betrieb)"
* item[=].answerOption[+].valueCoding = #E06 "Sonstige betriebliche Erlöse"
* item[=].answerOption[+].valueCoding = #E07 "Betriebliche Einnahmen vor Umlage Verwaltungskosten"
* item[=].answerOption[+].valueCoding = #E08 "Erlöse aus Umlage Verwaltungskosten"
* item[=].answerOption[+].valueCoding = #E09 "Betriebliche Einnahmen"
* item[=].answerOption[+].valueCoding = #E10 "Vorläufiges Ergebnis"
* item[=].answerOption[+].valueCoding = #E11 "Zuschüsse zum Betriebsabgang"
* item[=].answerOption[+].valueCoding = #E12 "Sonstige Betriebszuschüsse"
* item[=].answerOption[+].valueCoding = #E13 "GSBG-Beihilfe"
* item[=].answerOption[+].valueCoding = #E14 "Weiterleitung von Zuschüssen"
* item[=].answerOption[+].valueCoding = #E15 "Laufende Einnahmen aus Zuschüssen"
* item[=].answerOption[+].valueCoding = #E16 "Summe laufende Einnahmen"
* item[=].answerOption[+].valueCoding = #E17 "Laufendes Ergebnis"
* item[=].answerOption[+].valueCoding = #E18 "Erlöse aus Desinvestitionen"
* item[=].answerOption[+].valueCoding = #E19 "Investitionszuschüsse"
* item[=].answerOption[+].valueCoding = #E20 "Ersatz klinischer Mehraufwand (Investitionsmittel)"
* item[=].answerOption[+].valueCoding = #E21 "Weiterleitung von Zuschüssen"
* item[=].answerOption[+].valueCoding = #E22 "Einnahmen aus Investitionstätigkeit"
* item[=].answerOption[+].valueCoding = #E23 "Summe Einnahmen vor Finanzierung"
* item[=].answerOption[+].valueCoding = #E24 "Ergebnis vor Finanzierung"
* item[=].answerOption[+].valueCoding = #E25 "Aufnahme verzinsliches Fremdkapital"
* item[=].answerOption[+].valueCoding = #E26 "Aufnahme Mezzaninkapital"
* item[=].answerOption[+].valueCoding = #E27 "Zinsen und ähnliche Erträge"
* item[=].answerOption[+].valueCoding = #E28 "Zins- und Annuitätenzuschüsse"
* item[=].answerOption[+].valueCoding = #E29 "Einzahlungen Gesellschafter"
* item[=].answerOption[+].valueCoding = #E30 "Einnahmen Finanzierungstätigkeit"
* item[=].answerOption[+].valueCoding = #E31 "Summe aller Einnahmen"
* item[+].type = #coding
* item[=].linkId = "qva-index-ausgaben"
* item[=].text = "QVAIndex – Ausgaben"
* item[=].enableWhen.question = "qva-kategorie"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerCoding.code = #A
* item[=].answerOption[0].valueCoding = #A01 "Materialaufwand und Aufwendungen für bezogene Leistungen"
* item[=].answerOption[+].valueCoding = #A02 "Personalaufwand"
* item[=].answerOption[+].valueCoding = #A03 "FLAF-Zuschüsse"
* item[=].answerOption[+].valueCoding = #A04 "Geringwertige Vermögensgegenstände/GWG"
* item[=].answerOption[+].valueCoding = #A05 "Miete unbewegliche Vermögensgegenstände"
* item[=].answerOption[+].valueCoding = #A06 "Sonstige betriebliche Aufwendungen"
* item[=].answerOption[+].valueCoding = #A07 "Veränderung Bestände fertige/unfertige Erzeugnisse"
* item[=].answerOption[+].valueCoding = #A08 "Andere aktivierte Eigenleistungen"
* item[=].answerOption[+].valueCoding = #A09 "Betriebliche Ausgaben vor Umlage Verwaltungskosten"
* item[=].answerOption[+].valueCoding = #A10 "Aufwendungen aus Umlage Verwaltungskosten"
* item[=].answerOption[+].valueCoding = #A11 "Betriebliche Ausgaben"
* item[=].answerOption[+].valueCoding = #A12 "Nicht abzugsfähige Vorsteuer"
* item[=].answerOption[+].valueCoding = #A13 "Übrige Steuern"
* item[=].answerOption[+].valueCoding = #A14 "Summe übrige Ausgaben"
* item[=].answerOption[+].valueCoding = #A15 "Summe laufende Ausgaben"
* item[=].answerOption[+].valueCoding = #A16 "Investitionen immaterielle Vermögensgegenstände"
* item[=].answerOption[+].valueCoding = #A17 "Investitionen Sachanlagen"
* item[=].answerOption[+].valueCoding = #A18 "Investitionen Finanzanlagen"
* item[=].answerOption[+].valueCoding = #A19 "Summe Ausgaben für Investitionen"
* item[=].answerOption[+].valueCoding = #A20 "Summe Ausgaben vor Finanzierung"
* item[=].answerOption[+].valueCoding = #A21 "Tilgung verzinsliches Fremdkapital"
* item[=].answerOption[+].valueCoding = #A22 "Tilgung Mezzaninkapital"
* item[=].answerOption[+].valueCoding = #A23 "Zinsen und ähnliche Aufwendungen"
* item[=].answerOption[+].valueCoding = #A24 "Rückzahlungen Gesellschafter"
* item[=].answerOption[+].valueCoding = #A25 "Ausgaben Finanzierungstätigkeit"
* item[=].answerOption[+].valueCoding = #A26 "Summe aller Ausgaben"
* item[+].type = #coding
* item[=].linkId = "qva-index-saldo"
* item[=].text = "QVAIndex – Saldo"
* item[=].enableWhen.question = "qva-kategorie"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerCoding.code = #S
* item[=].answerOption.valueCoding = #S01 "Saldo Einnahmen/Ausgaben"
* item[+].type = #integer
* item[=].maxLength = 10
* item[=].linkId = "wert-berichtsjahr"
* item[=].text = "Wert Berichtsjahr"
* item[+].type = #integer
* item[=].maxLength = 10
* item[=].linkId = "wert-vorjahr"
* item[=].text = "Wert Vorjahr"