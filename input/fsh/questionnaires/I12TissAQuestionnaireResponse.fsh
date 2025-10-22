// I12 QuestionnaireResponse for TISS-A-Daten

Instance: TISSAQuestionnaireResponse
InstanceOf: QuestionnaireResponse
Title: "I12 QuestionnaireResponse für TISS-A-Daten"
* status = #completed
* subject = Reference(PJ1Patient)
* questionnaire = Canonical(LKFTISSAQuestionnaire)
* authored = "2024-08-08"

// Krankenanstaltennummer/Leistungserbringer-ID
* item[+].linkId = "krankenanstaltennummer-leistungserbringer-id"
* item[=].answer.valueString = "K427"

// Aufnahmezahl
* item[+].linkId = "aufnahmezahl"
* item[=].answer.valueString = "324200063"

// Datensatz-ID
* item[+].linkId = "datensatz-id"
* item[=].answer.valueString = "-"

// Aufnahme-/Kontaktdatum
* item[+].linkId = "aufnahme-kontaktdatum"
* item[=].answer.valueString = "20240808"

// Bettenführende Hauptkostenstelle – Positionsnummer
* item[+].linkId = "bettenfuhrende-hauptkostenstelle-positionsnummer"
* item[=].answer.valueString = "2"

// Erhebungsdatum
* item[+].linkId = "erhebungsdatum"
* item[=].answer.valueString = "20240808"

// Standard-Monitoring
* item[+].linkId = "standard-monitoring"
* item[=].answer.valueBoolean = true

// Labor
* item[+].linkId = "labor"
* item[=].answer.valueBoolean = true

// Medikamente
* item[+].linkId = "medikamente"
* item[=].answer.valueCoding = #1 "Medikamente einfach"

// Verbandswechsel
* item[+].linkId = "verbandswechsel"
* item[=].answer.valueCoding = #0 "Kein Verbandswechsel/nicht erhoben"

// Drainagenpflege
* item[+].linkId = "drainagenpflege"
* item[=].answer.valueBoolean = false

// Atmungsmodus
* item[+].linkId = "atmungsmodus"
* item[=].answer.valueCoding = #0 "Spontanatmung/nicht erhoben"

// Atemwegszugang
* item[+].linkId = "atemwegszugang"
* item[=].answer.valueCoding = #1 "O2-Maske oder-Brille"

// Tubus-/Stomapflege
* item[+].linkId = "tubus-stomapflege"
* item[=].answer.valueBoolean = false

// Atemtherapie
* item[+].linkId = "atemtherapie"
* item[=].answer.valueBoolean = false

// Medikamente vasoaktiv
* item[+].linkId = "medikamente-vasoaktiv"
* item[=].answer.valueCoding = #1 "Medikamente vasoaktiv einfach"

// Flüssigkeitsersatz massiv
* item[+].linkId = "flussigkeitsersatz-massiv"
* item[=].answer.valueBoolean = false

// Katheter arteriell
* item[+].linkId = "katheter-arteriell"
* item[=].answer.valueBoolean = false

// Monitoring hämodynamisch
* item[+].linkId = "monitoring-hamodynamisch"
* item[=].answer.valueCoding = #0 "Kein Monitoring hämodynamisch/nicht erhoben"

// Katheter zentralvenös
* item[+].linkId = "katheter-zentralvenos"
* item[=].answer.valueBoolean = false

// Reanimation kardiopulmonal
* item[+].linkId = "reanimation-kardiopulmonal"
* item[=].answer.valueBoolean = false

// Nierenersatztherapie
* item[+].linkId = "nierenersatztherapie"
* item[=].answer.valueBoolean = false

// Harnbilanzierung
* item[+].linkId = "harnbilanzierung"
* item[=].answer.valueBoolean = true

// Diurese aktiv
* item[+].linkId = "diurese-aktiv"
* item[=].answer.valueBoolean = false

// Hirndruckmessung
* item[+].linkId = "hirndruckmessung"
* item[=].answer.valueBoolean = false

// Behandlung metabolischer Entgleisungen
* item[+].linkId = "behandlung-metabolischer-entgleisungen"
* item[=].answer.valueBoolean = false

// Ernährung enteral
* item[+].linkId = "ernahrung-enteral"
* item[=].answer.valueBoolean = false

// Ernährung parenteral
* item[+].linkId = "ernahrung-parenteral"
* item[=].answer.valueBoolean = false

// Interventionen
* item[+].linkId = "interventionen"
* item[=].answer.valueCoding = #1 "Intervention einfach"

// Diagnostik und Therapie außerhalb der IBS
* item[+].linkId = "diagnostik-therapie-ausserhalb-ibs"
* item[=].answer.valueBoolean = true

// Agitation und Delirium
* item[+].linkId = "agitation-delirium"
* item[=].answer.valueCoding = #0 "Keine Agitation/Delirium/nicht erhoben"

// Assist kardial
* item[+].linkId = "assist-kardial"
* item[=].answer.valueBoolean = true

// Assist pulmonal
* item[+].linkId = "assist-pulmonal"
* item[=].answer.valueBoolean = false

// Hypothermie therapeutisch
* item[+].linkId = "hypothermie-therapeutisch"
* item[=].answer.valueBoolean = false

// Lebersupport extrakorporal
* item[+].linkId = "lebersupport-extrakorporal"
* item[=].answer.valueBoolean = false

// Kontinuierliche intravenöse antikonvulsive Therapie
* item[+].linkId = "kontinuierliche-intravenose-antikonvulsive-therapie"
* item[=].answer.valueBoolean = false
