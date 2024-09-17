// K03 Questionnaire for KA-Statistik (Ressourcen und Inanspruchnahme)

Instance: KAStatistikK03Questionnaire
InstanceOf: Questionnaire
Title: "Satzart K03 – KA-Statistik (Ressourcen und Inanspruchnahme)"
* id = "ka-statistik-k03"
* status = #active
* title = "K03 Questionnaire for KA-Statistik"
* description = "This questionnaire is used to collect KA-Statistik data for K03 message reporting."
* subjectType = #Patient

// Sazartenkennzeichen
* item[0].linkId = "sazartenkennzeichen"
* item[0].text = "Sazartenkennzeichen"
* item[0].type = #string
* item[0].maxLength = 3

// Jahr
* item[1].linkId = "jahr"
* item[1].text = "Jahr"
* item[1].type = #string
* item[1].maxLength = 4

// Krankenanstaltennummer
* item[2].linkId = "krankenanstaltennummer"
* item[2].text = "Krankenanstaltennummer"
* item[2].type = #string
* item[2].maxLength = 6

// Systemisierte Betten insgesamt
* item[3].linkId = "systemisierte-betten-insgesamt"
* item[3].text = "Systemisierte Betten insgesamt"
* item[3].type = #integer
* item[3].maxLength = 6

// Systemisierte Betten – Sonderklasse
* item[4].linkId = "systemisierte-betten-sonderklasse"
* item[4].text = "Systemisierte Betten – Sonderklasse"
* item[4].type = #integer
* item[4].maxLength = 6

// Tatsächlich aufgestellte Betten insgesamt
* item[5].linkId = "tatsachlich-aufgestellte-betten-insgesamt"
* item[5].text = "Tatsächlich aufgestellte Betten insgesamt"
* item[5].type = #integer
* item[5].maxLength = 6

// Tatsächlich aufgestellte Betten – Sonderklasse
* item[6].linkId = "tatsachlich-aufgestellte-betten-sonderklasse"
* item[6].text = "Tatsächlich aufgestellte Betten – Sonderklasse"
* item[6].type = #integer
* item[6].maxLength = 6

// Belagstage – Sonderklasse
* item[7].linkId = "belagstage-sonderklasse"
* item[7].text = "Belagstage – Sonderklasse"
* item[7].type = #integer
* item[7].maxLength = 6

// Aufnahmen – Sonderklasse
* item[8].linkId = "aufnahmen-sonderklasse"
* item[8].text = "Aufnahmen – Sonderklasse"
* item[8].type = #integer
* item[8].maxLength = 6

// Vom Vorjahr Verbliebene – Sonderklasse
* item[9].linkId = "vom-vorjahr-verbliebene-sonderklasse"
* item[9].text = "Vom Vorjahr Verbliebene – Sonderklasse"
* item[9].type = #integer
* item[9].maxLength = 6

// Entlassungen – Sonderklasse
* item[10].linkId = "entlassungen-sonderklasse"
* item[10].text = "Entlassungen – Sonderklasse"
* item[10].type = #integer
* item[10].maxLength = 6

// Verstorbene – Sonderklasse
* item[11].linkId = "verstorbene-sonderklasse"
* item[11].text = "Verstorbene – Sonderklasse"
* item[11].type = #integer
* item[11].maxLength = 6

// Aufnahmen von Begleitpersonen
* item[12].linkId = "aufnahmen-von-begleitpersonen"
* item[12].text = "Aufnahmen von Begleitpersonen"
* item[12].type = #integer
* item[12].maxLength = 6

// Belagstage von Begleitpersonen
* item[13].linkId = "belagstage-von-begleitpersonen"
* item[13].text = "Belagstage von Begleitpersonen"
* item[13].type = #integer
* item[13].maxLength = 6

// Ambulante Patienten/Patientinnen
* item[14].linkId = "ambulante-patienten-patientinnen"
* item[14].text = "Ambulante Patienten/Patientinnen"
* item[14].type = #integer
* item[14].maxLength = 6

// Ambulante Betreuungsplätze
* item[15].linkId = "ambulante-betreuungsplatze"
* item[15].text = "Ambulante Betreuungsplätze"
* item[15].type = #integer
* item[15].maxLength = 6

// OP-Tische
* item[16].linkId = "op-tische"
* item[16].text = "OP-Tische"
* item[16].type = #integer
* item[16].maxLength = 6

// Entbindungsplätze
* item[17].linkId = "entbindungsplatze"
* item[17].text = "Entbindungsplätze"
* item[17].type = #integer
* item[17].maxLength = 6

// Postoperative Überwachungsplätze
* item[18].linkId = "postoperative-uberwachungsplatze"
* item[18].text = "Postoperative Überwachungsplätze"
* item[18].type = #integer
* item[18].maxLength = 6

// Dialyseplätze
* item[19].linkId = "dialyseplatze"
* item[19].text = "Dialyseplätze"
* item[19].type = #integer
* item[19].maxLength = 6

// Obduktionen durch Anstaltspersonal
* item[20].linkId = "obduktionen-durch-anstaltspersonal"
* item[20].text = "Obduktionen durch Anstaltspersonal"
* item[20].type = #integer
* item[20].maxLength = 6

// Obduktionen durch Fremdpersonal
* item[21].linkId = "obduktionen-durch-fremdpersonal"
* item[21].text = "Obduktionen durch Fremdpersonal"
* item[21].type = #integer
* item[21].maxLength = 6

// Entbindungen – Lebendgeborene
* item[22].linkId = "entbindungen-lebendgeborene"
* item[22].text = "Entbindungen – Lebendgeborene"
* item[22].type = #integer
* item[22].maxLength = 6

// Entbindungen – Totgeborene
* item[23].linkId = "entbindungen-totgeborene"
* item[23].text = "Entbindungen – Totgeborene"
* item[23].type = #integer
* item[23].maxLength = 6
