Instance: LKFJahresstatistikmeldung
InstanceOf: Questionnaire
Usage: #example
* title = "LKF Jahresstatistikmeldung"
* status = #active
* description = "LKF Jahresstatistikmeldung"
* item[0].type = #integer
* item[=].maxLength = 4
* item[=].linkId = "jahr"
* item[=].text = "Jahr"
* item[+].type = #group
* item[=].linkId = "A01"
* item[=].text = "LKF A01 - Antiinfectiva-Abrufe"
* item[=].repeats = true
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 2
* item[=].item[=].linkId = "A01-monat"
* item[=].item[=].text = "Monat"
* item[=].item[+].type = #string
* item[=].item[=].maxLength = 6
* item[=].item[=].linkId = "A01-krankenanstaltennummer"
* item[=].item[=].text = "Krankenanstaltennummer"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 8
* item[=].item[=].linkId = "A01-bettenfuehrend-funktionscode"
* item[=].item[=].text = "Bettenführende bzw. nicht-bettenführende Hauptkostenstelle – Funktionscode"
* item[=].item[+].type = #string
* item[=].item[=].maxLength = 2
* item[=].item[=].linkId = "A01-bezugsland"
* item[=].item[=].text = "Bezugsland"
* item[=].item[+].type = #string
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "A01-pharmazentralnummer"
* item[=].item[=].text = "Pharmazentralnummer"
* item[=].item[+].type = #string
* item[=].item[=].maxLength = 100
* item[=].item[=].linkId = "A01-handelsname"
* item[=].item[=].text = "Handelsname"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "A01-abgerufene-packungen"
* item[=].item[=].text = "Abgerufene Packungen"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "A01-menge-pro-packungseinheit"
* item[=].item[=].text = "Menge je Packungseinheit"
* item[=].item[+].type = #string
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "A01-packungseinheit"
* item[=].item[=].text = "Packungseinheit"
* item[=].item[+].type = #string
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "A01-atc-code"
* item[=].item[=].text = "ATC-Code"

* item[+].type = #group
* item[=].linkId = "B01"
* item[=].text = "LKF B01 - Basisinformation"
* item[=].repeats = true
* item[=].item[+].type = #string
* item[=].item[=].maxLength = 6
* item[=].item[=].linkId = "B01-krankenanstalten-traegernummer"
* item[=].item[=].text = "Krankenanstalten-/Trägernummer"
* item[=].item[+].type = #coding
* item[=].item[=].linkId = "B01-berichtstyp"
* item[=].item[=].text = "Berichtstyp"
* item[=].item[=].answerOption[0].valueCoding = $LKFSystem#K "KA-Ebene – Gesamtdarstellung/-bericht"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#G "Trägerebene – krankenanstaltenübergreifender (gemeinsamer) Bereich"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#A "Trägerebene – krankenanstaltenfremder Bereich"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#T "Trägerebene – Gesamtdarstellung/-bericht (KA-übergeordnete Institution)"
* item[=].item[+].type = #coding
* item[=].item[=].linkId = "B01-berechnungstyp"
* item[=].item[=].text = "Berechnungstyp"
* item[=].item[=].answerOption[0].valueCoding = $LKFSystem#E "Eigenständig"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#K "Konsolidiert"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#S "Summiert"
* item[=].item[+].type = #coding
* item[=].item[=].linkId = "B01-zuordnungsart"
* item[=].item[=].text = "Zuordnungsart"
* item[=].item[=].answerOption[0].valueCoding = $LKFSystem#D "Direkt"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#G "Geschlüsselt"


* item[+].type = #group
* item[=].linkId = "B02"
* item[=].text = "LKF B02 - Vermögens- und Kapitalstruktur (VKS)"
* item[=].repeats = true
* item[=].item[+].type = #string
* item[=].item[=].maxLength = 6
* item[=].item[=].linkId = "B02-krankenanstalten-traegernummer"
* item[=].item[=].text = "Krankenanstalten-/Trägernummer"
* item[=].item[+].type = #coding
* item[=].item[=].linkId = "B02-berichtstyp"
* item[=].item[=].text = "Berichtstyp"
* item[=].item[=].answerOption[0].valueCoding = $LKFSystem#K "KA-Ebene – Gesamtdarstellung/-bericht"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#G "Trägerebene – krankenanstaltenübergreifender (gemeinsamer) Bereich"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#A "Trägerebene – krankenanstaltenfremder Bereich"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#T "Trägerebene – Gesamtdarstellung/-bericht (KA-übergeordnete Institution)"
* item[=].item[+].type = #coding
* item[=].item[=].linkId = "B02-vks-kategorie"
* item[=].item[=].text = "Kategorie des VKSIndex"
* item[=].item[=].answerOption[0].valueCoding = $LKFSystem#V "Vermögen"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#K "Kapital"
* item[=].item[+].type = #coding
* item[=].item[=].linkId = "B02-vks-index-vermoegen"
* item[=].item[=].text = "VKSIndex – Vermögensposten"
* item[=].item[=].answerOption[0].valueCoding = $LKFSystem#V01 "Aufwendungen für das Ingangsetzen und Erweitern eines Betriebes"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#V02 "Immaterielle Vermögensgegenstände"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#V03 "Grundstücke, grundstücksgleiche Rechte"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#V04 "Bauten, einschließlich der Bauten auf fremdem Grund"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#V05 "Technische Anlagen und Maschinen"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#V06 "Andere Anlagen, Betriebs- und Geschäftsausstattung"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#V07 "Geleistete Anzahlungen und Anlagen in Bau"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#V08 "Finanzanlagen"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#V09 "Anlagevermögen )"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#V10 "Vorräte"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#V11 "Forderungen aus Lieferungen und Leistungen (Gesamt)"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#V12 "Forderungen aus Lieferungen und Leistungen (davon Landesgesundheitsfonds)"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#V13 "Sonstige Forderungen (Gesamt)"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#V14 "Sonstige Forderungen (davon Bund)"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#V15 "Sonstige Forderungen (davon Land)"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#V16 "Sonstige Forderungen (davon Gemeinde)"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#V17 "Sonstige Forderungen (davon Rechtsträger)"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#V18 "Sonstige Forderungen (davon Landesträgergesundheitsfonds)"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#V19 "Sonstige Vermögensgegenstände und aktive Rechnungsabgrenzungsposten"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#V20 "Liquide Mittel i.w.S."
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#V21 "Umlaufvermögen"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#V22 "Gesamtvermögen"
* item[=].item[+].type = #coding
* item[=].item[=].linkId = "B02-vks-index-kapital"
* item[=].item[=].text = "VKSIndex – Kapitalposten"
* item[=].item[=].answerOption[0].valueCoding = $LKFSystem#K01 "Rückstellungen kurzfristige"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#K02 "Verbindlichkeiten gegenüber Kreditinstituten kurzfristige"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#K03 "Verbindlichkeiten aus Lieferungen und Leistungen und sonstige kurzfristige Verbindlichkeiten und passive Rechnungsabgrenzungsposten"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#K04 "Kurzfristiges Fremdkapital"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#K05 "Abfertigungs-, Jubiläums- und Pensionsrückstellungen"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#K06 "Sonstige Rückstellungen langfristige"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#K07 "Anleihen"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#K08 "Verbindlichkeiten gegenüber Kreditinstituten langfristige"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#K09 "Sonstige Verbindlichkeiten langfristige (Gesamt)"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#K10 "Sonstige Verbindlichkeiten langfristige (davon Bund)"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#K11 "Sonstige Verbindlichkeiten langfristige (davon Land)"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#K12 "Sonstige Verbindlichkeiten langfristige (davon Gemeinde)"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#K13 "Sonstige Verbindlichkeiten langfristige (davon Rechtsträger)"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#K14 "Langfristiges Fremdkapital"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#K15 "Fremdkapital"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#K16 "Eigenkapital i.w.S. + Mezzaninkapital"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#K17 "Gesamtkapital"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#K18 "Eventualverbindlichkeiten"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "B02-wert-berichtsjahr"
* item[=].item[=].text = "Wert Berichtsjahr"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "B02-wert-vorjahr"
* item[=].item[=].text = "Wert Vorjahr"

* item[+].type = #group
* item[=].linkId = "B03"
* item[=].text = "LKF B03 - Eigenmittelverteilungsrechnung (EVR)"
* item[=].repeats = true
* item[=].item[+].type = #string
* item[=].item[=].maxLength = 6
* item[=].item[=].linkId = "B03-krankenanstalten-traegernummer"
* item[=].item[=].text = "Krankenanstalten-/Trägernummer"
* item[=].item[+].type = #coding
* item[=].item[=].linkId = "B03-berichtstyp"
* item[=].item[=].text = "Berichtstyp"
* item[=].item[=].answerOption[0].valueCoding = $LKFSystem#K "KA-Ebene – Gesamtdarstellung/-bericht"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#G "Trägerebene – krankenanstaltenübergreifender (gemeinsamer) Bereich"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#A "Trägerebene – krankenanstaltenfremder Bereich"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#T "Trägerebene – Gesamtdarstellung/-bericht (KA-übergeordnete Institution)"
* item[=].item[+].type = #coding
* item[=].item[=].linkId = "B03-evr-index"
* item[=].item[=].text = "EVRIndex"
* item[=].item[=].answerOption[0].valueCoding = $LKFSystem#R01 "Eigenmittel i.w.S. + Mezzaninkapital"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#R02 "Mezzaninkapital"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#R03 "Eigenmittel i.w.S."
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#R04 "Investitionszuschüsse zum Anlagevermögen, verbraucht"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#R05 "Investitionszuschüsse zum Anlagevermögen, nicht verbraucht"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#R06 "Eigenmittel gem. §23 URG"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#R07 "Unversteuerte Rücklagen"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#R08 "Eigenkapital"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#R09 "Kapitalrücklagen"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#R10 "Gewinnrücklagen"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#R11 "Bilanzgewinn/Bilanzverlust"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#R12 "Nenn-Kapital (Grund-, Stammkapital)"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "B03-wert-berichtsjahr"
* item[=].item[=].text = "Wert Berichtsjahr"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "B03-wert-vorjahr"
* item[=].item[=].text = "Wert Vorjahr"

