// K05 Questionnaire for KA-Statistik (Personal des ärztlichen Dienstes)

Instance: KAStatistikK05Questionnaire
InstanceOf: Questionnaire
Title: "Satzart K05 – KA-Statistik (Personal des ärztlichen Dienstes)"
* id = "ka-statistik-k05"
* status = #active
* title = "K05 Questionnaire for KA-Statistik"
* description = "This questionnaire is used to collect KA-Statistik data for K05 message reporting."
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

// Fachhauptbereichsindex
* item[3].linkId = "fachhauptbereichsindex"
* item[3].text = "Fachhauptbereichsindex"
* item[3].type = #string
* item[3].maxLength = 2

// Fachärzte/-ärztinnen – Kopfzahl
* item[4].linkId = "facharzte-kopfzahl"
* item[4].text = "Fachärzte/-ärztinnen – Kopfzahl"
* item[4].type = #integer
* item[4].maxLength = 6

// Ärzte/Ärztinnen für Allgemeinmedizin – Kopfzahl
* item[5].linkId = "allgemeinmedizin-kopfzahl"
* item[5].text = "Ärzte/Ärztinnen für Allgemeinmedizin – Kopfzahl"
* item[5].type = #integer
* item[5].maxLength = 6

// Fachärzte/-ärztinnen in Ausbildung – Kopfzahl
* item[6].linkId = "facharzte-ausbildung-kopfzahl"
* item[6].text = "Fachärzte/-ärztinnen in Ausbildung – Kopfzahl"
* item[6].type = #integer
* item[6].maxLength = 6

// Ärzte/Ärztinnen für Allgemeinmedizin in Ausbildung – Kopfzahl
* item[7].linkId = "allgemeinmedizin-ausbildung-kopfzahl"
* item[7].text = "Ärzte/Ärztinnen für Allgemeinmedizin in Ausbildung – Kopfzahl"
* item[7].type = #integer
* item[7].maxLength = 6

// Fachärzte/-ärztinnen – Vollzeitäquivalente
* item[8].linkId = "facharzte-vollzeitäquivalente"
* item[8].text = "Fachärzte/-ärztinnen – Vollzeitäquivalente"
* item[8].type = #decimal
* item[8].maxLength = 9

// Ärzte/Ärztinnen für Allgemeinmedizin – Vollzeitäquivalente
* item[9].linkId = "allgemeinmedizin-vollzeitäquivalente"
* item[9].text = "Ärzte/Ärztinnen für Allgemeinmedizin – Vollzeitäquivalente"
* item[9].type = #decimal
* item[9].maxLength = 9

// Fachärzte/-ärztinnen in Ausbildung – Vollzeitäquivalente
* item[10].linkId = "facharzte-ausbildung-vollzeitäquivalente"
* item[10].text = "Fachärzte/-ärztinnen in Ausbildung – Vollzeitäquivalente"
* item[10].type = #decimal
* item[10].maxLength = 9

// Ärzte/Ärztinnen für Allgemeinmedizin in Ausbildung – Vollzeitäquivalente
* item[11].linkId = "allgemeinmedizin-ausbildung-vollzeitäquivalente"
* item[11].text = "Ärzte/Ärztinnen für Allgemeinmedizin in Ausbildung – Vollzeitäquivalente"
* item[11].type = #decimal
* item[11].maxLength = 9
