Instance: LKFB02Questionnaire
InstanceOf: Questionnaire
Usage: #example
* title = "LKF B02 Questionnaire"
* status = #active
* description = "B02 Questionnaire - Vermögens- und Kapitalstruktur (VKS)"
* item[0].type = #string
* item[=].maxLength = 3
* item[=].linkId = "satzartenkennzeichen"
* item[=].text = "Satzartenkennzeichen"
* item[=].readOnly = true
* item[=].initial.valueString = "B02"
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
* item[=].linkId = "vks-kategorie"
* item[=].text = "Kategorie des VKSIndex"
* item[=].answerOption[0].valueCoding = #V "Vermögen"
* item[=].answerOption[+].valueCoding = #K "Kapital"
* item[+].type = #coding
* item[=].linkId = "vks-index-vermoegen"
* item[=].text = "VKSIndex – Vermögensposten"
* item[=].enableWhen.question = "vks-kategorie"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerCoding = #V "Vermögen"
* item[=].answerOption[0].valueCoding = #V01 "Aufwendungen für das Ingangsetzen und Erweitern eines Betriebes"
* item[=].answerOption[+].valueCoding = #V02 "Immaterielle Vermögensgegenstände"
* item[=].answerOption[+].valueCoding = #V03 "Grundstücke, grundstücksgleiche Rechte"
* item[=].answerOption[+].valueCoding = #V04 "Bauten, einschließlich der Bauten auf fremdem Grund"
* item[=].answerOption[+].valueCoding = #V05 "Technische Anlagen und Maschinen"
* item[=].answerOption[+].valueCoding = #V06 "Andere Anlagen, Betriebs- und Geschäftsausstattung"
* item[=].answerOption[+].valueCoding = #V07 "Geleistete Anzahlungen und Anlagen in Bau"
* item[=].answerOption[+].valueCoding = #V08 "Finanzanlagen"
* item[=].answerOption[+].valueCoding = #V09 "Anlagevermögen )"
* item[=].answerOption[+].valueCoding = #V10 "Vorräte"
* item[=].answerOption[+].valueCoding = #V11 "Forderungen aus Lieferungen und Leistungen (Gesamt)"
* item[=].answerOption[+].valueCoding = #V12 "Forderungen aus Lieferungen und Leistungen (davon Landesgesundheitsfonds)"
* item[=].answerOption[+].valueCoding = #V13 "Sonstige Forderungen (Gesamt)"
* item[=].answerOption[+].valueCoding = #V14 "Sonstige Forderungen (davon Bund)"
* item[=].answerOption[+].valueCoding = #V15 "Sonstige Forderungen (davon Land)"
* item[=].answerOption[+].valueCoding = #V16 "Sonstige Forderungen (davon Gemeinde)"
* item[=].answerOption[+].valueCoding = #V17 "Sonstige Forderungen (davon Rechtsträger)"
* item[=].answerOption[+].valueCoding = #V18 "Sonstige Forderungen (davon Landesträgergesundheitsfonds)"
* item[=].answerOption[+].valueCoding = #V19 "Sonstige Vermögensgegenstände und aktive Rechnungsabgrenzungsposten"
* item[=].answerOption[+].valueCoding = #V20 "Liquide Mittel i.w.S."
* item[=].answerOption[+].valueCoding = #V21 "Umlaufvermögen"
* item[=].answerOption[+].valueCoding = #V22 "Gesamtvermögen"
* item[+].type = #coding
* item[=].linkId = "vks-index-kapital"
* item[=].text = "VKSIndex – Kapitalposten"
* item[=].enableWhen.question = "vks-kategorie"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerCoding = #K "Kapital"
* item[=].answerOption[0].valueCoding = #K01 "Rückstellungen kurzfristige"
* item[=].answerOption[+].valueCoding = #K02 "Verbindlichkeiten gegenüber Kreditinstituten kurzfristige"
* item[=].answerOption[+].valueCoding = #K03 "Verbindlichkeiten aus Lieferungen und Leistungen und sonstige kurzfristige Verbindlichkeiten und passive Rechnungsabgrenzungsposten"
* item[=].answerOption[+].valueCoding = #K04 "Kurzfristiges Fremdkapital"
* item[=].answerOption[+].valueCoding = #K05 "Abfertigungs-, Jubiläums- und Pensionsrückstellungen"
* item[=].answerOption[+].valueCoding = #K06 "Sonstige Rückstellungen langfristige"
* item[=].answerOption[+].valueCoding = #K07 "Anleihen"
* item[=].answerOption[+].valueCoding = #K08 "Verbindlichkeiten gegenüber Kreditinstituten langfristige"
* item[=].answerOption[+].valueCoding = #K09 "Sonstige Verbindlichkeiten langfristige (Gesamt)"
* item[=].answerOption[+].valueCoding = #K10 "Sonstige Verbindlichkeiten langfristige (davon Bund)"
* item[=].answerOption[+].valueCoding = #K11 "Sonstige Verbindlichkeiten langfristige (davon Land)"
* item[=].answerOption[+].valueCoding = #K12 "Sonstige Verbindlichkeiten langfristige (davon Gemeinde)"
* item[=].answerOption[+].valueCoding = #K13 "Sonstige Verbindlichkeiten langfristige (davon Rechtsträger)"
* item[=].answerOption[+].valueCoding = #K14 "Langfristiges Fremdkapital"
* item[=].answerOption[+].valueCoding = #K15 "Fremdkapital"
* item[=].answerOption[+].valueCoding = #K16 "Eigenkapital i.w.S. + Mezzaninkapital"
* item[=].answerOption[+].valueCoding = #K17 "Gesamtkapital"
* item[=].answerOption[+].valueCoding = #K18 "Eventualverbindlichkeiten"
* item[+].type = #integer
* item[=].maxLength = 10
* item[=].linkId = "wert-berichtsjahr"
* item[=].text = "Wert Berichtsjahr"
* item[+].type = #integer
* item[=].maxLength = 10
* item[=].linkId = "wert-vorjahr"
* item[=].text = "Wert Vorjahr"