* item[+].type = #group
* item[=].linkId = "B04"
* item[=].text = "LKF B04 - Quellen- und Verwendungsanalyse (QVA)"
* item[=].repeats = true
* item[=].item[+].type = #string
* item[=].item[=].maxLength = 6
* item[=].item[=].linkId = "B04-krankenanstalten-traegernummer"
* item[=].item[=].text = "Krankenanstalten-/Trägernummer"
* item[=].item[+].type = #coding
* item[=].item[=].linkId = "B04-berichtstyp"
* item[=].item[=].text = "Berichtstyp"
* item[=].item[=].answerOption[0].valueCoding = $LKFSystem#K "KA-Ebene – Gesamtdarstellung/-bericht"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#G "Trägerebene – krankenanstaltenübergreifender (gemeinsamer) Bereich"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#A "Trägerebene – krankenanstaltenfremder Bereich"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#T "Trägerebene – Gesamtdarstellung/-bericht (KA-übergeordnete Institution)"
* item[=].item[+].type = #coding
* item[=].item[=].linkId = "B04-qva-kategorie"
* item[=].item[=].text = "Kategorie des QVAIndex"
* item[=].item[=].answerOption[0].valueCoding = $LKFSystem#E "Einnahmen"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#A "Ausgaben"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#S "Saldo"
* item[=].item[+].type = #coding
* item[=].item[=].linkId = "B04-qva-index-einnahmen"
* item[=].item[=].text = "QVAIndex – Einnahmen"
* item[=].item[=].answerOption[0].valueCoding = $LKFSystem#E01 "Umsatzerlöse (Gesamt)"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#E02 "Umsatzerlöse (stationär)"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#E03 "Umsatzerlöse (ambulant)"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#E04 "Umsatzerlöse (sonstige)"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#E05 "Ersatz klinischer Mehraufwand (laufender Betrieb)"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#E06 "Sonstige betriebliche Erlöse"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#E07 "Betriebliche Einnahmen vor Umlage Verwaltungskosten"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#E08 "Erlöse aus Umlage Verwaltungskosten"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#E09 "Betriebliche Einnahmen"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#E10 "Vorläufiges Ergebnis"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#E11 "Zuschüsse zum Betriebsabgang"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#E12 "Sonstige Betriebszuschüsse"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#E13 "GSBG-Beihilfe"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#E14 "Weiterleitung von Zuschüssen"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#E15 "Laufende Einnahmen aus Zuschüssen"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#E16 "Summe laufende Einnahmen"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#E17 "Laufendes Ergebnis"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#E18 "Erlöse aus Desinvestitionen"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#E19 "Investitionszuschüsse"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#E20 "Ersatz klinischer Mehraufwand (Investitionsmittel)"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#E21 "Weiterleitung von Zuschüssen"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#E22 "Einnahmen aus Investitionstätigkeit"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#E23 "Summe Einnahmen vor Finanzierung"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#E24 "Ergebnis vor Finanzierung"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#E25 "Aufnahme verzinsliches Fremdkapital"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#E26 "Aufnahme Mezzaninkapital"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#E27 "Zinsen und ähnliche Erträge"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#E28 "Zins- und Annuitätenzuschüsse"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#E29 "Einzahlungen Gesellschafter"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#E30 "Einnahmen Finanzierungstätigkeit"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#E31 "Summe aller Einnahmen"
* item[=].item[+].type = #coding
* item[=].item[=].linkId = "B04-qva-index-ausgaben"
* item[=].item[=].text = "QVAIndex – Ausgaben"
* item[=].item[=].answerOption[0].valueCoding = $LKFSystem#A01 "Materialaufwand und Aufwendungen für bezogene Leistungen"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#A02 "Personalaufwand"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#A03 "FLAF-Zuschüsse"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#A04 "Geringwertige Vermögensgegenstände/GWG"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#A05 "Miete unbewegliche Vermögensgegenstände"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#A06 "Sonstige betriebliche Aufwendungen"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#A07 "Veränderung Bestände fertige/unfertige Erzeugnisse"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#A08 "Andere aktivierte Eigenleistungen"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#A09 "Betriebliche Ausgaben vor Umlage Verwaltungskosten"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#A10 "Aufwendungen aus Umlage Verwaltungskosten"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#A11 "Betriebliche Ausgaben"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#A12 "Nicht abzugsfähige Vorsteuer"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#A13 "Übrige Steuern"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#A14 "Summe übrige Ausgaben"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#A15 "Summe laufende Ausgaben"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#A16 "Investitionen immaterielle Vermögensgegenstände"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#A17 "Investitionen Sachanlagen"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#A18 "Investitionen Finanzanlagen"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#A19 "Summe Ausgaben für Investitionen"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#A20 "Summe Ausgaben vor Finanzierung"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#A21 "Tilgung verzinsliches Fremdkapital"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#A22 "Tilgung Mezzaninkapital"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#A23 "Zinsen und ähnliche Aufwendungen"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#A24 "Rückzahlungen Gesellschafter"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#A25 "Ausgaben Finanzierungstätigkeit"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#A26 "Summe aller Ausgaben"
* item[=].item[+].type = #coding
* item[=].item[=].linkId = "B04-qva-index-saldo"
* item[=].item[=].text = "QVAIndex – Saldo"
* item[=].item[=].answerOption.valueCoding = $LKFSystem#S01 "Saldo Einnahmen/Ausgaben"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "B04-wert-berichtsjahr"
* item[=].item[=].text = "Wert Berichtsjahr"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "B04-wert-vorjahr"
* item[=].item[=].text = "Wert Vorjahr"

* item[+].type = #group
* item[=].linkId = "B05"
* item[=].text = "LKF B05 - Erlösstruktur (ES)"
* item[=].repeats = true
* item[=].item[+].type = #string
* item[=].item[=].maxLength = 6
* item[=].item[=].linkId = "B05-krankenanstalten-traegernummer"
* item[=].item[=].text = "Krankenanstalten-/Trägernummer"
* item[=].item[+].type = #coding
* item[=].item[=].linkId = "B05-berichtstyp"
* item[=].item[=].text = "Berichtstyp"
* item[=].item[=].answerOption[0].valueCoding = $LKFSystem#K "KA-Ebene – Gesamtdarstellung/-bericht"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#G "Trägerebene – krankenanstaltenübergreifender (gemeinsamer) Bereich"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#A "Trägerebene – krankenanstaltenfremder Bereich"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#T "Trägerebene – Gesamtdarstellung/-bericht (KA-übergeordnete Institution)"
* item[=].item[+].type = #coding
* item[=].item[=].linkId = "B05-erloesindex"
* item[=].item[=].text = "ErlösIndex"
* item[=].item[=].answerOption[0].valueCoding = $LKFSystem#U01 "LKF-Gebührenersätze"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#U02 "LKF-Gebühren"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#U03 "Pflegegebührenersätze"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#U04 "Amtliche Pflegegebühren"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#U05 "Anstaltsgebühren inkl. Anteile an Arzthonoraren"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#U06 "Kostenbeiträge (§ 27a KAKuG)"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#U07 "Sonstige Erlöse akutstationärer Bereich (Pauschalabgeltungen)"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#U08 "Stationäre Erlöse Gesamt"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#U20 "LKF-Gebührenersätze (leistungsbezogen/ambulant)"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#U21 "LKF-Gebührenersätze (Pauschalabgeltungen/ambulant)"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#U09 "Leistungsbezogene Vergütung"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#U10 "Zeitraumbezogene Vergütung (Pauschalabgeltungen)"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#U11 "Sonstige Erlöse ambulanter Bereich"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#U12 "Ambulante Erlöse Gesamt"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#U13 "Erlöse aus sonstigen Patientenversorgungsleistungen"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#U14 "Begleitpersonen (§ 27a KAKuG)"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#U15 "Erlöse aus dem Pflege-/Rehabilitations-/Heilstättenbereich"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#U16 "Sonstige Umsatzerlöse Gesamt"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#U22 "Vorhaltekostenabgeltung stationär und ambulant (Pauschalabgeltungen)"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#U17 "Umsatzerlöse"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#U18 "Ersatz für klinischen Mehraufwand (laufender Betrieb)"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#U19 "Sonstige betriebliche Erträge"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "B05-wert-gesamt"
* item[=].item[=].text = "Wert Gesamt"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "B05-wert-lgf"
* item[=].item[=].text = "Wert LGF"

