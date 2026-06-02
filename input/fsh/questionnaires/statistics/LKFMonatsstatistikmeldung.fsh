Instance: LKFMonatsstatistikmeldung
InstanceOf: Questionnaire
Usage: #example
* title = "LKF Monatsstatistikmeldung"
* status = #active
* description = "LKF Monatsstatistikmeldung"
* item[0].type = #integer
* item[=].maxLength = 4
* item[=].linkId = "jahr"
* item[=].text = "Jahr"
* item[+].type = #group
* item[=].linkId = "K01"
* item[=].text = "LKF K01 - den Kostenstellenplan"
* item[=].repeats = true
* item[=].item[+].type = #string
* item[=].item[=].maxLength = 6
* item[=].item[=].linkId = "K01-krankenanstaltennummer"
* item[=].item[=].text = "Krankenanstaltennummer"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 8
* item[=].item[=].linkId = "K01-funktionscode"
* item[=].item[=].text = "Funktionscode"
* item[=].item[+].type = #string
* item[=].item[=].maxLength = 8
* item[=].item[=].linkId = "K01-interne-kostenstellennummer"
* item[=].item[=].text = "Interne Kostenstellennummer"
* item[=].item[+].type = #string
* item[=].item[=].maxLength = 50
* item[=].item[=].linkId = "K01-interne-kostenstellenbezeichnung"
* item[=].item[=].text = "Interne Kostenstellenbezeichnung"
* item[=].item[+].type = #coding
* item[=].item[=].linkId = "K01-spezielle-organisationsform"
* item[=].item[=].text = "Spezielle Organisationsform"
* item[=].item[=].answerOption[0].valueCoding = $LKFSystem#A "Abteilung"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#R "Referenzzentrum – ohne Versorgungsstufengliederung"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#Z "Referenzzentrum – höchste Versorgungsstufe"


* item[+].type = #group
* item[=].linkId = "L01"
* item[=].text = "LKF L01 - Spezielle Leistungsbereiche"
* item[=].repeats = true
* item[=].item[+].type = #string
* item[=].item[=].maxLength = 6
* item[=].item[=].linkId = "L01-krankenanstaltennummer"
* item[=].item[=].text = "Krankenanstaltennummer"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 8
* item[=].item[=].linkId = "L01-hauptkostenstelle-funktionscode"
* item[=].item[=].text = "Hauptkostenstelle – Funktionscode"
* item[=].item[=].enableWhen.question = "L01-leistungsbereich"
* item[=].item[=].enableWhen.operator = #!=
* item[=].item[=].enableWhen.answerCoding = $LKFSystem#M "Spezielle Leistungen"
* item[=].item[+].type = #coding
* item[=].item[=].linkId = "L01-leistungsbereich"
* item[=].item[=].text = "Leistungsbereich"
* item[=].item[=].answerOption[0].valueCoding = $LKFSystem#I "Intensivüberwachungs-/behandlungseinheiten (Erwachsene/Kinder)"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#G "Akutgeriatrie/Remobilisation"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#L "Palliativmedizinische Einrichtungen"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#N "Neurologische Akut-Nachbehandlung"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#J "Kinder- und Jugendpsychiatrie"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#P "Psychiatrie"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#S "Stroke Unit"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#A "Alkohol- und Drogenentwöhnung"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#M "Spezielle Leistungen"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#R "Remobilisation/Nachsorge"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#O "Psychosomatik"
* item[=].item[+].type = #string
* item[=].item[=].maxLength = 2
* item[=].item[=].linkId = "L01-gruppe-stufe"
* item[=].item[=].text = "Gruppe/Stufe"
* item[=].item[+].type = #integer
* item[=].item[=].maxLength = 6
* item[=].item[=].linkId = "L01-punkte"
* item[=].item[=].text = "Punkte"


* item[+].type = #group
* item[=].linkId = "L02"
* item[=].text = "LKF L02 - Abrechnungsrelevante Kostenträger"
* item[=].repeats = true
* item[=].item[+].type = #string
* item[=].item[=].maxLength = 6
* item[=].item[=].linkId = "L02-krankenanstaltennummer"
* item[=].item[=].text = "Krankenanstaltennummer"
* item[=].item[+].type = #string
* item[=].item[=].maxLength = 2
* item[=].item[=].linkId = "L02-kostentraeger-code"
* item[=].item[=].text = "Kostenträger – Code"
* item[=].item[+].type = #coding
* item[=].item[=].linkId = "L02-lgf-relevanz"
* item[=].item[=].text = "LGF – Relevanz"
* item[=].item[=].answerOption[0].valueCoding = $LKFSystem#J "Ja – LKF-relevant"
* item[=].item[=].answerOption[+].valueCoding = $LKFSystem#N "Nein – nicht LKF-relevant"


* item[+].type = #group
* item[=].linkId = "L03"
* item[=].text = "LKF L03 - Exklusionen medizinischer Leistungen"
* item[=].repeats = true
* item[=].item[+].type = #string
* item[=].item[=].maxLength = 6
* item[=].item[=].linkId = "L03-krankenanstaltennummer"
* item[=].item[=].text = "Krankenanstaltennummer"
* item[=].item[+].type = #string
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "L03-medizinische-leistung-code"
* item[=].item[=].text = "Medizinische Leistung – Code"

* item[+].type = #group
* item[=].linkId = "L04"
* item[=].text = "LKF L04 - Exklusionen tagesklinischer medizinischer Leistungen"
* item[=].repeats = true
* item[=].item[+].type = #string
* item[=].item[=].maxLength = 6
* item[=].item[=].linkId = "L04-krankenanstaltennummer"
* item[=].item[=].text = "Krankenanstaltennummer"
* item[=].item[+].type = #string
* item[=].item[=].maxLength = 10
* item[=].item[=].linkId = "L04-medizinische-leistung-code"
* item[=].item[=].text = "Medizinische Leistung – Code"