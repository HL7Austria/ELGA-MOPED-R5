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
* item[=].answerOption[0].valueCoding = $LKFSystem#K "KA-Ebene – Gesamtdarstellung/-bericht"
* item[=].answerOption[+].valueCoding = $LKFSystem#G "Trägerebene – krankenanstaltenübergreifender (gemeinsamer) Bereich"
* item[=].answerOption[+].valueCoding = $LKFSystem#A "Trägerebene – krankenanstaltenfremder Bereich"
* item[=].answerOption[+].valueCoding = $LKFSystem#T "Trägerebene – Gesamtdarstellung/-bericht (KA-übergeordnete Institution)"
* item[+].type = #coding
* item[=].linkId = "qva-kategorie"
* item[=].text = "Kategorie des QVAIndex"
* item[=].answerOption[0].valueCoding = $LKFSystem#E "Einnahmen"
* item[=].answerOption[+].valueCoding = $LKFSystem#A "Ausgaben"
* item[=].answerOption[+].valueCoding = $LKFSystem#S "Saldo"
* item[+].type = #coding
* item[=].linkId = "qva-index-einnahmen"
* item[=].text = "QVAIndex – Einnahmen"
* item[=].enableWhen.question = "qva-kategorie"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerCoding.code = #E
* item[=].answerOption[0].valueCoding = $LKFSystem#E01 "Umsatzerlöse (Gesamt)"
* item[=].answerOption[+].valueCoding = $LKFSystem#E02 "Umsatzerlöse (stationär)"
* item[=].answerOption[+].valueCoding = $LKFSystem#E03 "Umsatzerlöse (ambulant)"
* item[=].answerOption[+].valueCoding = $LKFSystem#E04 "Umsatzerlöse (sonstige)"
* item[=].answerOption[+].valueCoding = $LKFSystem#E05 "Ersatz klinischer Mehraufwand (laufender Betrieb)"
* item[=].answerOption[+].valueCoding = $LKFSystem#E06 "Sonstige betriebliche Erlöse"
* item[=].answerOption[+].valueCoding = $LKFSystem#E07 "Betriebliche Einnahmen vor Umlage Verwaltungskosten"
* item[=].answerOption[+].valueCoding = $LKFSystem#E08 "Erlöse aus Umlage Verwaltungskosten"
* item[=].answerOption[+].valueCoding = $LKFSystem#E09 "Betriebliche Einnahmen"
* item[=].answerOption[+].valueCoding = $LKFSystem#E10 "Vorläufiges Ergebnis"
* item[=].answerOption[+].valueCoding = $LKFSystem#E11 "Zuschüsse zum Betriebsabgang"
* item[=].answerOption[+].valueCoding = $LKFSystem#E12 "Sonstige Betriebszuschüsse"
* item[=].answerOption[+].valueCoding = $LKFSystem#E13 "GSBG-Beihilfe"
* item[=].answerOption[+].valueCoding = $LKFSystem#E14 "Weiterleitung von Zuschüssen"
* item[=].answerOption[+].valueCoding = $LKFSystem#E15 "Laufende Einnahmen aus Zuschüssen"
* item[=].answerOption[+].valueCoding = $LKFSystem#E16 "Summe laufende Einnahmen"
* item[=].answerOption[+].valueCoding = $LKFSystem#E17 "Laufendes Ergebnis"
* item[=].answerOption[+].valueCoding = $LKFSystem#E18 "Erlöse aus Desinvestitionen"
* item[=].answerOption[+].valueCoding = $LKFSystem#E19 "Investitionszuschüsse"
* item[=].answerOption[+].valueCoding = $LKFSystem#E20 "Ersatz klinischer Mehraufwand (Investitionsmittel)"
* item[=].answerOption[+].valueCoding = $LKFSystem#E21 "Weiterleitung von Zuschüssen"
* item[=].answerOption[+].valueCoding = $LKFSystem#E22 "Einnahmen aus Investitionstätigkeit"
* item[=].answerOption[+].valueCoding = $LKFSystem#E23 "Summe Einnahmen vor Finanzierung"
* item[=].answerOption[+].valueCoding = $LKFSystem#E24 "Ergebnis vor Finanzierung"
* item[=].answerOption[+].valueCoding = $LKFSystem#E25 "Aufnahme verzinsliches Fremdkapital"
* item[=].answerOption[+].valueCoding = $LKFSystem#E26 "Aufnahme Mezzaninkapital"
* item[=].answerOption[+].valueCoding = $LKFSystem#E27 "Zinsen und ähnliche Erträge"
* item[=].answerOption[+].valueCoding = $LKFSystem#E28 "Zins- und Annuitätenzuschüsse"
* item[=].answerOption[+].valueCoding = $LKFSystem#E29 "Einzahlungen Gesellschafter"
* item[=].answerOption[+].valueCoding = $LKFSystem#E30 "Einnahmen Finanzierungstätigkeit"
* item[=].answerOption[+].valueCoding = $LKFSystem#E31 "Summe aller Einnahmen"
* item[+].type = #coding
* item[=].linkId = "qva-index-ausgaben"
* item[=].text = "QVAIndex – Ausgaben"
* item[=].enableWhen.question = "qva-kategorie"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerCoding.code = #A
* item[=].answerOption[0].valueCoding = $LKFSystem#A01 "Materialaufwand und Aufwendungen für bezogene Leistungen"
* item[=].answerOption[+].valueCoding = $LKFSystem#A02 "Personalaufwand"
* item[=].answerOption[+].valueCoding = $LKFSystem#A03 "FLAF-Zuschüsse"
* item[=].answerOption[+].valueCoding = $LKFSystem#A04 "Geringwertige Vermögensgegenstände/GWG"
* item[=].answerOption[+].valueCoding = $LKFSystem#A05 "Miete unbewegliche Vermögensgegenstände"
* item[=].answerOption[+].valueCoding = $LKFSystem#A06 "Sonstige betriebliche Aufwendungen"
* item[=].answerOption[+].valueCoding = $LKFSystem#A07 "Veränderung Bestände fertige/unfertige Erzeugnisse"
* item[=].answerOption[+].valueCoding = $LKFSystem#A08 "Andere aktivierte Eigenleistungen"
* item[=].answerOption[+].valueCoding = $LKFSystem#A09 "Betriebliche Ausgaben vor Umlage Verwaltungskosten"
* item[=].answerOption[+].valueCoding = $LKFSystem#A10 "Aufwendungen aus Umlage Verwaltungskosten"
* item[=].answerOption[+].valueCoding = $LKFSystem#A11 "Betriebliche Ausgaben"
* item[=].answerOption[+].valueCoding = $LKFSystem#A12 "Nicht abzugsfähige Vorsteuer"
* item[=].answerOption[+].valueCoding = $LKFSystem#A13 "Übrige Steuern"
* item[=].answerOption[+].valueCoding = $LKFSystem#A14 "Summe übrige Ausgaben"
* item[=].answerOption[+].valueCoding = $LKFSystem#A15 "Summe laufende Ausgaben"
* item[=].answerOption[+].valueCoding = $LKFSystem#A16 "Investitionen immaterielle Vermögensgegenstände"
* item[=].answerOption[+].valueCoding = $LKFSystem#A17 "Investitionen Sachanlagen"
* item[=].answerOption[+].valueCoding = $LKFSystem#A18 "Investitionen Finanzanlagen"
* item[=].answerOption[+].valueCoding = $LKFSystem#A19 "Summe Ausgaben für Investitionen"
* item[=].answerOption[+].valueCoding = $LKFSystem#A20 "Summe Ausgaben vor Finanzierung"
* item[=].answerOption[+].valueCoding = $LKFSystem#A21 "Tilgung verzinsliches Fremdkapital"
* item[=].answerOption[+].valueCoding = $LKFSystem#A22 "Tilgung Mezzaninkapital"
* item[=].answerOption[+].valueCoding = $LKFSystem#A23 "Zinsen und ähnliche Aufwendungen"
* item[=].answerOption[+].valueCoding = $LKFSystem#A24 "Rückzahlungen Gesellschafter"
* item[=].answerOption[+].valueCoding = $LKFSystem#A25 "Ausgaben Finanzierungstätigkeit"
* item[=].answerOption[+].valueCoding = $LKFSystem#A26 "Summe aller Ausgaben"
* item[+].type = #coding
* item[=].linkId = "qva-index-saldo"
* item[=].text = "QVAIndex – Saldo"
* item[=].enableWhen.question = "qva-kategorie"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerCoding.code = #S
* item[=].answerOption.valueCoding = $LKFSystem#S01 "Saldo Einnahmen/Ausgaben"
* item[+].type = #integer
* item[=].maxLength = 10
* item[=].linkId = "wert-berichtsjahr"
* item[=].text = "Wert Berichtsjahr"
* item[+].type = #integer
* item[=].maxLength = 10
* item[=].linkId = "wert-vorjahr"
* item[=].text = "Wert Vorjahr"