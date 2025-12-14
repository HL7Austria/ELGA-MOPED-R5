// I12 QuestionnaireResponse for TISS-A-Daten

Instance: TISSAQuestionnaireResponse
InstanceOf: MopedQuestionnaireResponseFallbezogen
Title: "I12 QuestionnaireResponse für TISS-A-Daten"
* status = #completed
* subject = Reference(PJ1Patient)
* questionnaire = Canonical(LKFTISSAQuestionnaire)
* authored = "2024-08-08"
* encounter = Reference(PJ1Encounter)
* author = Reference(OrganizationHerzJesuKrankenhaus)

// Krankenanstaltennummer/Leistungserbringer-ID
* item[+].linkId = "krankenanstaltennummer"
* item[=].answer.valueString = "K427"
* item[=].text = "LKF: Krankenanstaltennummer" 
// Aufnahmezahl
* item[+].linkId = "aufnahmezahl"
* item[=].answer.valueString = "324200063"
* item[=].text = "LKF: Aufnahmezahl"
// Datensatz-ID
* item[+].linkId = "datensatz-id"
* item[=].answer.valueString = "-"
* item[=].text = "LKF: Datensatz-ID"
// Aufnahme-/Kontaktdatum
* item[+].linkId = "aufnahme-kontaktdatum"
* item[=].answer.valueString = "20240808"
* item[=].text = "LKF: Aufnahme-/Kontaktdatum"
// Bettenführende Hauptkostenstelle – Positionsnummer
* item[+].linkId = "bettenfuhrende-hauptkostenstelle-positionsnummer"
* item[=].answer.valueString = "2"
* item[=].text = "LKF: Bettenführende Hauptkostenstelle – Positionsnummer"
// Erhebungsdatum
* item[+].linkId = "erhebungsdatum"
* item[=].answer.valueString = "20240808"
* item[=].text = "LKF: Erhebungsdatum"
// Standard-Monitoring
* item[+].linkId = "standard-monitoring"
* item[=].answer.valueBoolean = true
* item[=].text = "LKF: Standard-Monitoring"
// Labor
* item[+].linkId = "labor"
* item[=].answer.valueBoolean = true
* item[=].text = "LKF: Labor"
// Medikamente
* item[+].linkId = "medikamente"
* item[=].answer.valueCoding = #1 "Medikamente einfach"
* item[=].text = "LKF: Medikamente"
// Verbandswechsel
* item[+].linkId = "verbandswechsel"
* item[=].answer.valueCoding = #0 "Kein Verbandswechsel/nicht erhoben"
* item[=].text = "LKF: Verbandswechsel"
// Drainagenpflege
* item[+].linkId = "drainagenpflege"
* item[=].answer.valueBoolean = false
* item[=].text = "LKF: Drainagenpflege"
// Atmungsmodus
* item[+].linkId = "atmungsmodus"
* item[=].answer.valueCoding = #0 "Spontanatmung/nicht erhoben"
* item[=].text = "LKF: Atmungsmodus"
// Atemwegszugang
* item[+].linkId = "atemwegszugang"
* item[=].answer.valueCoding = #1 "O2-Maske oder-Brille"
* item[=].text = "LKF: Atemwegszugang"
// Tubus-/Stomapflege
* item[+].linkId = "tubus-stomapflege"
* item[=].answer.valueBoolean = false
* item[=].text = "LKF: Tubus-/Stomapflege"
// Atemtherapie
* item[+].linkId = "atemtherapie"
* item[=].answer.valueBoolean = false
* item[=].text = "LKF: Atemtherapie"
// Medikamente vasoaktiv
* item[+].linkId = "medikamente-vasoaktiv"
* item[=].answer.valueCoding = #1 "Medikamente vasoaktiv einfach"
* item[=].text = "LKF: Medikamente vasoaktiv"
// Flüssigkeitsersatz massiv
* item[+].linkId = "flussigkeitsersatz-massiv"
* item[=].answer.valueBoolean = false
* item[=].text = "LKF: Flüssigkeitsersatz massiv"
// Katheter arteriell
* item[+].linkId = "katheter-arteriell"
* item[=].answer.valueBoolean = false
* item[=].text = "LKF: Katheter arteriell"
// Monitoring hämodynamisch
* item[+].linkId = "monitoring-hamodynamisch"
* item[=].answer.valueCoding = #0 "Kein Monitoring hämodynamisch/nicht erhoben"
* item[=].text = "LKF: Monitoring hämodynamisch"
// Katheter zentralvenös
* item[+].linkId = "katheter-zentralvenos"
* item[=].answer.valueBoolean = false
* item[=].text = "LKF: Katheter zentralvenös"
// Reanimation kardiopulmonal
* item[+].linkId = "reanimation-kardiopulmonal"
* item[=].answer.valueBoolean = false
* item[=].text = "LKF: Reanimation kardiopulmonal"
// Nierenersatztherapie
* item[+].linkId = "nierenersatztherapie"
* item[=].answer.valueBoolean = false
* item[=].text = "LKF: Nierenersatztherapie"
// Harnbilanzierung
* item[+].linkId = "harnbilanzierung"
* item[=].answer.valueBoolean = true
* item[=].text = "LKF: Harnbilanzierung"
// Diurese aktiv
* item[+].linkId = "diurese-aktiv"
* item[=].answer.valueBoolean = false
* item[=].text = "LKF: Diurese aktiv"
// Hirndruckmessung
* item[+].linkId = "hirndruckmessung"
* item[=].answer.valueBoolean = false
* item[=].text = "LKF: Hirndruckmessung"
// Behandlung metabolischer Entgleisungen
* item[+].linkId = "behandlung-metabolischer-entgleisungen"
* item[=].answer.valueBoolean = false
* item[=].text = "LKF: Behandlung metabolischer Entgleisungen"
// Ernährung enteral
* item[+].linkId = "ernahrung-enteral"
* item[=].answer.valueBoolean = false
* item[=].text = "LKF: Ernährung enteral"
// Ernährung parenteral
* item[+].linkId = "ernahrung-parenteral"
* item[=].answer.valueBoolean = false
* item[=].text = "LKF: Ernährung parenteral"
// Interventionen
* item[+].linkId = "interventionen"
* item[=].answer.valueCoding = #1 "Intervention einfach"
* item[=].text = "LKF: Interventionen"
// Diagnostik und Therapie außerhalb der IBS
* item[+].linkId = "diagnostik-therapie-ausserhalb-ibs"
* item[=].answer.valueBoolean = true
* item[=].text = "LKF: Diagnostik und Therapie außerhalb der IBS"
// Agitation und Delirium
* item[+].linkId = "agitation-delirium"
* item[=].answer.valueCoding = #0 "Keine Agitation/Delirium/nicht erhoben"
* item[=].text = "LKF: Agitation und Delirium"
// Assist kardial
* item[+].linkId = "assist-kardial"
* item[=].answer.valueBoolean = true
* item[=].text = "LKF: Assist kardial"
// Assist pulmonal
* item[+].linkId = "assist-pulmonal"
* item[=].answer.valueBoolean = false
* item[=].text = "LKF: Assist pulmonal"
// Hypothermie therapeutisch
* item[+].linkId = "hypothermie-therapeutisch"
* item[=].answer.valueBoolean = false
* item[=].text = "LKF: Hypothermie therapeutisch"
// Lebersupport extrakorporal
* item[+].linkId = "lebersupport-extrakorporal"
* item[=].answer.valueBoolean = false
* item[=].text = "LKF: Lebersupport extrakorporal"
// Kontinuierliche intravenöse antikonvulsive Therapie
* item[+].linkId = "kontinuierliche-intravenose-antikonvulsive-therapie"
* item[=].answer.valueBoolean = false
* item[=].text = "LKF: Kontinuierliche intravenöse antikonvulsive Therapie"