* item[+].type = #group
* item[=].linkId = "B06"
* item[=].text = "LKF B06 - Zuschussstruktur (ZS)"
* item[=].repeats = true
* item[=].item[+].type = #string
* item[=].item[=].maxLength = 6
* item[=].item[=].linkId = "B06-krankenanstalten-traegernummer"
* item[=].item[=].text = "Krankenanstalten-/Trägernummer"
* item[=].item[+].type = #coding
* item[=].item[=].linkId = "B06-berichtstyp"
* item[=].item[=].text = "Berichtstyp"
* item[=].item[=].answerOption[0].valueCoding = $LKFSystem#K "KA-Ebene – Gesamtdarstellung/-bericht"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#G "Trägerebene – krankenanstaltenübergreifender (gemeinsamer) Bereich"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#A "Trägerebene – krankenanstaltenfremder Bereich"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#T "Trägerebene – Gesamtdarstellung/-bericht (KA-übergeordnete Institution)"
* item[=].item[+].type = #coding
* item[=].item[=].linkId = "B06-finanzierungstraegerindex"
* item[=].item[=].text = "FinanzierungsträgerIndex"
* item[=].item[=].answerOption[0].valueCoding = $LKFSystem#LF "Landesgesundheitsfonds"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#LD "Land"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#GM "Gemeinde(n)"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#RT "Rechtsträger"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#SO "Sonstige"
* item[=].item[+].type = #coding
* item[=].item[=].linkId = "B06-zuschussartindex"
* item[=].item[=].text = "ZuschussartIndex"
* item[=].item[=].answerOption[0].valueCoding = $LKFSystem#Z01 "Zuschüsse zum Betriebsabgang"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#Z02 "Sonstige Betriebszuschüsse"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#Z03 "Betriebszuschüsse"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#Z04 "Investitionszuschüsse"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#Z05 "Zins- und Annuitätenzuschüsse"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "B06-zuschuss"
* item[=].item[=].text = "Zuschuss"

* item[+].type = #group
* item[=].linkId = "G01"
* item[=].text = "LKF G01 - Großgerätebasisdaten"
* item[=].repeats = true
* item[=].item[+].type = #string
* item[=].item[=].maxLength = 6
* item[=].item[=].linkId = "G01-krankenanstaltennummer"
* item[=].item[=].text = "Krankenanstaltennummer"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 8
* item[=].item[=].linkId = "G01-funktionscode"
* item[=].item[=].text = "Funktionscode"
* item[=].item[+].type = #string
* item[=].item[=].maxLength = 4
* item[=].item[=].linkId = "G01-grosgeraet_positionsnummer"
* item[=].item[=].text = "Großgerät – Positionsnummer"
* item[=].item[+].type = #coding
* item[=].item[=].linkId = "G01-grosgeraet_art"
* item[=].item[=].text = "Großgerät – Art (Geräteindex)"
* item[=].item[=].answerOption[0].valueCoding = $LKFSystem#C10 "Multi-Slice CT <= 16-zeilig"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#C06 "Multi-Slice CT = 64-zeilig"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#C08 "Multi-Slice CT >= 128-zeilig, Dual Source"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#C30 "Funktionsgerät (CT)"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#C49 "Sonstige CT-Geräte"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#M01 "Magnetresonanz-Tomographiegerät (geschlossen) – Feldstärke < 1 Tesla"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#M03 "Magnetresonanz-Tomographiegerät – Feldstärke <= 1,5 Tesla"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#M04 "Magnetresonanz-Tomographiegerät (offen) – Feldstärke < 1 Tesla"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#M05 "Magnetresonanz-Tomographiegerät (offen) – Feldstärke >= 1 Tesla"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#M07 "Magnetresonanz-Tomographiegerät – Feldstärke = 3 Tesla"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#M30 "Funktionsgerät (MR)"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#M49 "Sonstige MR-Geräte"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#H00 "Coronarangiographie – Herzkatheterarbeitsplatz"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#H30 "Funktionsgerät (COR in Hybrid-OP)"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#H49 "Sonstige Herzkatheterarbeitsplätze"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#S01 "Linearbeschleuniger"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#S02 "Linearbeschleuniger inkl. Stereotaxiezusatz"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#S03 "Linearbeschleuniger, geeignet für intraoperativen Einsatz"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#S30 "Funktionsgerät (STR)"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#S49 "Sonstige Hochvolttherapiegeräte"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#E02 "Emissions-Computertomographie, SPECT-fähig"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#E03 "SPECT-Kamera mit Koinzidenzmessung"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#E49 "Sonstige ECT-Geräte"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#P02 "Positronenemissions-Tomographiegeräte – PET-Scanner"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#P03 "PET-CT"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#P49 "Sonstige PET-Geräte"
* item[=].item[+].type = #string
* item[=].item[=].maxLength = 100
* item[=].item[=].linkId = "G01-grosgeraet_type"
* item[=].item[=].text = "Großgerät – Type"
* item[=].item[+].type = #string
* item[=].item[=].maxLength = 100
* item[=].item[=].linkId = "G01-hersteller"
* item[=].item[=].text = "Hersteller"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 4
* item[=].item[=].linkId = "G01-baujahr"
* item[=].item[=].text = "Baujahr"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "G01-anschaffungskosten"
* item[=].item[=].text = "Anschaffungskosten"
* item[=].item[+].type = #string
* item[=].item[=].maxLength = 200
* item[=].item[=].linkId = "G01-betriebszeiten"
* item[=].item[=].text = "Betriebszeiten"
* item[=].item[+].type = #string
* item[=].item[=].maxLength = 200
* item[=].item[=].linkId = "G01-kommentar"
* item[=].item[=].text = "Kommentar"

* item[+].type = #group
* item[=].linkId = "G02"
* item[=].text = "LKF G02 - Großgeräteleistungsdaten"
* item[=].repeats = true
* item[=].item[+].type = #string
* item[=].item[=].maxLength = 6
* item[=].item[=].linkId = "G02-krankenanstaltennummer"
* item[=].item[=].text = "Krankenanstaltennummer"
* item[=].item[+].type = #string
* item[=].item[=].maxLength = 4
* item[=].item[=].linkId = "G02-grosgeraet-positionsnummer"
* item[=].item[=].text = "Großgerät – Positionsnummer"
* item[=].item[+].type = #coding
* item[=].item[=].linkId = "G02-grosgeraet-leistungsindex"
* item[=].item[=].text = "Großgerät – Leistungsindex"
* item[=].item[=].answerOption[0].valueCoding = $LKFSystem#C50 "Computertomographie (CT) – Alle Leistungen"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#M50 "Magnetresonanz-Tomographie (MR) – Alle Leistungen"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#H51 "Coronarangiographie (COR)"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#H52 "Coronarangiographie - PTCA ein Gefäß"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#H53 "Coronarangiographie - PTCA mehr als ein Gefäß"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#H54 "Coronarangiographie - Stentimplantation"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#H55 "Coronarangiographie - Ablation"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#H56 "Coronarangiographie - Elektrophysiologie"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#H99 "Coronarangiographie - Sonstige Eingriffe bei strukturellen Herzerkrankungen"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#S54 "Strahlentherapie - Bestrahlungstermine für strahlentherapeutische Leistungen"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#S55 "Strahlentherapie - Bestrahlungstermine für radiochirurgische Leistungen"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#S56 "Strahlentherapie - Bestrahlungstermine für intensitätsmodulierte Strahlentherapie (IMRT)"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#E51 "Emissions-Computertomographie (ECT) – Untersuchungen mit planarer Technik"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#E52 "Emissions-Computertomographie (ECT) – Untersuchungen mit Schichttechnik"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#P51 "Positronenemissions-Tomographie (PET) – Untersuchungen mit 18-FDG"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#P99 "Positronenemissions-Tomographie (PET) – Untersuchungen mit sonstigen Tracern"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "G02-ambulante-frequenzen"
* item[=].item[=].text = "Ambulante Frequenzen"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "G02-stationaere-frequenzen"
* item[=].item[=].text = "Stationäre Frequenzen"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 4
* item[=].item[=].linkId = "G02-durchschnittliche-dauer-je-frequenz"
* item[=].item[=].text = "Durchschnittliche Dauer je Frequenz in Minuten"



