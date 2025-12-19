// I12 Questionnaire for TISS-A-Daten

Instance: LKFTISSAQuestionnaire
InstanceOf: Questionnaire
Title: "I12 Questionnaire für TISS-A-Daten"
* status = #active
* title = "I12 Questionnaire für TISS-A-Daten"
* subjectType = #Patient

// Krankenanstaltennummer/Leistungserbringer-ID
* item[+].linkId = "krankenanstaltennummer"
* item[=].text = "Krankenanstaltennummer"
* item[=].type = #string
* item[=].maxLength = 20

// Aufnahmezahl
* item[+].linkId = "aufnahmezahl"
* item[=].text = "Aufnahmezahl"
* item[=].type = #string
* item[=].maxLength = 12

// Datensatz-ID
* item[+].linkId = "datensatz-id"
* item[=].text = "Datensatz-ID"
* item[=].type = #string
* item[=].maxLength = 64

// Aufnahme-/Kontaktdatum
* item[+].linkId = "aufnahme-kontaktdatum"
* item[=].text = "Aufnahme-/Kontaktdatum"
* item[=].type = #string
* item[=].maxLength = 8

// Bettenführende Hauptkostenstelle – Positionsnummer
* item[+].linkId = "bettenfuhrende-hauptkostenstelle-positionsnummer"
* item[=].text = "Bettenführende Hauptkostenstelle – Positionsnummer"
* item[=].type = #string
* item[=].maxLength = 3

// Erhebungsdatum
* item[+].linkId = "erhebungsdatum"
* item[=].text = "Erhebungsdatum"
* item[=].type = #string
* item[=].maxLength = 8

// Standard-Monitoring
* item[+].linkId = "standard-monitoring"
* item[=].text = "Standard-Monitoring"
* item[=].type = #boolean

// Labor
* item[+].linkId = "labor"
* item[=].text = "Labor"
* item[=].type = #boolean

// Medikamente
* item[+].linkId = "medikamente"
* item[=].text = "Medikamente"
* item[=].type = #coding
* item[=].answerOption[0].valueCoding.code = #0
* item[=].answerOption[0].valueCoding.display = "Keine Medikamente/nicht erhoben"
* item[=].answerOption[1].valueCoding.code = #1
* item[=].answerOption[1].valueCoding.display = "Medikamente einfach"
* item[=].answerOption[2].valueCoding.code = #2
* item[=].answerOption[2].valueCoding.display = "Medikamente mehrfach"


// Verbandswechsel
* item[+].linkId = "verbandswechsel"
* item[=].text = "Verbandswechsel"
* item[=].type = #coding
* item[=].answerOption[+].valueCoding.code = #0
* item[=].answerOption[=].valueCoding.display = "Kein Verbandswechsel/nicht erhoben"
* item[=].answerOption[+].valueCoding.code = #1
* item[=].answerOption[=].valueCoding.display = "Routineverbandswechsel"
* item[=].answerOption[+].valueCoding.code = #2
* item[=].answerOption[=].valueCoding.display = "Verbandswechsel häufig"
* item[=].answerOption[+].valueCoding.code = #3
* item[=].answerOption[=].valueCoding.display = "Routineverbandswechsel und Verbandswechsel häufig"



// Drainagenpflege
* item[+].linkId = "drainagenpflege"
* item[=].text = "Drainagenpflege"
* item[=].type = #boolean

// Atmungsmodus
* item[+].linkId = "atmungsmodus"
* item[=].text = "Atmungsmodus"
* item[=].type = #coding
* item[=].answerOption[+].valueCoding.code = #0
* item[=].answerOption[=].valueCoding.display = "Spontanatmung/nicht erhoben"
* item[=].answerOption[+].valueCoding.code = #1
* item[=].answerOption[=].valueCoding.display = "BIPAP"
* item[=].answerOption[+].valueCoding.code = #2
* item[=].answerOption[=].valueCoding.display = "CPAP"
* item[=].answerOption[+].valueCoding.code = #3
* item[=].answerOption[=].valueCoding.display = "Assistiert"
* item[=].answerOption[+].valueCoding.code = #4
* item[=].answerOption[=].valueCoding.display = "Kontrolliert"
* item[=].answerOption[+].valueCoding.code = #5
* item[=].answerOption[=].valueCoding.display = "HF-Beatmung"



