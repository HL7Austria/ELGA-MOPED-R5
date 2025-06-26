Extension: DiagnoseKnoten
Id: moped-ext-diagnoseKnoten
Title: "Abrechnung - Knoten"
Description: "Lukriert die Patient:innen über eine reguläre Gruppe Punkte, so ist in diesem Datenfeld die entsprechende Knotenbezeichnung einzutragen."
Context: MopedLKFRequest, MopedLKFResponse
* value[x] 1..1
* value[x] only Coding
* value[x] from LKFAbrechnungsKnotenVS (required)
* . ^definition =  "\"Abrechnung - Knoten:\" Lukriert die Patient:innen über eine reguläre Gruppe Punkte, so ist in diesem Datenfeld die entsprechende Knotenbezeichnung einzutragen."
* . ^short =  "\"Abrechnung - Knoten:\" Lukriert die Patient:innen über eine reguläre Gruppe Punkte, so ist in diesem Datenfeld die entsprechende Knotenbezeichnung einzutragen."