* item[+].type = #group
* item[=].linkId = "K02"
* item[=].text = "LKF K02 - KA-Stammdaten"
* item[=].repeats = true
* item[=].item[+].type = #string
* item[=].item[=].maxLength = 6
* item[=].item[=].linkId = "K2-krankenanstaltennummer"
* item[=].item[=].text = "Krankenanstaltennummer"
* item[=].item[+].type = #string
* item[=].item[=].maxLength = 150
* item[=].item[=].linkId = "K2-krankenanstalt-bezeichnung"
* item[=].item[=].text = "Krankenanstalt – Bezeichnung"
* item[=].item[+].type = #string
* item[=].item[=].maxLength = 50
* item[=].item[=].linkId = "K2-krankenanstalt-straße"
* item[=].item[=].text = "Krankenanstalt – Straße"
* item[=].item[+].type = #string
* item[=].item[=].maxLength = 6
* item[=].item[=].linkId = "K2-krankenanstalt-postleitzahl"
* item[=].item[=].text = "Krankenanstalt – Postleitzahl"
* item[=].item[+].type = #string
* item[=].item[=].maxLength = 50
* item[=].item[=].linkId = "K2-krankenanstalt-ort"
* item[=].item[=].text = "Krankenanstalt – Ort"
* item[=].item[+].type = #string
* item[=].item[=].maxLength = 20
* item[=].item[=].linkId = "K2-krankenanstalt-telefon"
* item[=].item[=].text = "Krankenanstalt – Telefon"
* item[=].item[+].type = #string
* item[=].item[=].maxLength = 20
* item[=].item[=].linkId = "K2-krankenanstalt-fax"
* item[=].item[=].text = "Krankenanstalt – Fax"
* item[=].item[+].type = #string
* item[=].item[=].maxLength = 100
* item[=].item[=].linkId = "K2-krankenanstalt-homepage"
* item[=].item[=].text = "Krankenanstalt – Homepage"
* item[=].item[+].type = #string
* item[=].item[=].maxLength = 150
* item[=].item[=].linkId = "K2-rechtsträger-bezeichnung"
* item[=].item[=].text = "Rechtsträger – Bezeichnung"
* item[=].item[+].type = #string
* item[=].item[=].maxLength = 50
* item[=].item[=].linkId = "K2-rechtsträger-straße"
* item[=].item[=].text = "Rechtsträger – Straße"
* item[=].item[+].type = #string
* item[=].item[=].maxLength = 6
* item[=].item[=].linkId = "K2-rechtsträger-postleitzahl"
* item[=].item[=].text = "Rechtsträger – Postleitzahl"
* item[=].item[+].type = #string
* item[=].item[=].maxLength = 50
* item[=].item[=].linkId = "K2-rechtsträger-ort"
* item[=].item[=].text = "Rechtsträger – Ort"
* item[=].item[+].type = #string
* item[=].item[=].maxLength = 20
* item[=].item[=].linkId = "K2-rechtsträger-telefon"
* item[=].item[=].text = "Rechtsträger – Telefon"
* item[=].item[+].type = #string
* item[=].item[=].maxLength = 20
* item[=].item[=].linkId = "K2-rechtsträger-fax"
* item[=].item[=].text = "Rechtsträger – Fax"
* item[=].item[+].type = #string
* item[=].item[=].maxLength = 100
* item[=].item[=].linkId = "K2-rechtsträger-homepage"
* item[=].item[=].text = "Rechtsträger – Homepage"
* item[=].item[+].type = #string
* item[=].item[=].maxLength = 100
* item[=].item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/entryFormat"
* item[=].item[=].extension[=].valueString = "NACHNAME/Vorname/Titel"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/regex"
* item[=].item[=].extension[=].valueString = "^[A-ZÄÖÜ]+\\/[A-ZÄÖÜ][a-zäöüß]+\\/[A-Za-zÄÖÜäöüß\\.]+$"
* item[=].item[=].linkId = "K2-ärztliche-leitung"
* item[=].item[=].text = "Ärztliche Leitung"
* item[=].item[=].item.linkId = "K2-ärztliche-leitung_helpText"
* item[=].item[=].item.type = #display
* item[=].item[=].item.text = "Bitte geben Sie den Namen im Format NACHNAME/Vorname/Titel ein, z. B. MÜLLER/Anna/Dr."
* item[=].item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item.extension.valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#help "Help-Button"
* item[=].item[=].item.extension.valueCodeableConcept.text = "Help-Button"
* item[=].item[+].type = #string
* item[=].item[=].maxLength = 100
* item[=].item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/entryFormat"
* item[=].item[=].extension[=].valueString = "NACHNAME/Vorname/Titel"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/regex"
* item[=].item[=].extension[=].valueString = "^[A-ZÄÖÜ]+\\/[A-ZÄÖÜ][a-zäöüß]+\\/[A-Za-zÄÖÜäöüß\\.]+$"
* item[=].item[=].linkId = "K2-verwaltungsleitung"
* item[=].item[=].text = "Verwaltungsleitung"
* item[=].item[=].item.linkId = "K2-verwaltungsleitung_helpText"
* item[=].item[=].item.type = #display
* item[=].item[=].item.text = "Bitte geben Sie den Namen im Format NACHNAME/Vorname/Titel ein, z. B. MÜLLER/Anna/Dr."
* item[=].item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item.extension.valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#help "Help-Button"
* item[=].item[=].item.extension.valueCodeableConcept.text = "Help-Button"
* item[=].item[+].type = #string
* item[=].item[=].maxLength = 100
* item[=].item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/entryFormat"
* item[=].item[=].extension[=].valueString = "NACHNAME/Vorname/Titel"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/regex"
* item[=].item[=].extension[=].valueString = "^[A-ZÄÖÜ]+\\/[A-ZÄÖÜ][a-zäöüß]+\\/[A-Za-zÄÖÜäöüß\\.]+$"
* item[=].item[=].linkId = "K2-pflegedienstleitung"
* item[=].item[=].text = "Pflegedienstleitung"
* item[=].item[=].item.linkId = "K2-pflegedienstleitung_helpText"
* item[=].item[=].item.type = #display
* item[=].item[=].item.text = "Bitte geben Sie den Namen im Format NACHNAME/Vorname/Titel ein, z. B. MÜLLER/Anna/Dr."
* item[=].item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item.extension.valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#help "Help-Button"
* item[=].item[=].item.extension.valueCodeableConcept.text = "Help-Button"


* item[+].type = #group
* item[=].linkId = "K03"
* item[=].text = "LKF K03 - KA-Statistik (Ressourcen und Inanspruchnahme)"
* item[=].repeats = true
// Krankenanstaltennummer
* item[=].item[+].linkId = "K3-krankenanstaltennummer"
* item[=].item[=].text = "Krankenanstaltennummer"
* item[=].item[=].type = #string
* item[=].item[=].maxLength = 6
// Systemisierte Betten insgesamt
* item[=].item[+].linkId = "K3-systemisierte-betten-insgesamt"
* item[=].item[=].text = "Systemisierte Betten insgesamt"
* item[=].item[=].type = #integer
* item[=].item[=].maxLength = 6
// Systemisierte Betten – Sonderklasse
* item[=].item[+].linkId = "K3-systemisierte-betten-sonderklasse"
* item[=].item[=].text = "Systemisierte Betten – Sonderklasse"
* item[=].item[=].type = #integer
* item[=].item[=].maxLength = 6
// Tatsächlich aufgestellte Betten insgesamt
* item[=].item[+].linkId = "K3-tatsachlich-aufgestellte-betten-insgesamt"
* item[=].item[=].text = "Tatsächlich aufgestellte Betten insgesamt"
* item[=].item[=].type = #integer
* item[=].item[=].maxLength = 6
// Tatsächlich aufgestellte Betten – Sonderklasse
* item[=].item[+].linkId = "K3-tatsachlich-aufgestellte-betten-sonderklasse"
* item[=].item[=].text = "Tatsächlich aufgestellte Betten – Sonderklasse"
* item[=].item[=].type = #integer
* item[=].item[=].maxLength = 6
// Belagstage – Sonderklasse
* item[=].item[+].linkId = "K3-belagstage-sonderklasse"
* item[=].item[=].text = "Belagstage – Sonderklasse"
* item[=].item[=].type = #integer
* item[=].item[=].maxLength = 6
// Aufnahmen – Sonderklasse
* item[=].item[+].linkId = "K3-aufnahmen-sonderklasse"
* item[=].item[=].text = "Aufnahmen – Sonderklasse"
* item[=].item[=].type = #integer
* item[=].item[=].maxLength = 6
// Vom Vorjahr Verbliebene – Sonderklasse
* item[=].item[+].linkId = "K3-vom-vorjahr-verbliebene-sonderklasse"
* item[=].item[=].text = "Vom Vorjahr Verbliebene – Sonderklasse"
* item[=].item[=].type = #integer
* item[=].item[=].maxLength = 6
// Entlassungen – Sonderklasse
* item[=].item[+].linkId = "K3-entlassungen-sonderklasse"
* item[=].item[=].text = "Entlassungen – Sonderklasse"
* item[=].item[=].type = #integer
* item[=].item[=].maxLength = 6
// Verstorbene – Sonderklasse
* item[=].item[+].linkId = "K3-verstorbene-sonderklasse"
* item[=].item[=].text = "Verstorbene – Sonderklasse"
* item[=].item[=].type = #integer
* item[=].item[=].maxLength = 6
// Aufnahmen von Begleitpersonen
* item[=].item[+].linkId = "K3-aufnahmen-von-begleitpersonen"
* item[=].item[=].text = "Aufnahmen von Begleitpersonen"
* item[=].item[=].type = #integer
* item[=].item[=].maxLength = 6
// Belagstage von Begleitpersonen
* item[=].item[+].linkId = "K3-belagstage-von-begleitpersonen"
* item[=].item[=].text = "Belagstage von Begleitpersonen"
* item[=].item[=].type = #integer
* item[=].item[=].maxLength = 6
// Ambulante Patienten/Patientinnen
* item[=].item[+].linkId = "K3-ambulante-patienten-patientinnen"
* item[=].item[=].text = "Ambulante Patienten/Patientinnen"
* item[=].item[=].type = #integer
* item[=].item[=].maxLength = 6
// Ambulante Betreuungsplätze
* item[=].item[+].linkId = "K3-ambulante-betreuungsplatze"
* item[=].item[=].text = "Ambulante Betreuungsplätze"
* item[=].item[=].type = #integer
* item[=].item[=].maxLength = 6
// OP-Tische
* item[=].item[+].linkId = "K3-op-tische"
* item[=].item[=].text = "OP-Tische"
* item[=].item[=].type = #integer
* item[=].item[=].maxLength = 6
// Entbindungsplätze
* item[=].item[+].linkId = "K3-entbindungsplatze"
* item[=].item[=].text = "Entbindungsplätze"
* item[=].item[=].type = #integer
* item[=].item[=].maxLength = 6
// Postoperative Überwachungsplätze
* item[=].item[+].linkId = "K3-postoperative-uberwachungsplatze"
* item[=].item[=].text = "Postoperative Überwachungsplätze"
* item[=].item[=].type = #integer
* item[=].item[=].maxLength = 6
// Dialyseplätze
* item[=].item[+].linkId = "K3-dialyseplatze"
* item[=].item[=].text = "Dialyseplätze"
* item[=].item[=].type = #integer
* item[=].item[=].maxLength = 6
// Obduktionen durch Anstaltspersonal
* item[=].item[+].linkId = "K3-obduktionen-durch-anstaltspersonal"
* item[=].item[=].text = "Obduktionen durch Anstaltspersonal"
* item[=].item[=].type = #integer
* item[=].item[=].maxLength = 6
// Obduktionen durch Fremdpersonal
* item[=].item[+].linkId = "K3-obduktionen-durch-fremdpersonal"
* item[=].item[=].text = "Obduktionen durch Fremdpersonal"
* item[=].item[=].type = #integer
* item[=].item[=].maxLength = 6
// Entbindungen – Lebendgeborene
* item[=].item[+].linkId = "K3-entbindungen-lebendgeborene"
* item[=].item[=].text = "Entbindungen – Lebendgeborene"
* item[=].item[=].type = #integer
* item[=].item[=].maxLength = 6
// Entbindungen – Totgeborene
* item[=].item[+].linkId = "K3-entbindungen-totgeborene"
* item[=].item[=].text = "Entbindungen – Totgeborene"
* item[=].item[=].type = #integer
* item[=].item[=].maxLength = 6