// Atemwegszugang
* item[+].linkId = "atemwegszugang"
* item[=].text = "Atemwegszugang"
* item[=].type = #coding
* item[=].answerOption[+].valueCoding.code = #0
* item[=].answerOption[=].valueCoding.display = "Keine Atemwegszugang/nicht erhoben"
* item[=].answerOption[+].valueCoding.code = #1
* item[=].answerOption[=].valueCoding.display = "O2-Maske oder-Brille"
* item[=].answerOption[+].valueCoding.code = #2
* item[=].answerOption[=].valueCoding.display = "CPAP-Maske"
* item[=].answerOption[+].valueCoding.code = #3
* item[=].answerOption[=].valueCoding.display = "CPAP-Helm"
* item[=].answerOption[+].valueCoding.code = #4
* item[=].answerOption[=].valueCoding.display = "Tubus"
* item[=].answerOption[+].valueCoding.code = #5
* item[=].answerOption[=].valueCoding.display = "Kanüle"

// Tubus-/Stomapflege
* item[+].linkId = "tubus-stomapflege"
* item[=].text = "Tubus-/Stomapflege"
* item[=].type = #boolean

// Atemtherapie
* item[+].linkId = "atemtherapie"
* item[=].text = "Atemtherapie"
* item[=].type = #boolean

// Medikamente vasoaktiv
* item[+].linkId = "medikamente-vasoaktiv"
* item[=].text = "Medikamente vasoaktiv"
* item[=].type = #coding
* item[=].answerOption[0].valueCoding.code = #0
* item[=].answerOption[0].valueCoding.display = "Keine Medikamente vasoaktiv/nicht erhoben"
* item[=].answerOption[1].valueCoding.code = #1
* item[=].answerOption[1].valueCoding.display = "Medikamente vasoaktiv einfach"
* item[=].answerOption[2].valueCoding.code = #2
* item[=].answerOption[2].valueCoding.display = "Medikamente vasoaktiv mehrfach"

// Flüssigkeitsersatz massiv
* item[+].linkId = "flussigkeitsersatz-massiv"
* item[=].text = "Flüssigkeitsersatz massiv"
* item[=].type = #boolean

// Katheter arteriell
* item[+].linkId = "katheter-arteriell"
* item[=].text = "Katheter arteriell"
* item[=].type = #boolean

// Monitoring hämodynamisch
* item[+].linkId = "monitoring-hamodynamisch"
* item[=].text = "Monitoring hämodynamisch"
* item[=].type = #coding
* item[=].answerOption[0].valueCoding.code = #0
* item[=].answerOption[0].valueCoding.display = "Kein Monitoring hämodynamisch/nicht erhoben"
* item[=].answerOption[1].valueCoding.code = #1
* item[=].answerOption[1].valueCoding.display = "Pulmonaliskatheter"
* item[=].answerOption[2].valueCoding.code = #2
* item[=].answerOption[2].valueCoding.display = "Linkstrialer Katheter"
* item[=].answerOption[3].valueCoding.code = #3
* item[=].answerOption[3].valueCoding.display = "Lithium-Dilution"
* item[=].answerOption[4].valueCoding.code = #4
* item[=].answerOption[4].valueCoding.display = "Pulskontur-Analyse"
* item[=].answerOption[5].valueCoding.code = #5
* item[=].answerOption[5].valueCoding.display = "Ösophagus Doppler"

// Katheter zentralvenös
* item[+].linkId = "katheter-zentralvenos"
* item[=].text = "Katheter zentralvenös"
* item[=].type = #boolean

// Reanimation kardiopulmonal
* item[+].linkId = "reanimation-kardiopulmonal"
* item[=].text = "Reanimation kardiopulmonal"
* item[=].type = #boolean

