Instance: LKFK15Questionnaire
InstanceOf: Questionnaire
Usage: #example
* title = "LKF K15 Questionnaire"
* status = #active
* description = "LKF K15 Questionnaire - Kalkulatorischer Anhang – Allgemeine Kostenbereiche"
* item[0].type = #string
* item[=].maxLength = 3
* item[=].linkId = "satzartenkennzeichen"
* item[=].text = "Satzartenkennzeichen"
* item[=].readOnly = true
* item[=].initial.valueString = "K15"
* item[+].type = #integer
* item[=].maxLength = 4
* item[=].linkId = "jahr"
* item[=].text = "Jahr"
* item[+].type = #string
* item[=].maxLength = 6
* item[=].linkId = "krankenanstaltennummer"
* item[=].text = "Krankenanstaltennummer"
* item[+].type = #coding
* item[=].linkId = "kostenbereichs-kennzahlenindex"
* item[=].text = "Kostenbereichs-Kennzahlenindex"
* item[=].answerOption[0].valueCoding = #K1 "Küche – Tablettsystem"
* item[=].answerOption[+].valueCoding = #K2 "Küche – Schöpfsystem"
* item[=].answerOption[+].valueCoding = #K3 "Küche – Cook and Chill"
* item[=].answerOption[+].valueCoding = #K9 "Seite 158 Handbuch zur Dokumentation – Anhang 1 (Aufbau und Inhalt der Datenmeldungen) 4.30 Satzart K15 – Kalkulatorischer Anhang – Allgemeine Kosten- bereiche Hinweis: Verweise auf das „Handbuch zur Dokumentation von Kostendaten in landesgesundheitsfondsfinanzierten Krankenanstalten“ erfolgen mit der Kurz- bezeichnung „KORE-Handbuch“. 4.30.1 Satzartenkennzeichen Das Datenfeld kennzeichnet die aktuelle Satzart und ist mit \"K15\" zu befüllen. 4.30.2 Jahr Das Berichtsjahr ist 4-stellig einzugeben (JJJJ). 4.30.3 Krankenanstaltennummer Dieses Datenfeld ist mit der jeweiligen Krankenanstaltennummer zu befüllen („Kxxx“). Die entsprechende Liste wird vom für das Gesundheitswesen zuständigen Bundesministerium zur Verfügung gestellt. 4.30.4 Kostenbereichs-Kennzahlenindex Es ist der Allgemeine Kostenbereich entsprechend folgender Tabelle anzugeben: Index Allgemeiner Kostenbereich K1 Küche – Tablettsystem K2 Küche – Schöpfsystem K3 Küche – Cook and Chill K9"
* item[+].type = #integer
* item[=].maxLength = 10
* item[=].linkId = "kosten"
* item[=].text = "Kosten"
* item[+].type = #integer
* item[=].maxLength = 10
* item[=].linkId = "bezugsgröße"
* item[=].text = "Bezugsgröße"