* item[+].type = #group
* item[=].linkId = "K04"
* item[=].text = "LKF K04 - KA-Statistik (Personal-Vollzeitäquivalente nach Funktionsgruppen und Dienstverhältnis)"
* item[=].repeats = true
* item[=].item[+].type = #string
* item[=].item[=].maxLength = 6
* item[=].item[=].linkId = "K4-krankenanstaltennummer"
* item[=].item[=].text = "Krankenanstaltennummer"
* item[=].item[+].type = #coding
* item[=].item[=].linkId = "K4-personalgruppenindex"
* item[=].item[=].text = "Personalgruppenindex"
* item[=].item[=].answerOption[0].valueCoding = $LKFSystem#111 "Ärzte/Ärztinnen"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#112 "Apotheker:innen, Chemiker:innen, Physiker:innen u.ä."
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#113 "Hebammen (inkl. Schüler:innen)"
* item[=].item[+].type = #decimal
* item[=].item[=].maxLength = 9
* item[=].item[=].linkId = "K4-personal-vollzeitäquivalente"
* item[=].item[=].text = "Personal – Vollzeitäquivalente"


* item[+].type = #group
* item[=].linkId = "K05"
* item[=].text = "LKF K05 - KA-Statistik (Personal-Vollzeitäquivalente nach Funktionsgruppen und Dienstverhältnis)"
* item[=].repeats = true
// Krankenanstaltennummer
* item[=].item[+].linkId = "K5-krankenanstaltennummer"
* item[=].item[=].text = "Krankenanstaltennummer"
* item[=].item[=].type = #string
* item[=].item[=].maxLength = 6
// Fachhauptbereichsindex
* item[=].item[+].linkId = "K5-fachhauptbereichsindex"
* item[=].item[=].text = "Fachhauptbereichsindex"
* item[=].item[=].type = #string
* item[=].item[=].maxLength = 2
// Fachärzte/-ärztinnen – Kopfzahl
* item[=].item[+].linkId = "K5-facharzte-kopfzahl"
* item[=].item[=].text = "Fachärzte/-ärztinnen – Kopfzahl"
* item[=].item[=].type = #integer
* item[=].item[=].maxLength = 6
// Ärzte/Ärztinnen für Allgemeinmedizin – Kopfzahl
* item[=].item[+].linkId = "K5-allgemeinmedizin-kopfzahl"
* item[=].item[=].text = "Ärzte/Ärztinnen für Allgemeinmedizin – Kopfzahl"
* item[=].item[=].type = #integer
* item[=].item[=].maxLength = 6
// Fachärzte/-ärztinnen in Ausbildung – Kopfzahl
* item[=].item[+].linkId = "K5-facharzte-ausbildung-kopfzahl"
* item[=].item[=].text = "Fachärzte/-ärztinnen in Ausbildung – Kopfzahl"
* item[=].item[=].type = #integer
* item[=].item[=].maxLength = 6
// Ärzte/Ärztinnen für Allgemeinmedizin in Ausbildung – Kopfzahl
* item[=].item[+].linkId = "K5-allgemeinmedizin-ausbildung-kopfzahl"
* item[=].item[=].text = "Ärzte/Ärztinnen für Allgemeinmedizin in Ausbildung – Kopfzahl"
* item[=].item[=].type = #integer
* item[=].item[=].maxLength = 6
// Fachärzte/-ärztinnen – Vollzeitäquivalente
* item[=].item[+].linkId = "K5-facharzte-vollzeitäquivalente"
* item[=].item[=].text = "Fachärzte/-ärztinnen – Vollzeitäquivalente"
* item[=].item[=].type = #decimal
* item[=].item[=].maxLength = 9
// Ärzte/Ärztinnen für Allgemeinmedizin – Vollzeitäquivalente
* item[=].item[+].linkId = "K5-allgemeinmedizin-vollzeitäquivalente"
* item[=].item[=].text = "Ärzte/Ärztinnen für Allgemeinmedizin – Vollzeitäquivalente"
* item[=].item[=].type = #decimal
* item[=].item[=].maxLength = 9
// Fachärzte/-ärztinnen in Ausbildung – Vollzeitäquivalente
* item[=].item[+].linkId = "K5-facharzte-ausbildung-vollzeitäquivalente"
* item[=].item[=].text = "Fachärzte/-ärztinnen in Ausbildung – Vollzeitäquivalente"
* item[=].item[=].type = #decimal
* item[=].item[=].maxLength = 9
// Ärzte/Ärztinnen für Allgemeinmedizin in Ausbildung – Vollzeitäquivalente
* item[=].item[+].linkId = "K5-allgemeinmedizin-ausbildung-vollzeitäquivalente"
* item[=].item[=].text = "Ärzte/Ärztinnen für Allgemeinmedizin in Ausbildung – Vollzeitäquivalente"
* item[=].item[=].type = #decimal
* item[=].item[=].maxLength = 9



* item[+].type = #group
* item[=].linkId = "K06"
* item[=].text = "LKF K06 - KA-Statistik (Konsiliarärztlicher Dienst)"
* item[=].repeats = true
* item[=].item[+].type = #string
* item[=].item[=].maxLength = 6
* item[=].item[=].linkId = "K6-krankenanstaltennummer"
* item[=].item[=].text = "Krankenanstaltennummer"
* item[=].item[+].type = #coding
* item[=].item[=].linkId = "K6-fachrichtungsindex"
* item[=].item[=].text = "Fachrichtungsindex"
* item[=].item[=].answerOption[0].valueCoding = $LKFSystem#00 "Allgemeinmedizin"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#01 "Anästhesiologie und Intensivmedizin"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#02 "Augenheilkunde und Optometrie"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 6
* item[=].item[=].linkId = "K6-konsiliarärztinnen-kopfzahl"
* item[=].item[=].text = "Konsiliarärzte/-ärztinnen – Kopfzahl"

* item[+].type = #group
* item[=].linkId = "K07"
* item[=].text = "LKF K07 - KA-Statistik (Personal der nicht-ärztlichen Gesundheitsberufe)"
* item[=].repeats = true
* item[=].item[+].type = #string
* item[=].item[=].maxLength = 6
* item[=].item[=].linkId = "K7-krankenanstaltennummer"
* item[=].item[=].text = "Krankenanstaltennummer"
* item[=].item[+].type = #coding
* item[=].item[=].linkId = "K7-index-nicht-ärztliche-gesundheitsberufe"
* item[=].item[=].text = "Index nicht-ärztliche Gesundheitsberufe"
* item[=].item[=].answerOption[0].valueCoding = $LKFSystem#30 "Hebammen"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#41 "Allgemeine Gesundheits- und Krankenpflege"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#42 "Kinder- und Jugendlichenpflege"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 6
* item[=].item[=].linkId = "K7-personal-männlich – kopfzahl"
* item[=].item[=].text = "Personal männlich – Kopfzahl"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 6
* item[=].item[=].linkId = "K7-personal-weiblich-kopfzahl"
* item[=].item[=].text = "Personal weiblich – Kopfzahl"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 6
* item[=].item[=].linkId = "K7-kopfzahl-eu-ausländer"
* item[=].item[=].text = "Darunter EU-Ausländer/innen insgesamt – Kopfzahl"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 6
* item[=].item[=].linkId = "K7-kopfzahl-nicht-eu-ausländer"
* item[=].item[=].text = "Darunter Nicht-EU-Ausländer/innen insgesamt – Kopfzahl"
* item[=].item[+].type = #decimal
* item[=].item[=].maxLength = 9
* item[=].item[=].linkId = "K7-personal-männlich-vollzeitäquivalente"
* item[=].item[=].text = "Personal männlich – Vollzeitäquivalente"
* item[=].item[+].type = #decimal
* item[=].item[=].maxLength = 9
* item[=].item[=].linkId = "K7-personal-weiblich-vollzeitäquivalente"
* item[=].item[=].text = "Personal weiblich – Vollzeitäquivalente"
* item[=].item[+].type = #decimal
* item[=].item[=].maxLength = 9
* item[=].item[=].linkId = "K7-vollzeitäquivalente-eu-ausländer"
* item[=].item[=].text = "Darunter EU-Ausländer/innen insgesamt – Vollzeitäquivalente"
* item[=].item[+].type = #decimal
* item[=].item[=].maxLength = 9
* item[=].item[=].linkId = "K7-vollzeitäquivalente-eu-nicht-ausländer"
* item[=].item[=].text = "Darunter Nicht-EU-Ausländer/innen insgesamt – Vollzeitäquivalente"