// Nierenersatztherapie
* item[+].linkId = "nierenersatztherapie"
* item[=].text = "Nierenersatztherapie"
* item[=].type = #boolean

// Harnbilanzierung
* item[+].linkId = "harnbilanzierung"
* item[=].text = "Harnbilanzierung"
* item[=].type = #boolean

// Diurese aktiv
* item[+].linkId = "diurese-aktiv"
* item[=].text = "Diurese aktiv"
* item[=].type = #boolean

// Hirndruckmessung
* item[+].linkId = "hirndruckmessung"
* item[=].text = "Hirndruckmessung"
* item[=].type = #boolean

// Behandlung metabolischer Entgleisungen
* item[+].linkId = "behandlung-metabolischer-entgleisungen"
* item[=].text = "Behandlung metabolischer Entgleisungen"
* item[=].type = #boolean

// Ernährung enteral
* item[+].linkId = "ernahrung-enteral"
* item[=].text = "Ernährung enteral"
* item[=].type = #boolean

// Ernährung parenteral
* item[+].linkId = "ernahrung-parenteral"
* item[=].text = "Ernährung parenteral"
* item[=].type = #boolean

// Interventionen
* item[+].linkId = "interventionen"
* item[=].text = "Interventionen"
* item[=].type = #coding
* item[=].answerOption[0].valueCoding.code = #0
* item[=].answerOption[0].valueCoding.display = "Keine Intervention einfach/nicht erhoben"
* item[=].answerOption[1].valueCoding.code = #1
* item[=].answerOption[1].valueCoding.display = "Intervention einfach"
* item[=].answerOption[2].valueCoding.code = #2
* item[=].answerOption[2].valueCoding.display = "Interventionen mehrfach"

// Diagnostik und Therapie außerhalb der IBS
* item[+].linkId = "diagnostik-therapie-ausserhalb-ibs"
* item[=].text = "Diagnostik und Therapie außerhalb der IBS"
* item[=].type = #boolean

// Agitation und Delirium
* item[+].linkId = "agitation-delirium"
* item[=].text = "Agitation und Delirium"
* item[=].type = #coding
* item[=].answerOption[0].valueCoding.code = #0
* item[=].answerOption[0].valueCoding.display = "Keine Agitation/Delirium/nicht erhoben"
* item[=].answerOption[1].valueCoding.code = #1
* item[=].answerOption[1].valueCoding.display = "nicht weckbar"
* item[=].answerOption[2].valueCoding.code = #2
* item[=].answerOption[2].valueCoding.display = "sehr sediert"
* item[=].answerOption[3].valueCoding.code = #3
* item[=].answerOption[3].valueCoding.display = "sediert"
* item[=].answerOption[4].valueCoding.code = #4
* item[=].answerOption[4].valueCoding.display = "ruhig und kooperativ"
* item[=].answerOption[5].valueCoding.code = #5
* item[=].answerOption[5].valueCoding.display = "agitiert"
* item[=].answerOption[6].valueCoding.code = #6
* item[=].answerOption[6].valueCoding.display = "sehr agitiert"
* item[=].answerOption[7].valueCoding.code = #7
* item[=].answerOption[7].valueCoding.display = "Selbst- oder Fremdgefährdung"

// Assist kardial
* item[+].linkId = "assist-kardial"
* item[=].text = "Assist kardial"
* item[=].type = #boolean

// Assist pulmonal
* item[+].linkId = "assist-pulmonal"
* item[=].text = "Assist pulmonal"
* item[=].type = #boolean

// Hypothermie therapeutisch
* item[+].linkId = "hypothermie-therapeutisch"
* item[=].text = "Hypothermie therapeutisch"
* item[=].type = #boolean

// Lebersupport extrakorporal
* item[+].linkId = "lebersupport-extrakorporal"
* item[=].text = "Lebersupport extrakorporal"
* item[=].type = #boolean

// Kontinuierliche intravenöse antikonvulsive Therapie
* item[+].linkId = "kontinuierliche-intravenose-antikonvulsive-therapie"
* item[=].text = "Kontinuierliche intravenöse antikonvulsive Therapie"
* item[=].type = #boolean