* item[+].type = #group
* item[=].linkId = "K08"
* item[=].text = "LKF K08 - Kostenstellen-Statistik und Kostennachweis (Bettenführende Hauptkostenstelle)"
* item[=].repeats = true
* item[=].item[+].type = #string
* item[=].item[=].maxLength = 6
* item[=].item[=].linkId = "K8-krankenanstaltennummer"
* item[=].item[=].text = "Krankenanstaltennummer"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 8
* item[=].item[=].linkId = "K8-bettenführende-hauptkostenstelle-funktionscode"
* item[=].item[=].text = "Bettenführende Hauptkostenstelle – Funktionscode"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 6
* item[=].item[=].linkId = "K8-systemisierte-betten"
* item[=].item[=].text = "Systemisierte Betten"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 6
* item[=].item[=].linkId = "K8-tatsächlich-aufgestellte-betten"
* item[=].item[=].text = "Tatsächlich aufgestellte Betten"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 6
* item[=].item[=].linkId = "K8-nettogrundrissfläche"
* item[=].item[=].text = "Nettogrundrissfläche"
* item[=].item[+].type = #decimal
* item[=].item[=].maxLength = 9
* item[=].item[=].linkId = "K8-ärzte-vollzeitäquivalente"
* item[=].item[=].text = "Ärzte/Ärztinnen – Vollzeitäquivalente (MLV 1-1)"
* item[=].item[+].type = #decimal
* item[=].item[=].maxLength = 9
* item[=].item[=].linkId = "K8-apotheker-chemiker-physiker-vollzeitäquivalente"
* item[=].item[=].text = "Apotheker/innen, Chemiker/innen, Physiker/innen u.ä. – Vollzeitäquivalente (MLV 1-2)"
* item[=].item[+].type = #decimal
* item[=].item[=].maxLength = 9
* item[=].item[=].linkId = "K8-hebammen-vollzeitäquivalente"
* item[=].item[=].text = "Hebammen – Vollzeitäquivalente (MLV 1-3)"
* item[=].item[+].type = #decimal
* item[=].item[=].maxLength = 9
* item[=].item[=].linkId = "K8-weitere-gesundheitsberufe-vollzeitäquivalente"
* item[=].item[=].text = "Gehobener Dienst für Gesundheits- und Krankenpflege und weitere Gesundheitsberufe – Vollzeitäquivalente (MLV 1-4)"
* item[=].item[+].type = #decimal
* item[=].item[=].maxLength = 9
* item[=].item[=].linkId = "K8-medizinisch-technische-dienste"
* item[=].item[=].text = "Gehobene medizinisch-technische Dienste, medizinisch-technischer Fachdienst und Masseure/ Masseurinnen – Vollzeitäquivalente (MLV 1-5)"
* item[=].item[+].type = #decimal
* item[=].item[=].maxLength = 9
* item[=].item[=].linkId = "K8-sanitäter–vollzeitäquivalente"
* item[=].item[=].text = "Sanitäter, Pflegehilfe und MA – Vollzeitäquivalente (MLV 1-6)"
* item[=].item[+].type = #decimal
* item[=].item[=].maxLength = 9
* item[=].item[=].linkId = "K8-verwaltungs-und-kanzleipersonal–vollzeitäquivalente"
* item[=].item[=].text = "Verwaltungs- und Kanzleipersonal – Vollzeitäquivalente (MLV 1-7)"
* item[=].item[+].type = #decimal
* item[=].item[=].maxLength = 9
* item[=].item[=].linkId = "K8-betriebspersonal-vollzeitäquivalente"
* item[=].item[=].text = "Betriebspersonal – Vollzeitäquivalente (MLV 1-8)"
* item[=].item[+].type = #decimal
* item[=].item[=].maxLength = 9
* item[=].item[=].linkId = "K8-sonstige-vollzeitäquivalente"
* item[=].item[=].text = "Sonstiges Personal – Vollzeitäquivalente (MLV 1-9)"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "K8-personalkosten"
* item[=].item[=].text = "Personalkosten (KOAGR01)"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "K8-kosten-med-güter"
* item[=].item[=].text = "Kosten für medizinische Gebrauchs- und Verbrauchsgüter (KOAGR02)"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "K8-kosten-nicht-med-güter"
* item[=].item[=].text = "Kosten für nicht-medizinische Gebrauchs- und Verbrauchsgüter (KOAGR03)"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "K8-kosten-med-fremdleistungen"
* item[=].item[=].text = "Kosten für medizinische Fremdleistungen (KOAGR04)"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "K8-kosten-nicht-med-fremdleistungen"
* item[=].item[=].text = "Kosten für nicht-medizinische Fremdleistungen (KOAGR05)"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "K8-energiekosten"
* item[=].item[=].text = "Energiekosten (KOAGR06)"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "K8-sonstige-kosten"
* item[=].item[=].text = "Abgaben, Beiträge, Gebühren und sonstige Kosten (KOAGR07)"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "K8-kalkulatorische-anlagekapitalkosten"
* item[=].item[=].text = "Kalkulatorische Anlagekapitalkosten (KOAGR08)"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "K8-kosten-med-vor-und-entsorgung"
* item[=].item[=].text = "Kosten der vorwiegend medizinisch bedingten Ver- und Entsorgung (KOAGR11)"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "K8-kosten-nicht-med-vor-und-entsorgung"
* item[=].item[=].text = "Kosten der vorwiegend nicht-medizinisch bedingten Ver- und Entsorgung (KOAGR12)"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "K8-kosten-verwaltung"
* item[=].item[=].text = "Kosten der Verwaltung (KOAGR13)"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "K8-andere-sekundärkosten (KOAGR14)"
* item[=].item[=].text = "Andere Sekundärkosten (KOAGR14)"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "K8-kostenminderungen"
* item[=].item[=].text = "Kostenminderungen"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "K8-summe-sum-innerbetrieblicher-leistungen"
* item[=].item[=].text = "Summe abgegebener innerbetrieblicher Leistungen"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "K8-unter-überdeckung"
* item[=].item[=].text = "Unter- oder Überdeckung"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "K8-endkosten-kostenstelle"
* item[=].item[=].text = "Endkosten der Kostenstelle"



* item[+].type = #group
* item[=].linkId = "K09"
* item[=].text = "LKF K09 - Kostenstellen-Statistik und Kostennachweis (nicht-bettenführende Hauptkostenstelle)"
* item[=].repeats = true
* item[=].item[+].type = #string
* item[=].item[=].maxLength = 6
* item[=].item[=].linkId = "K9-krankenanstaltennummer"
* item[=].item[=].text = "Krankenanstaltennummer"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 8
* item[=].item[=].linkId = "K9-nicht-bettenführende-hauptkostenstelle–funktionscode"
* item[=].item[=].text = "Nicht-bettenführende Hauptkostenstelle – Funktionscode"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 6
* item[=].item[=].linkId = "K9-ambulante-betreuungsplätze"
* item[=].item[=].text = "Ambulante Betreuungsplätze"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 6
* item[=].item[=].linkId = "K9-ambulante-patient"
* item[=].item[=].text = "Ambulante Patienten/Patientinnen"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 8
* item[=].item[=].linkId = "K9-frequenzen-ambulanten-patient"
* item[=].item[=].text = "Frequenzen an ambulanten Patienten/Patientinnen"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 8
* item[=].item[=].linkId = "K9-frequenzen-stationären-patienten-andere-krankenhäuser"
* item[=].item[=].text = "Frequenzen an stationären Patienten/Patientinnen anderer Krankenhäuser"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 8
* item[=].item[=].linkId = "K9-frequenzen-stationären-patienten"
* item[=].item[=].text = "Frequenzen an stationären Patienten/Patientinnen"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 6
* item[=].item[=].linkId = "K9-nettogrundrissfläche"
* item[=].item[=].text = "Nettogrundrissfläche"
* item[=].item[+].type = #decimal
* item[=].item[=].maxLength = 9
* item[=].item[=].linkId = "K9-ärzte-vollzeitäquivalente"
* item[=].item[=].text = "Ärzte/Ärztinnen – Vollzeitäquivalente (MLV 1-1)"
* item[=].item[+].type = #decimal
* item[=].item[=].maxLength = 9
* item[=].item[=].linkId = "K9-apotheker-chemiker-physiker-vollzeitäquivalente"
* item[=].item[=].text = "Apotheker/innen, Chemiker/innen, Physiker/innen u.ä. – Vollzeitäquivalente (MLV 1-2)"
* item[=].item[+].type = #decimal
* item[=].item[=].maxLength = 9
* item[=].item[=].linkId = "K9-hebammen-vollzeitäquivalente"
* item[=].item[=].text = "Hebammen – Vollzeitäquivalente (MLV 1-3)"
* item[=].item[+].type = #decimal
* item[=].item[=].maxLength = 9
* item[=].item[=].linkId = "K9-weitere-gesundheitsberufe-vollzeitäquivalente"
* item[=].item[=].text = "Gehobener Dienst für Gesundheits- und Krankenpflege und weitere Gesundheitsberufe – Vollzeitäquivalente (MLV 1-4)"
* item[=].item[+].type = #decimal
* item[=].item[=].maxLength = 9
* item[=].item[=].linkId = "K9-medizinisch-technische-dienste"
* item[=].item[=].text = "Gehobene medizinisch-technische Dienste, medizinisch-technischer Fachdienst und Masseure/ Masseurinnen – Vollzeitäquivalente (MLV 1-5)"
* item[=].item[+].type = #decimal
* item[=].item[=].maxLength = 9
* item[=].item[=].linkId = "K9-sanitäter–vollzeitäquivalente"
* item[=].item[=].text = "Sanitäter, Pflegehilfe und MA – Vollzeitäquivalente (MLV 1-6)"
* item[=].item[+].type = #decimal
* item[=].item[=].maxLength = 9
* item[=].item[=].linkId = "K9-verwaltungs-und-kanzleipersonal–vollzeitäquivalente"
* item[=].item[=].text = "Verwaltungs- und Kanzleipersonal – Vollzeitäquivalente (MLV 1-7)"
* item[=].item[+].type = #decimal
* item[=].item[=].maxLength = 9
* item[=].item[=].linkId = "K9-betriebspersonal-vollzeitäquivalente"
* item[=].item[=].text = "Betriebspersonal – Vollzeitäquivalente (MLV 1-8)"
* item[=].item[+].type = #decimal
* item[=].item[=].maxLength = 9
* item[=].item[=].linkId = "K9-sonstige-vollzeitäquivalente"
* item[=].item[=].text = "Sonstiges Personal – Vollzeitäquivalente (MLV 1-9)"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "K9-personalkosten"
* item[=].item[=].text = "Personalkosten (KOAGR01)"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "K9-kosten-med-güter"
* item[=].item[=].text = "Kosten für medizinische Gebrauchs- und Verbrauchsgüter (KOAGR02)"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "K9-kosten-nicht-med-güter"
* item[=].item[=].text = "Kosten für nicht-medizinische Gebrauchs- und Verbrauchsgüter (KOAGR03)"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "K9-kosten-med-fremdleistungen"
* item[=].item[=].text = "Kosten für medizinische Fremdleistungen (KOAGR04)"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "K9-kosten-nicht-med-fremdleistungen"
* item[=].item[=].text = "Kosten für nicht-medizinische Fremdleistungen (KOAGR05)"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "K9-energiekosten"
* item[=].item[=].text = "Energiekosten (KOAGR06)"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "K9-sonstige-kosten"
* item[=].item[=].text = "Abgaben, Beiträge, Gebühren und sonstige Kosten (KOAGR07)"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "K9-kalkulatorische-anlagekapitalkosten"
* item[=].item[=].text = "Kalkulatorische Anlagekapitalkosten (KOAGR08)"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "K9-kosten-med-vor-und-entsorgung"
* item[=].item[=].text = "Kosten der vorwiegend medizinisch bedingten Ver- und Entsorgung (KOAGR11)"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "K9-kosten-nicht-med-vor-und-entsorgung"
* item[=].item[=].text = "Kosten der vorwiegend nicht-medizinisch bedingten Ver- und Entsorgung (KOAGR12)"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "K9-kosten-verwaltung"
* item[=].item[=].text = "Kosten der Verwaltung (KOAGR13)"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "K9-andere-sekundärkosten (KOAGR14)"
* item[=].item[=].text = "Andere Sekundärkosten (KOAGR14)"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "K9-kostenminderungen"
* item[=].item[=].text = "Kostenminderungen"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "K9-summe-sum-innerbetrieblicher-leistungen"
* item[=].item[=].text = "Summe abgegebener innerbetrieblicher Leistungen"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "K9-unter-überdeckung"
* item[=].item[=].text = "Unter- oder Überdeckung"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "K9-endkosten-kostenstelle"
* item[=].item[=].text = "Endkosten der Kostenstelle"



* item[+].type = #group
* item[=].linkId = "K10"
* item[=].text = "LKF K10 - Kostenstellen-Statistik und Kostennachweis (Neben- und Hilfskostenstellen)"
* item[=].repeats = true
* item[=].item[+].type = #string
* item[=].item[=].maxLength = 6
* item[=].item[=].linkId = "K10-krankenanstaltennummer"
* item[=].item[=].text = "Krankenanstaltennummer"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 8
* item[=].item[=].linkId = "K10-neben-hilfskostenstelle-funktionscode"
* item[=].item[=].text = "Neben-/Hilfskostenstelle – Funktionscode"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 6
* item[=].item[=].linkId = "K10-nettogrundrissfläche"
* item[=].item[=].text = "Nettogrundrissfläche"
* item[=].item[+].type = #decimal
* item[=].item[=].maxLength = 9
* item[=].item[=].linkId = "K10-personal-insgesamt"
* item[=].item[=].text = "Personal insgesamt-Vollzeitäquivalente"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "K10-personalkosten"
* item[=].item[=].text = "Personalkosten (KOAGR01)"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "K10-kosten-med-güter"
* item[=].item[=].text = "Kosten für medizinische Gebrauchs- und Verbrauchsgüter (KOAGR02)"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "K10-kosten-nicht-med-güter"
* item[=].item[=].text = "Kosten für nicht-medizinische Gebrauchs- und Verbrauchsgüter (KOAGR03)"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "K10-kosten-med-fremdleistungen"
* item[=].item[=].text = "Kosten für medizinische Fremdleistungen (KOAGR04)"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "K10-kosten-nicht-med-fremdleistungen"
* item[=].item[=].text = "Kosten für nicht-medizinische Fremdleistungen (KOAGR05)"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "K10-energiekosten"
* item[=].item[=].text = "Energiekosten (KOAGR06)"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "K10-sonstige-kosten"
* item[=].item[=].text = "Abgaben, Beiträge, Gebühren und sonstige Kosten (KOAGR07)"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "K10-kalkulatorische-anlagekapitalkosten"
* item[=].item[=].text = "Kalkulatorische Anlagekapitalkosten (KOAGR08)"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "K10-kosten-med-vor-und-entsorgung"
* item[=].item[=].text = "Kosten der vorwiegend medizinisch bedingten Ver- und Entsorgung (KOAGR11)"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "K10-kosten-nicht-med-vor-und-entsorgung"
* item[=].item[=].text = "Kosten der vorwiegend nicht-medizinisch bedingten Ver- und Entsorgung (KOAGR12)"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "K10-kosten-verwaltung"
* item[=].item[=].text = "Kosten der Verwaltung (KOAGR13)"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "K10-andere-sekundärkosten (KOAGR14)"
* item[=].item[=].text = "Andere Sekundärkosten (KOAGR14)"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "K10-kostenminderungen"
* item[=].item[=].text = "Kostenminderungen"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "K10-summe-sum-innerbetrieblicher-leistungen"
* item[=].item[=].text = "Summe abgegebener innerbetrieblicher Leistungen"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "K10-unter-überdeckung"
* item[=].item[=].text = "Unter- oder Überdeckung"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "K10-endkosten-kostenstelle"
* item[=].item[=].text = "Endkosten der Kostenstelle"

* item[+].type = #group
* item[=].linkId = "K11"
* item[=].text = "LKF K11 - Sammel-Kostennachweis Summenblatt"
* item[=].repeats = true
* item[=].item[+].type = #string
* item[=].item[=].maxLength = 6
* item[=].item[=].linkId = "K11-krankenanstaltennummer"
* item[=].item[=].text = "Krankenanstaltennummer"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "K11-personalkosten"
* item[=].item[=].text = "Personalkosten (KOAGR01)"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "K11-kosten-med-güter"
* item[=].item[=].text = "Kosten für medizinische Gebrauchs- und Verbrauchsgüter (KOAGR02)"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "K11-kosten-nicht-med-güter"
* item[=].item[=].text = "Kosten für nicht-medizinische Gebrauchs- und Verbrauchsgüter (KOAGR03)"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "K11-kosten-med-fremdleistungen"
* item[=].item[=].text = "Kosten für medizinische Fremdleistungen (KOAGR04)"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "K11-kosten-nicht-med-fremdleistungen"
* item[=].item[=].text = "Kosten für nicht-medizinische Fremdleistungen (KOAGR05)"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "K11-energiekosten"
* item[=].item[=].text = "Energiekosten (KOAGR06)"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "K11-sonstige-kosten"
* item[=].item[=].text = "Abgaben, Beiträge, Gebühren und sonstige Kosten (KOAGR07)"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "K11-kalkulatorische-anlagekapitalkosten"
* item[=].item[=].text = "Kalkulatorische Anlagekapitalkosten (KOAGR08)"
* item[=].item[+].type = #decimal
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "K11-summe_primärkosten"
* item[=].item[=].text = "Summe Primärkosten"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "K11-kostenminderungen"
* item[=].item[=].text = "Kostenminderungen"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "K11-endkosten-krankenanstalt"
* item[=].item[=].text = "Endkosten der Krankenanstalt"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "K11-sum-kalkulatorische-abschreibung"
* item[=].item[=].text = "Summe der kalkulatorischen Abschreibungen"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "K11-abschreibungen-rest-0"
* item[=].item[=].text = "Davon kalkulatorische Abschreibungen für Anlagegüter mit Restwert 0"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "K11-Abschreibungen-ausgeschiedener-tillgelegter-anlagen"
* item[=].item[=].text = "Davon kalkulatorische Abschreibungen von Restwerten ausgeschiedener oder stillgelegter Anlagen"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "K11-sum-kalkulatorischen-zinsen"
* item[=].item[=].text = "Summe der kalkulatorischen Zinsen"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "K11-sum-kalkulatorischen-miete"
* item[=].item[=].text = "Summe der kalkulatorischen Mieten"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "K11-endkosten-stationäre-patientenversorgung"
* item[=].item[=].text = "Endkosten der stationären Patientenversorgung"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "K11-endkosten-ambulanten-patientenversorgung"
* item[=].item[=].text = "Endkosten der ambulanten Patientenversorgung"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "K11-endkosten-nebenkostenstellen"
* item[=].item[=].text = "Endkosten der Nebenkostenstellen"


* item[+].type = #group
* item[=].linkId = "K12"
* item[=].text = "LKF K12 -  Sammel-Kostennachweis Detailblätter"
* item[=].repeats = true
* item[=].item[+].type = #string
* item[=].item[=].maxLength = 6
* item[=].item[=].linkId = "K12-krankenanstaltennummer"
* item[=].item[=].text = "Krankenanstaltennummer"
* item[=].item[+].type = #coding
* item[=].item[=].linkId = "K12-blattnummer"
* item[=].item[=].text = "Blattnummer"
* item[=].item[=].answerOption[0].valueCoding = $LKFSystem#01/11 "Personalkosten (Kostenartennummer 111–119)"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#01/12 "Personalkosten (Kostenartennummer 121–129)"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#01/13 "Personalkosten (Kostenartennummer 131–139)"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 3
* item[=].item[=].linkId = "K12-mlv-nummer"
* item[=].item[=].text = "MLV-Nummer"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "K12-aufwand-finanzbuchführung"
* item[=].item[=].text = "Aufwand gemäß Finanzbuchführung"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "K12-neutraler-aufwand"
* item[=].item[=].text = "Neutraler Aufwand"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "K12-kalkulatorische-kosten"
* item[=].item[=].text = "Kalkulatorische Kosten"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "K12-kosten"
* item[=].item[=].text = "Kosten"


* item[+].type = #group
* item[=].linkId = "K13"
* item[=].text = "LKF K13 - Kalkulatorischer Anhang – Kostenminderungen"
* item[=].repeats = true
* item[=].item[+].type = #string
* item[=].item[=].maxLength = 6
* item[=].item[=].linkId = "K13-krankenanstaltennummer"
* item[=].item[=].text = "Krankenanstaltennummer"
* item[=].item[+].type = #coding
* item[=].item[=].linkId = "K13-index-kostenminderungsart"
* item[=].item[=].text = "Index Kostenminderungsart"
* item[=].item[=].answerOption[0].valueCoding = $LKFSystem#A "GSBG-Beihilfen"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#B "Klinischer Mehraufwand"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#C "Kostenersätze für Schulen und Akademien"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "K13-kostenminderungen"
* item[=].item[=].text = "Kostenminderungen"


* item[+].type = #group
* item[=].linkId = "K14"
* item[=].text = "LKF K14 - Kalkulatorischer Anhang – Kalkulatorischer Anlagenspiegel"
* item[=].repeats = true
* item[=].item[+].type = #string
* item[=].item[=].maxLength = 6
* item[=].item[=].linkId = "K14-krankenanstaltennummer"
* item[=].item[=].text = "Krankenanstaltennummer"
* item[=].item[+].type = #coding
* item[=].item[=].linkId = "K14-anlagenindex"
* item[=].item[=].text = "Anlagenindex"
* item[=].item[=].answerOption[0].valueCoding = $LKFSystem#A "Grundstücke (MLV-Nr. 91)"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#B "Bauten (MLV-Nr. 92–99)"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#C "Anlagen in Bau"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "K14-anschaffungs-und-herstellungskosten"
* item[=].item[=].text = "Anschaffungs- und Herstellungskosten"
* item[=].item[+].type = #decimal
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "K14-zugänge"
* item[=].item[=].text = "Zugänge"
* item[=].item[+].type = #decimal
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "K14-abgänge"
* item[=].item[=].text = "Abgänge"
* item[=].item[+].type = #decimal
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "K14-umbuchungen"
* item[=].item[=].text = "Umbuchungen"
* item[=].item[+].type = #decimal
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "K14-kumulierte-abschreibungen"
* item[=].item[=].text = "Kumulierte Abschreibungen"
* item[=].item[+].type = #decimal
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "K14-buchwerte-ende-berichtsjahres"
* item[=].item[=].text = "Buchwerte am Ende des Berichtsjahres"
* item[=].item[+].type = #decimal
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "K14-buchwerte-vorjahr"
* item[=].item[=].text = "Buchwerte Vorjahr"
* item[=].item[+].type = #decimal
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "K14-abschreibungen-laufendes-berichtsjahr"
* item[=].item[=].text = "Abschreibungen laufendes Berichtsjahr"


* item[+].type = #group
* item[=].linkId = "K15"
* item[=].text = "LKF K15 - Kalkulatorischer Anhang – Allgemeine Kostenbereiche"
* item[=].repeats = true
* item[=].item[+].type = #string
* item[=].item[=].maxLength = 6
* item[=].item[=].linkId = "K15-krankenanstaltennummer"
* item[=].item[=].text = "Krankenanstaltennummer"
* item[=].item[+].type = #coding
* item[=].item[=].linkId = "K15-kostenbereichs-kennzahlenindex"
* item[=].item[=].text = "Kostenbereichs-Kennzahlenindex"
* item[=].item[=].answerOption[0].valueCoding = $LKFSystem#K1 "Küche – Tablettsystem"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#K2 "Küche – Schöpfsystem"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#K3 "Küche – Cook and Chill"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#K9 "Seite 158 Handbuch zur Dokumentation – Anhang 1 (Aufbau und Inhalt der Datenmeldungen) 4.30 Satzart K15 – Kalkulatorischer Anhang – Allgemeine Kosten- bereiche Hinweis: Verweise auf das „Handbuch zur Dokumentation von Kostendaten in landesgesundheitsfondsfinanzierten Krankenanstalten“ erfolgen mit der Kurz- bezeichnung „KORE-Handbuch“. 4.30.1 Satzartenkennzeichen Das Datenfeld kennzeichnet die aktuelle Satzart und ist mit \"K15\" zu befüllen. 4.30.2 Jahr Das Berichtsjahr ist 4-stellig einzugeben (JJJJ). 4.30.3 Krankenanstaltennummer Dieses Datenfeld ist mit der jeweiligen Krankenanstaltennummer zu befüllen („Kxxx“). Die entsprechende Liste wird vom für das Gesundheitswesen zuständigen Bundesministerium zur Verfügung gestellt. 4.30.4 Kostenbereichs-Kennzahlenindex Es ist der Allgemeine Kostenbereich entsprechend folgender Tabelle anzugeben: Index Allgemeiner Kostenbereich K1 Küche – Tablettsystem K2 Küche – Schöpfsystem K3 Küche – Cook and Chill K9"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "K15-kosten"
* item[=].item[=].text = "Kosten"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "K15-bezugsgröße"
* item[=].item[=].text = "Bezugsgröße"


* item[+].type = #group
* item[=].linkId = "K16"
* item[=].text = "LKF K16 - Kalkulatorischer Anhang – Ausgewählte Kosten"
* item[=].repeats = true
* item[=].item[+].type = #string
* item[=].item[=].maxLength = 6
* item[=].item[=].linkId = "K16-krankenanstaltennummer"
* item[=].item[=].text = "Krankenanstaltennummer"
* item[=].item[+].type = #coding
* item[=].item[=].linkId = "K16-kostenindex"
* item[=].item[=].text = "Kostenindex"
* item[=].item[=].answerOption[0].valueCoding = $LKFSystem#10 "Blut"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#20 "Chirurgisches Nahtmaterial"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#30 "Implantate und Prothesen (Summe)"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#31 "Implantate und Prothesen für Gefäß- und Herzchirurgie"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#32 "Implantate und Prothesen für Knochenchirurgie"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#33 "Implantate und Prothesen für Neurochirurgie"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#34 "Körperersatzteile, andere"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#35 "Implantate für HNO"
* item[=].item[+].type = #decimal
* item[=].item[=].linkId = "K16-kosten"
* item[=].item[=].maxLength = 10
* item[=].item[=].text = "Kosten"