Alias: $vessel-occlusion = http://example.org/CodeSystem/vessel-occlusion

Instance: StrokeUnitQuestionnaire2025
InstanceOf: Questionnaire
Usage: #example
* name = "StrokeUnitQuestionnaire"
* title = "Stroke Unit Registermeldung – Patientendaten"
* status = #active
* description = "Fragen zur Registermeldung Stroke Unit – Abschnitt Patientendaten"
* item[0].item[0].type = #integer
* item[=].item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].item[=].extension[=].valueInteger = 111
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/maxValue"
* item[=].item[=].extension[=].valueInteger = 999
* item[=].item[=].linkId = "2001"
* item[=].item[=].text = "Zentrum"
* item[=].item[+].type = #string
* item[=].item[=].maxLength = 20
* item[=].item[=].linkId = "2003"
* item[=].item[=].text = "Aufnahmezahl"
* item[=].item[+].item[0].type = #string
* item[=].item[=].item[=].linkId = "2060"
* item[=].item[=].item[=].text = "Bereichsspezifisches Personenkennzeichen Gesundheit (bPK GH)"
* item[=].item[=].item[+].type = #string
* item[=].item[=].item[=].linkId = "2061"
* item[=].item[=].item[=].text = "Fremd-bPK amtliche Statistik (fremd-bPK AS)"
* item[=].item[=].item[+].type = #string
* item[=].item[=].item[=].maxLength = 64
* item[=].item[=].item[=].linkId = "2040"
* item[=].item[=].item[=].text = "Vorname"
* item[=].item[=].item[=].enableWhen[0].question = "2060"
* item[=].item[=].item[=].enableWhen[=].operator = #exists
* item[=].item[=].item[=].enableWhen[=].answerBoolean = false
* item[=].item[=].item[=].enableWhen[+].question = "2061"
* item[=].item[=].item[=].enableWhen[=].operator = #exists
* item[=].item[=].item[=].enableWhen[=].answerBoolean = false
* item[=].item[=].item[=].enableBehavior = #any
* item[=].item[=].item[=].disabledDisplay = #hidden
* item[=].item[=].item[+].type = #string
* item[=].item[=].item[=].maxLength = 64
* item[=].item[=].item[=].linkId = "2041"
* item[=].item[=].item[=].text = "Nachname"
* item[=].item[=].item[=].enableWhen[0].question = "2060"
* item[=].item[=].item[=].enableWhen[=].operator = #exists
* item[=].item[=].item[=].enableWhen[=].answerBoolean = false
* item[=].item[=].item[=].enableWhen[+].question = "2061"
* item[=].item[=].item[=].enableWhen[=].operator = #exists
* item[=].item[=].item[=].enableWhen[=].answerBoolean = false
* item[=].item[=].item[=].enableBehavior = #any
* item[=].item[=].item[+].type = #date
* item[=].item[=].item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].item[=].item[=].extension[=].valueDate = "1900-01-01"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/maxValue"
* item[=].item[=].item[=].extension[=].valueDate = "2026-01-01"
* item[=].item[=].item[=].linkId = "2004"
* item[=].item[=].item[=].text = "Geburtsdatum"
* item[=].item[=].item[+].type = #coding
* item[=].item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item[=].extension.valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].item[=].linkId = "2032"
* item[=].item[=].item[=].text = "Wohnort"
* item[=].item[=].item[=].answerOption[0].valueCoding = #1 "im Inland"
* item[=].item[=].item[=].answerOption[+].valueCoding = #2 "im Ausland"
* item[=].item[=].item[+].type = #integer
* item[=].item[=].item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].item[=].item[=].extension[=].valueInteger = 1000
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/maxValue"
* item[=].item[=].item[=].extension[=].valueInteger = 9999
* item[=].item[=].item[=].linkId = "2030"
* item[=].item[=].item[=].text = "Wohnpostleitzahl (wenn Wohnort Österreich)"
* item[=].item[=].item[=].enableWhen.question = "2032"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerCoding.code = #1
* item[=].item[=].item[+].type = #integer
* item[=].item[=].item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].item[=].item[=].extension[=].valueInteger = 0
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/maxValue"
* item[=].item[=].item[=].extension[=].valueInteger = 999
* item[=].item[=].item[=].linkId = "2050"
* item[=].item[=].item[=].text = "Studienteilnahme"
* item[=].item[=].item[=].required = false
* item[=].item[=].type = #group
* item[=].item[=].linkId = "gruppe-demographie"
* item[=].item[=].text = "Demographische Basisdaten"
* item[=].item[+].item.type = #coding
* item[=].item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item.extension.valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].item.linkId = "2005"
* item[=].item[=].item.text = "Geschlecht"
* item[=].item[=].item.answerOption[0].valueCoding = #1 "Männlich"
* item[=].item[=].item.answerOption[+].valueCoding = #2 "Weiblich"
* item[=].item[=].item.answerOption[+].valueCoding = #3 "Divers"
* item[=].item[=].type = #group
* item[=].item[=].linkId = "gruppe-geschlecht"
* item[=].item[=].text = "Geschlecht"
* item[=].item[+].item[0].type = #coding
* item[=].item[=].item[=].linkId = "2006"
* item[=].item[=].item[=].text = "Akuter Schlaganfall"
* item[=].item[=].item[=].answerOption[0].valueCoding = #1 "ja"
* item[=].item[=].item[=].answerOption[+].valueCoding = #0 "nein"
* item[=].item[=].item[=].answerOption[+].valueCoding = #2 "Monitoring an der SU bei Hochrisikopatient:innen"
* item[=].item[=].item[+].type = #coding
* item[=].item[=].item[=].linkId = "2007"
* item[=].item[=].item[=].text = "Falls kein akuter Schlaganfall"
* item[=].item[=].item[=].enableWhen.question = "2006"
* item[=].item[=].item[=].enableWhen.operator = #!=
* item[=].item[=].item[=].enableWhen.answerCoding.code = #1
* item[=].item[=].item[=].answerOption[0].valueCoding = #1 "Nicht-vaskuläre Erkrankung, kein klinisches Bild eines Schlaganfalls (TIA)"
* item[=].item[=].item[=].answerOption[+].valueCoding = #2 "Monitoring nach vaskulärer Intervention"
* item[=].item[=].item[=].answerOption[+].valueCoding = #3 "Nicht-vaskuläre Erkrankung als Ursache für Schlaganfallbild (TIA)"
* item[=].item[=].type = #group
* item[=].item[=].linkId = "gruppe-akuter-schlaganfall"
* item[=].item[=].text = "Akuter Schlaganfall"
* item[=].type = #group
* item[=].linkId = "gruppe-patientendaten"
* item[=].text = "Patientendaten"
* item[+].item[0].type = #boolean
* item[=].item[=].linkId = "3052"
* item[=].item[=].text = "Datum Ereignis bekannt"
* item[=].item[+].type = #date
* item[=].item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].item[=].extension[=].valueDate = "2024-01-01"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/maxValue"
* item[=].item[=].extension[=].valueDate = "2026-01-01"
* item[=].item[=].linkId = "3001"
* item[=].item[=].text = "Datum Ereignis"
* item[=].item[=].enableWhen.question = "3052"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "3040"
* item[=].item[=].text = "Datum 'last seen well' bekannt"
* item[=].item[+].type = #date
* item[=].item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].item[=].extension[=].valueDate = "2024-01-01"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/maxValue"
* item[=].item[=].extension[=].valueDate = "2026-01-01"
* item[=].item[=].linkId = "3041"
* item[=].item[=].text = "Datum 'last seen well'"
* item[=].item[=].enableWhen.question = "3040"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[+].type = #coding
* item[=].item[=].linkId = "3053"
* item[=].item[=].text = "Uhrzeit Ereignis bekannt"
* item[=].item[=].answerOption[0].valueCoding = #1 "ja"
* item[=].item[=].answerOption[+].valueCoding = #2 "nein, im Schlaf"
* item[=].item[=].answerOption[+].valueCoding = #3 "nein, nicht erhebbar"
* item[=].item[+].type = #time
* item[=].item[=].linkId = "3003"
* item[=].item[=].text = "Uhrzeit Ereignis"
* item[=].item[=].enableWhen.question = "3053"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding.code = #1
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "3050"
* item[=].item[=].text = "Uhrzeit 'last seen well' bekannt"
* item[=].item[=].enableWhen[0].question = "3053"
* item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].enableWhen[=].answerCoding.code = #2
* item[=].item[=].enableWhen[+].question = "3053"
* item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].enableWhen[=].answerCoding.code = #3
* item[=].item[=].enableBehavior = #any
* item[=].item[+].type = #time
* item[=].item[=].linkId = "3051"
* item[=].item[=].text = "Uhrzeit 'last seen well'"
* item[=].item[=].enableWhen.question = "3050"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[+].item[0].type = #coding
* item[=].item[=].item[=].linkId = "3005"
* item[=].item[=].item[=].text = "Ereignis aufgetreten"
* item[=].item[=].item[=].answerOption[0].valueCoding = #1 "Im Wachzustand"
* item[=].item[=].item[=].answerOption[+].valueCoding = #2 "Im Schlafzustand"
* item[=].item[=].item[=].answerOption[+].valueCoding = #3 "Unbekannt"
* item[=].item[=].item[+].type = #date
* item[=].item[=].item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].item[=].item[=].extension[=].valueDate = "2015-01-01"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/maxValue"
* item[=].item[=].item[=].extension[=].valueDate = "2026-01-01"
* item[=].item[=].item[=].linkId = "3006"
* item[=].item[=].item[=].text = "Datum Krankenhausaufnahme"
* item[=].item[=].item[+].type = #time
* item[=].item[=].item[=].linkId = "3007"
* item[=].item[=].item[=].text = "Uhrzeit Krankenhausaufnahme"
* item[=].item[=].item[+].type = #date
* item[=].item[=].item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].item[=].item[=].extension[=].valueDate = "2015-01-01"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/maxValue"
* item[=].item[=].item[=].extension[=].valueDate = "2026-01-01"
* item[=].item[=].item[=].linkId = "3008"
* item[=].item[=].item[=].text = "Datum Aufnahme Stroke Unit"
* item[=].item[=].item[+].type = #time
* item[=].item[=].item[=].linkId = "3009"
* item[=].item[=].item[=].text = "Uhrzeit Aufnahme Stroke Unit"
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "3012"
* item[=].item[=].item[=].text = "Prehospital-SCORE erhoben"
* item[=].item[=].item[+].type = #integer
* item[=].item[=].item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].item[=].item[=].extension[=].valueInteger = 0
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/maxValue"
* item[=].item[=].item[=].extension[=].valueInteger = 40
* item[=].item[=].item[=].linkId = "3013"
* item[=].item[=].item[=].text = "Prehospital-SCORE Wert"
* item[=].item[=].item[=].enableWhen.question = "3012"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[+].type = #coding
* item[=].item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item[=].extension.valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].item[=].linkId = "30541"
* item[=].item[=].item[=].text = "Zutransport"
* item[=].item[=].item[=].answerOption[0].valueCoding = #1 "Zutransport intern"
* item[=].item[=].item[=].answerOption[+].valueCoding = #2 "Zutransport extern"
* item[=].item[=].type = #group
* item[=].item[=].linkId = "gruppe-ereignis-aufgetreten"
* item[=].item[=].text = "Ereignis aufgetreten"
* item[=].item[+].item[0].type = #coding
* item[=].item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item[=].extension.valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].item[=].linkId = "3010"
* item[=].item[=].item[=].text = "Zutransport extern"
* item[=].item[=].item[=].answerOption[0].valueCoding = #1 "Anderes Krankenhaus"
* item[=].item[=].item[=].answerOption[+].valueCoding = #2 "Direkt"
* item[=].item[=].item[+].type = #coding
* item[=].item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item[=].extension.valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].item[=].linkId = "3011"
* item[=].item[=].item[=].text = "Art Zutransport – anderes Krankenhaus"
* item[=].item[=].item[=].enableWhen.question = "3010"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerCoding.code = #1
* item[=].item[=].item[=].answerOption[0].valueCoding = #1 "Rettung mit Notarzt"
* item[=].item[=].item[=].answerOption[+].valueCoding = #2 "Rettung ohne Notarzt"
* item[=].item[=].item[=].answerOption[+].valueCoding = #3 "Rettungshubschrauber"
* item[=].item[=].item[+].type = #coding
* item[=].item[=].item[=].linkId = "3020"
* item[=].item[=].item[=].text = "Art Zutransport – direkt"
* item[=].item[=].item[=].enableWhen.question = "3010"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerCoding.code = #2
* item[=].item[=].item[=].answerOption[0].valueCoding = #1 "Rettung mit Notarzt mit Aviso"
* item[=].item[=].item[=].answerOption[+].valueCoding = #2 "Rettung ohne Notarzt mit Aviso"
* item[=].item[=].item[=].answerOption[+].valueCoding = #3 "Rettungshubschrauber"
* item[=].item[=].item[=].answerOption[+].valueCoding = #4 "Privat"
* item[=].item[=].item[=].answerOption[+].valueCoding = #5 "Anderer"
* item[=].item[=].item[=].answerOption[+].valueCoding = #6 "Rettung mit Notarzt ohne Aviso"
* item[=].item[=].item[=].answerOption[+].valueCoding = #7 "Rettung ohne Notarzt ohne Aviso"
* item[=].item[=].item[=].answerOption[+].valueCoding = #8 "Rettung mit Notarzt"
* item[=].item[=].item[=].answerOption[+].valueCoding = #9 "Rettung ohne Notarzt"
* item[=].item[=].item[+].linkId = "3021"
* item[=].item[=].item[=].text = "Welcher Zutransport (wenn 'Anderer')"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].maxLength = 64
* item[=].item[=].item[=].enableWhen.question = "3020"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerCoding.code = #5
* item[=].item[=].type = #group
* item[=].item[=].linkId = "gruppe-zutransport-extern"
* item[=].item[=].text = "Zutransport extern"
* item[=].item[=].enableWhen.question = "30541"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding.code = #2
* item[=].item[+].linkId = "gruppe-zutransport-intern"
* item[=].item[=].text = "Zutransport intern"
* item[=].item[=].type = #group
* item[=].item[=].enableWhen.question = "30541"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding.code = #1
* item[=].item[=].item.type = #coding
* item[=].item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item.extension.valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].item.linkId = "zutransport-intern-auswahl"
* item[=].item[=].item.text = "Zutransport intern"
* item[=].item[=].item.answerOption[0].valueCoding = #3055 "Ambulanz"
* item[=].item[=].item.answerOption[+].valueCoding = #3056 "Andere Fachabteilung"
* item[=].item[=].item.answerOption[+].valueCoding = #3057 "Direkt an die Stroke Unit"
* item[=].item[=].item.answerOption[+].valueCoding = #3058 "Notaufnahme"
* item[=].item[=].item.answerOption[+].valueCoding = #3059 "Eigene Fachabteilung"
* item[=].item[=].item.answerOption[+].valueCoding = #3060 "Schlaganfall im Krankenhaus"
* item[=].type = #group
* item[=].linkId = "gruppe-aufnahme-und-diagnostik"
* item[=].text = "Aufnahme und Diagnostik"
* item[=].enableWhen.question = "2006"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerCoding.code = #1
* item[+].item.type = #integer
* item[=].item.extension[0].url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].item.extension[=].valueInteger = 0
* item[=].item.extension[+].url = "http://hl7.org/fhir/StructureDefinition/maxValue"
* item[=].item.extension[=].valueInteger = 42
* item[=].item.linkId = "4020"
* item[=].item.text = "Gesamtsumme NIH - SS bei Aufnahme"
* item[=].type = #group
* item[=].linkId = "gruppe-nih-aufnahme"
* item[=].text = "NIH Stroke Scale bei Aufnahme"
* item[=].enableWhen.question = "2006"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerCoding.code = #1
* item[+].item[0].type = #integer
* item[=].item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].item[=].extension[=].valueInteger = 0
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/maxValue"
* item[=].item[=].extension[=].valueInteger = 5
* item[=].item[=].linkId = "6001"
* item[=].item[=].text = "Rankinskala vor Insult"
* item[=].item[+].type = #integer
* item[=].item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].item[=].extension[=].valueInteger = 0
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/maxValue"
* item[=].item[=].extension[=].valueInteger = 5
* item[=].item[=].linkId = "6002"
* item[=].item[=].text = "Rankinskala bei Aufnahme"
* item[=].type = #group
* item[=].linkId = "gruppe-rankinskala-aufnahme"
* item[=].text = "Rankinskala bei Aufnahme"
* item[=].enableWhen.question = "2006"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerCoding.code = #1
* item[+].item[0].type = #coding
* item[=].item[=].linkId = "7001"
* item[=].item[=].text = "Syndrom"
* item[=].item[=].answerOption[0].valueCoding = #1 "Ischämie"
* item[=].item[=].answerOption[+].valueCoding = #2 "Primäre intrazerebrale Blutung"
* item[=].item[=].answerOption[+].valueCoding = #3 "Sinus-/Venenthrombose (SVT)"
* item[=].item[=].answerOption[+].valueCoding = #4 "Subarachnoidalblutung (SAB)"
* item[=].item[+].item.type = #coding
* item[=].item[=].item.linkId = "7005"
* item[=].item[=].item.text = "Lokalisation Ischämie"
* item[=].item[=].item.answerOption[0].valueCoding = #1 "Linke Großhirnhemisphäre"
* item[=].item[=].item.answerOption[+].valueCoding = #2 "Rechte Großhirnhemisphäre"
* item[=].item[=].item.answerOption[+].valueCoding = #3 "Beide Großhirnhemisphären"
* item[=].item[=].item.answerOption[+].valueCoding = #4 "Vorwiegend Hirnstamm"
* item[=].item[=].item.answerOption[+].valueCoding = #5 "Vorwiegend Kleinhirn"
* item[=].item[=].item.answerOption[+].valueCoding = #6 "Retina"
* item[=].item[=].item.answerOption[+].valueCoding = #7 "Rückenmark"
* item[=].item[=].type = #group
* item[=].item[=].linkId = "gruppe-lokalisation-ischamie"
* item[=].item[=].text = "Lokalisation"
* item[=].item[=].enableWhen.question = "7001"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding.code = #1
* item[=].item[+].item[0].type = #coding
* item[=].item[=].item[=].linkId = "7010"
* item[=].item[=].item[=].text = "Klinisches Syndrom"
* item[=].item[=].item[=].answerOption[0].valueCoding = #1 "LACS"
* item[=].item[=].item[=].answerOption[+].valueCoding = #2 "TACS"
* item[=].item[=].item[=].answerOption[+].valueCoding = #3 "PACS"
* item[=].item[=].item[=].answerOption[+].valueCoding = #4 "POCS"
* item[=].item[=].item[=].answerOption[+].valueCoding = #5 "Anderes"
* item[=].item[=].item[+].type = #string
* item[=].item[=].item[=].maxLength = 64
* item[=].item[=].item[=].linkId = "7011"
* item[=].item[=].item[=].text = "Welches anderes klinisches Syndrom"
* item[=].item[=].item[=].enableWhen.question = "7010"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerCoding.code = #5
* item[=].item[=].type = #group
* item[=].item[=].linkId = "gruppe-klinisches-syndrom"
* item[=].item[=].text = "Klinisches Syndrom"
* item[=].item[=].enableWhen.question = "7001"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding.code = #1
* item[=].item[+].item.type = #coding
* item[=].item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item.extension.valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].item.linkId = "7015"
* item[=].item[=].item.text = "Seite primäre intrazerebrale Blutung"
* item[=].item[=].item.answerOption[0].valueCoding = #1 "Links"
* item[=].item[=].item.answerOption[+].valueCoding = #2 "Rechts"
* item[=].item[=].item.answerOption[+].valueCoding = #3 "Beidseits"
* item[=].item[=].type = #group
* item[=].item[=].linkId = "gruppe-lokalisation-icb"
* item[=].item[=].text = "Lokalisation"
* item[=].item[=].enableWhen.question = "7001"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding.code = #2
* item[=].item[+].item[0].type = #boolean
* item[=].item[=].item[=].linkId = "7022"
* item[=].item[=].item[=].text = "Stammganglien"
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "7023"
* item[=].item[=].item[=].text = "Thalamus"
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "7024"
* item[=].item[=].item[=].text = "Cerebellum"
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "7025"
* item[=].item[=].item[=].text = "Lobär"
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "7026"
* item[=].item[=].item[=].text = "Pons"
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "7027"
* item[=].item[=].item[=].text = "IVH (intraventricular hemorrhage)"
* item[=].item[=].item[+].type = #coding
* item[=].item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item[=].extension.valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].item[=].linkId = "7030"
* item[=].item[=].item[=].text = "Wenn IVH: Lokalisation"
* item[=].item[=].item[=].enableWhen.question = "7027"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].answerOption[0].valueCoding = #1 "Seitenventrikel"
* item[=].item[=].item[=].answerOption[+].valueCoding = #2 "3. oder 4. Ventrikel"
* item[=].item[=].item[+].type = #integer
* item[=].item[=].item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].item[=].item[=].extension[=].valueInteger = 3
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/maxValue"
* item[=].item[=].item[=].extension[=].valueInteger = 15
* item[=].item[=].item[=].linkId = "7050"
* item[=].item[=].item[=].text = "GCS bei Aufnahme"
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "7060"
* item[=].item[=].item[=].text = "ICB bei Aufnahme bestimmt"
* item[=].item[=].item[+].type = #decimal
* item[=].item[=].item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].item[=].item[=].extension[=].valueDecimal = 0
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/maxValue"
* item[=].item[=].item[=].extension[=].valueDecimal = 500
* item[=].item[=].item[=].linkId = "7061"
* item[=].item[=].item[=].text = "Volumen in ml"
* item[=].item[=].item[=].enableWhen.question = "7060"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[+].type = #integer
* item[=].item[=].item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].item[=].item[=].extension[=].valueInteger = 0
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/maxValue"
* item[=].item[=].item[=].extension[=].valueInteger = 12
* item[=].item[=].item[=].linkId = "7072"
* item[=].item[=].item[=].text = "GRAEB Score"
* item[=].item[=].item[=].required = false
* item[=].item[=].type = #group
* item[=].item[=].linkId = "gruppe-lokalisation-primaere-icb"
* item[=].item[=].text = "Lokalisation primäre intrazerebrale Blutung"
* item[=].item[=].enableWhen.question = "7001"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding.code = #2
* item[=].type = #group
* item[=].linkId = "gruppe-syndrom"
* item[=].text = "Syndrom"
* item[=].enableWhen.question = "2006"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerCoding.code = #1
* item[+].item[0].item[0].type = #boolean
* item[=].item[=].item[=].linkId = "8888"
* item[=].item[=].item[=].text = "Bildgebende Untersuchung durchgeführt"
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "8000"
* item[=].item[=].item[=].text = "Bereits vor Krankenhausaufnahme durchgeführt"
* item[=].item[=].item[=].enableWhen.question = "8888"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[+].type = #date
* item[=].item[=].item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].item[=].item[=].extension[=].valueDate = "2015-01-01"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/maxValue"
* item[=].item[=].item[=].extension[=].valueDate = "2026-01-01"
* item[=].item[=].item[=].linkId = "8001"
* item[=].item[=].item[=].text = "Datum"
* item[=].item[=].item[=].enableWhen[0].question = "8000"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerBoolean = true
* item[=].item[=].item[=].enableWhen[+].question = "8003"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerBoolean = true
* item[=].item[=].item[=].enableWhen[+].question = "8004"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerBoolean = true
* item[=].item[=].item[=].enableBehavior = #any
* item[=].item[=].item[+].type = #time
* item[=].item[=].item[=].linkId = "8002"
* item[=].item[=].item[=].text = "Uhrzeit CCT"
* item[=].item[=].item[=].enableWhen[0].question = "8000"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerBoolean = true
* item[=].item[=].item[=].enableWhen[+].question = "8003"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerBoolean = true
* item[=].item[=].item[=].enableWhen[+].question = "8004"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerBoolean = true
* item[=].item[=].item[=].enableBehavior = #any
* item[=].item[=].type = #group
* item[=].item[=].linkId = "gruppe-erste-bildgebung"
* item[=].item[=].text = "Erste Bildgebung"
* item[=].item[+].item[0].type = #boolean
* item[=].item[=].item[=].linkId = "8003"
* item[=].item[=].item[=].text = "CCT durchgeführt"
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "8004"
* item[=].item[=].item[=].text = "MRI durchgeführt"
* item[=].item[=].type = #group
* item[=].item[=].linkId = "gruppe-bildgebung-verfahren"
* item[=].item[=].text = "Bildgebendes Verfahren"
* item[=].item[=].enableWhen.question = "8888"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[+].item[0].type = #boolean
* item[=].item[=].item[=].linkId = "8889"
* item[=].item[=].item[=].text = "Untersuchung der hirnzuführenden Gefäße durchgeführt"
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "8011"
* item[=].item[=].item[=].text = "Bereits vor Krankenhausaufnahme durchgeführt"
* item[=].item[=].item[=].enableWhen.question = "8889"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[+].type = #date
* item[=].item[=].item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].item[=].item[=].extension[=].valueDate = "2015-01-01"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/maxValue"
* item[=].item[=].item[=].extension[=].valueDate = "2026-01-01"
* item[=].item[=].item[=].linkId = "8009"
* item[=].item[=].item[=].text = "Datum"
* item[=].item[=].item[=].enableWhen[0].question = "8011"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerBoolean = true
* item[=].item[=].item[=].enableWhen[+].question = "8008"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerBoolean = true
* item[=].item[=].item[=].enableWhen[+].question = "8013"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerBoolean = true
* item[=].item[=].item[=].enableWhen[+].question = "8006"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerBoolean = true
* item[=].item[=].item[=].enableBehavior = #any
* item[=].item[=].item[+].type = #time
* item[=].item[=].item[=].linkId = "8010"
* item[=].item[=].item[=].text = "Uhrzeit"
* item[=].item[=].item[=].enableWhen[0].question = "8011"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerBoolean = true
* item[=].item[=].item[=].enableWhen[+].question = "8008"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerBoolean = true
* item[=].item[=].item[=].enableWhen[+].question = "8013"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerBoolean = true
* item[=].item[=].item[=].enableWhen[+].question = "8006"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerBoolean = true
* item[=].item[=].item[=].enableBehavior = #any
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "8008"
* item[=].item[=].item[=].text = "Sonografie"
* item[=].item[=].item[=].enableWhen.question = "8889"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "8013"
* item[=].item[=].item[=].text = "CTA"
* item[=].item[=].item[=].enableWhen.question = "8889"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "8006"
* item[=].item[=].item[=].text = "MR-Angio"
* item[=].item[=].item[=].enableWhen.question = "8889"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[+].type = #coding
* item[=].item[=].item[=].linkId = "8030"
* item[=].item[=].item[=].text = "Erste Untersuchung der Hirngefäße"
* item[=].item[=].item[=].answerOption[0].valueCoding = #1 "Sonografie"
* item[=].item[=].item[=].answerOption[+].valueCoding = #2 "CTA"
* item[=].item[=].item[=].answerOption[+].valueCoding = #3 "MR-Angio"
* item[=].item[=].item[=].answerOption[+].valueCoding = #4 "DSA"
* item[=].item[=].item[=].answerOption[+].valueCoding = #5 "keine"
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "8060"
* item[=].item[=].item[=].text = "Gefäßverschluss (Hauptstamm)"
* item[=].item[=].item[+].type = #coding
* item[=].item[=].item[=].extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-openLabel"
* item[=].item[=].item[=].extension[=].valueString = "Sonstiger Verschluss (bitte angeben)"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item[=].extension[=].valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#check-box "Check-box"
* item[=].item[=].item[=].linkId = "806X"
* item[=].item[=].item[=].text = "Lokalisation des Gefäßverschlusses"
* item[=].item[=].item[=].enableWhen.question = "8060"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].answerConstraint = #optionsOrString
* item[=].item[=].item[=].answerOption[0].valueCoding = $vessel-occlusion#8061 "M1-Verschluss"
* item[=].item[=].item[=].answerOption[+].valueCoding = $vessel-occlusion#8062 "M2-Verschluss"
* item[=].item[=].item[=].answerOption[+].valueCoding = $vessel-occlusion#8063 "T-Gabelverschluss"
* item[=].item[=].item[=].answerOption[+].valueCoding = $vessel-occlusion#8064 "Distaler ACI-Verschluss, T-Gabel jedoch offen"
* item[=].item[=].item[=].answerOption[+].valueCoding = $vessel-occlusion#8065 "Basilaris-Verschluss"
* item[=].item[=].item[=].answerOption[+].valueCoding = $vessel-occlusion#8066 "V4-Verschluss"
* item[=].item[=].item[=].answerOption[+].valueCoding = $vessel-occlusion#8067 "A. c. posterior-Verschluss"
* item[=].item[=].item[=].answerOption[+].valueCoding = $vessel-occlusion#8071 "A. c. anterior-Verschluss"
* item[=].item[=].item[=].answerOption[+].valueCoding = $vessel-occlusion#8072 "Verschluss der proximalen ACI"
* item[=].item[=].item[=].answerOption[+].valueCoding = $vessel-occlusion#8073 "Stenose der proximalen ACI (wenn >= 70 %)"
* item[=].item[=].type = #group
* item[=].item[=].linkId = "gruppe-gefäßdiagnostik-extrakraniell"
* item[=].item[=].text = "Erste Untersuchung der hirnzuführenden Gefäße (extrakraniell)"
* item[=].type = #group
* item[=].linkId = "gruppe-diagnostik"
* item[=].text = "Diagnostik"
* item[=].enableWhen.question = "2006"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerCoding.code = #1
* item[+].item[0].type = #coding
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].linkId = "8070"
* item[=].item[=].text = "Plättchenhemmer"
* item[=].item[=].answerOption[0].valueCoding = #1 "Mono"
* item[=].item[=].answerOption[+].valueCoding = #2 "Dual"
* item[=].item[=].answerOption[+].valueCoding = #0 "Nein"
* item[=].item[+].linkId = "8075"
* item[=].item[=].text = "Vitamin K Antagonist"
* item[=].item[=].type = #coding
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].answerOption[0].valueCoding = #1 "ja"
* item[=].item[=].answerOption[+].valueCoding = #2 "derzeit pausiert"
* item[=].item[=].answerOption[+].valueCoding = #0 "nein"
* item[=].item[+].type = #decimal
* item[=].item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].item[=].extension[=].valueDecimal = 0
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/maxValue"
* item[=].item[=].extension[=].valueDecimal = 9.9
* item[=].item[=].linkId = "8076"
* item[=].item[=].text = "INR-Wert bei Aufnahme"
* item[=].item[=].enableWhen.question = "8075"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding.code = #1
* item[=].item[+].linkId = "8080"
* item[=].item[=].text = "Apixaban"
* item[=].item[=].type = #coding
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].answerOption[0].valueCoding = #1 "ja"
* item[=].item[=].answerOption[+].valueCoding = #2 "derzeit pausiert"
* item[=].item[=].answerOption[+].valueCoding = #0 "nein"
* item[=].item[+].linkId = "8085"
* item[=].item[=].text = "Dabigatran"
* item[=].item[=].type = #coding
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].answerOption[0].valueCoding = #1 "ja"
* item[=].item[=].answerOption[+].valueCoding = #2 "derzeit pausiert"
* item[=].item[=].answerOption[+].valueCoding = #0 "nein"
* item[=].item[+].linkId = "8090"
* item[=].item[=].text = "Edoxaban"
* item[=].item[=].type = #coding
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].answerOption[0].valueCoding = #1 "ja"
* item[=].item[=].answerOption[+].valueCoding = #2 "derzeit pausiert"
* item[=].item[=].answerOption[+].valueCoding = #0 "nein"
* item[=].item[+].linkId = "8095"
* item[=].item[=].text = "Rivaroxaban"
* item[=].item[=].type = #coding
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].answerOption[0].valueCoding = #1 "ja"
* item[=].item[=].answerOption[+].valueCoding = #2 "derzeit pausiert"
* item[=].item[=].answerOption[+].valueCoding = #0 "nein"
* item[=].type = #group
* item[=].linkId = "gruppe-vortherapie"
* item[=].text = "Vortherapie bei Aufnahme (Antithrombotische Therapie)"
* item[=].enableWhen.question = "2006"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerCoding.code = #1
* item[+].item[0].linkId = "9001"
* item[=].item[=].text = "Hypertonie"
* item[=].item[=].type = #coding
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].answerOption[0].valueCoding = #1 "ja"
* item[=].item[=].answerOption[+].valueCoding = #0 "nein"
* item[=].item[=].answerOption[+].valueCoding = #2 "unbekannt"
* item[=].item[+].linkId = "9002"
* item[=].item[=].text = "Diabetes mellitus"
* item[=].item[=].type = #coding
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].answerOption[0].valueCoding = #1 "ja"
* item[=].item[=].answerOption[+].valueCoding = #0 "nein"
* item[=].item[=].answerOption[+].valueCoding = #2 "unbekannt"
* item[=].item[+].linkId = "9003"
* item[=].item[=].text = "Vorinsult"
* item[=].item[=].type = #coding
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].answerOption[0].valueCoding = #1 "ja"
* item[=].item[=].answerOption[+].valueCoding = #0 "nein"
* item[=].item[=].answerOption[+].valueCoding = #2 "unbekannt"
* item[=].item[+].linkId = "9004"
* item[=].item[=].text = "Herzinfarkt"
* item[=].item[=].type = #coding
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].answerOption[0].valueCoding = #1 "ja"
* item[=].item[=].answerOption[+].valueCoding = #0 "nein"
* item[=].item[=].answerOption[+].valueCoding = #2 "unbekannt"
* item[=].item[+].linkId = "9005"
* item[=].item[=].text = "Hypercholesterinämie"
* item[=].item[=].type = #coding
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].answerOption[0].valueCoding = #1 "ja"
* item[=].item[=].answerOption[+].valueCoding = #0 "nein"
* item[=].item[=].answerOption[+].valueCoding = #2 "unbekannt"
* item[=].item[+].linkId = "9015"
* item[=].item[=].text = "DLCN Score"
* item[=].item[=].type = #integer
* item[=].item[=].required = false
* item[=].item[=].enableWhen.question = "9005"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding.code = #1
* item[=].item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].item[=].extension[=].valueInteger = 0
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/maxValue"
* item[=].item[=].extension[=].valueInteger = 24
* item[=].item[+].linkId = "9006"
* item[=].item[=].text = "Vorhofflimmern"
* item[=].item[=].type = #coding
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].answerOption[0].valueCoding = #1 "ja bereits bekannt"
* item[=].item[=].answerOption[+].valueCoding = #3 "ja De-Novo (EKG)"
* item[=].item[=].answerOption[+].valueCoding = #0 "nein"
* item[=].item[+].linkId = "9009"
* item[=].item[=].text = "Nikotin"
* item[=].item[=].type = #coding
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].answerOption[0].valueCoding = #1 "ja"
* item[=].item[=].answerOption[+].valueCoding = #0 "nein"
* item[=].item[=].answerOption[+].valueCoding = #2 "unbekannt"
* item[=].item[+].linkId = "9012"
* item[=].item[=].text = "Alkohol"
* item[=].item[=].type = #coding
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].answerOption[0].valueCoding = #1 "ja"
* item[=].item[=].answerOption[+].valueCoding = #0 "nein"
* item[=].item[=].answerOption[+].valueCoding = #2 "unbekannt"
* item[=].item[+].linkId = "9013"
* item[=].item[=].text = "Niereninsuffizienz"
* item[=].item[=].type = #coding
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].answerOption[0].valueCoding = #1 "ja"
* item[=].item[=].answerOption[+].valueCoding = #0 "nein"
* item[=].item[=].answerOption[+].valueCoding = #2 "unbekannt"
* item[=].type = #group
* item[=].linkId = "gruppe-risikofaktoren"
* item[=].text = "Risikofaktoren und Begleiterkrankungen"
* item[=].enableWhen.question = "2006"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerCoding.code = #1
* item[+].item[0].linkId = "10001"
* item[=].item[=].text = "Lyse i.v."
* item[=].item[=].type = #coding
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].answerOption[0].valueCoding = #1 "ja"
* item[=].item[=].answerOption[+].valueCoding = #0 "nein"
* item[=].item[=].answerOption[+].valueCoding = #2 "extern durchgeführt"
* item[=].item[+].type = #coding
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].linkId = "10002"
* item[=].item[=].text = "Art der Thrombolyse"
* item[=].item[=].enableWhen.question = "10001"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding.code = #1
* item[=].item[=].answerOption[0].valueCoding = #1 "Alteplase"
* item[=].item[=].answerOption[+].valueCoding = #2 "Tenecteplase"
* item[=].item[+].type = #date
* item[=].item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].item[=].extension[=].valueDate = "2015-01-01"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/maxValue"
* item[=].item[=].extension[=].valueDate = "2026-01-01"
* item[=].item[=].linkId = "10040"
* item[=].item[=].text = "Datum Lyse i.v."
* item[=].item[=].enableWhen.question = "10001"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding.code = #1
* item[=].item[+].type = #time
* item[=].item[=].linkId = "10041"
* item[=].item[=].text = "Uhrzeit Lyse i.v."
* item[=].item[=].enableWhen.question = "10001"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding.code = #1
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "10090"
* item[=].item[=].text = "Akute endovaskuläre Behandlung"
* item[=].item[+].linkId = "10005"
* item[=].item[=].text = "Thrombozytenaggregationshemmer"
* item[=].item[=].type = #coding
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].answerOption[0].valueCoding = #2 "Mono"
* item[=].item[=].answerOption[+].valueCoding = #3 "Dual"
* item[=].item[=].answerOption[+].valueCoding = #0 "Nein"
* item[=].item[+].linkId = "10091"
* item[=].item[=].text = "Heparin"
* item[=].item[=].type = #coding
* item[=].item[=].answerOption[0].valueCoding = #1 "Keines"
* item[=].item[=].answerOption[+].valueCoding = #2 "Low"
* item[=].item[=].answerOption[+].valueCoding = #3 "Medium"
* item[=].item[=].answerOption[+].valueCoding = #4 "High"
* item[=].item[+].linkId = "10092"
* item[=].item[=].text = "PTA/Stent der ACI"
* item[=].item[=].type = #coding
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].answerOption[0].valueCoding = #1 "ja"
* item[=].item[=].answerOption[+].valueCoding = #0 "nein"
* item[=].item[=].answerOption[+].valueCoding = #2 "vorgesehen"
* item[=].item[+].linkId = "10093"
* item[=].item[=].text = "CEA"
* item[=].item[=].type = #coding
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].answerOption[0].valueCoding = #1 "ja"
* item[=].item[=].answerOption[+].valueCoding = #0 "nein"
* item[=].item[=].answerOption[+].valueCoding = #2 "vorgesehen"
* item[=].type = #group
* item[=].linkId = "gruppe-therapie-ischämisch"
* item[=].text = "Therapie ischämischer Schlaganfall"
* item[=].enableWhen.question = "2006"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerCoding.code = #1
* item[=].enableBehavior = #all
* item[+].item[0].type = #boolean
* item[=].item[=].linkId = "10060"
* item[=].item[=].text = "Externe Ventrikel-Drainage"
* item[=].item[+].linkId = "10061"
* item[=].item[=].text = "Lumbale Drainage"
* item[=].item[=].type = #boolean
* item[=].item[+].linkId = "10062"
* item[=].item[=].text = "Intraventrikuläre Lyse"
* item[=].item[=].type = #boolean
* item[=].item[+].linkId = "10063"
* item[=].item[=].text = "Operative Ausräumung"
* item[=].item[=].type = #boolean
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "10064"
* item[=].item[=].text = "Hypothermie"
* item[=].type = #group
* item[=].linkId = "gruppe-therapie-icb"
* item[=].text = "Therapie intrazerebrale Blutung"
* item[=].enableWhen.question = "2006"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerCoding.code = #1
* item[=].enableBehavior = #all
* item[+].item[0].type = #boolean
* item[=].item[=].linkId = "10014"
* item[=].item[=].text = "Nasogastrische Sonde"
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "10017"
* item[=].item[=].text = "Op. Dekompression"
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "10070"
* item[=].item[=].text = "Antagonisierung (N)OAK"
* item[=].item[+].type = #coding
* item[=].item[=].linkId = "10071"
* item[=].item[=].text = "Falls Antagonisierung \"Ja\""
* item[=].item[=].enableWhen.question = "10070"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].answerOption[0].valueCoding = #1 "PPSB"
* item[=].item[=].answerOption[+].valueCoding = #2 "FFP"
* item[=].item[=].answerOption[+].valueCoding = #3 "Idarucizumab"
* item[=].item[=].answerOption[+].valueCoding = #4 "Anderes spezifisches Antidot"
* item[=].item[+].type = #coding
* item[=].item[=].linkId = "10080"
* item[=].item[=].text = "Physiotherapie"
* item[=].item[=].answerOption[0].valueCoding = #1 "Ja, Beginn innerhalb von 24h"
* item[=].item[=].answerOption[+].valueCoding = #2 "Ja, Beginn nach 24h"
* item[=].item[=].answerOption[+].valueCoding = #0 "Nein"
* item[=].item[+].type = #coding
* item[=].item[=].linkId = "10081"
* item[=].item[=].text = "Ergotherapie"
* item[=].item[=].answerOption[0].valueCoding = #1 "Ja, Beginn innerhalb von 24h"
* item[=].item[=].answerOption[+].valueCoding = #2 "Ja, Beginn nach 24h"
* item[=].item[=].answerOption[+].valueCoding = #0 "Nein"
* item[=].item[+].type = #coding
* item[=].item[=].linkId = "10082"
* item[=].item[=].text = "Logopädie"
* item[=].item[=].answerOption[0].valueCoding = #1 "Ja, Beginn innerhalb von 24h"
* item[=].item[=].answerOption[+].valueCoding = #2 "Ja, Beginn nach 24h"
* item[=].item[=].answerOption[+].valueCoding = #0 "Nein"
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "10083"
* item[=].item[=].text = "Schlucktest (z.B. GUSS) durchgeführt"
* item[=].type = #group
* item[=].linkId = "gruppe-therapie-icb-ischämisch"
* item[=].text = "Therapie ischämischer Schlaganfall oder intrazerebrale Blutung"
* item[=].enableWhen.question = "2006"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerCoding = #1 "ja"
* item[=].enableBehavior = #any
* item[+].item[0].type = #boolean
* item[=].item[=].linkId = "20050"
* item[=].item[=].text = "Zuweisung in anderes Zentrum"
* item[=].item[+].type = #coding
* item[=].item[=].linkId = "20051"
* item[=].item[=].text = "Wenn ja, in welches Zentrum?"
* item[=].item[=].enableWhen.question = "20050"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].answerOption[0].valueCoding = #1 "Klinikum Klagenfurt am Wörthersee"
* item[=].item[=].answerOption[+].valueCoding = #5 "Landesklinikum Wr. Neustadt"
* item[=].item[=].answerOption[+].valueCoding = #7 "Universitätsklinikum Tulln"
* item[=].item[=].answerOption[+].valueCoding = #8 "Universitätsklinikum St. Pölten"
* item[=].item[=].answerOption[+].valueCoding = #9 "Linz Kepler Universitätsklinikum Med Campus III"
* item[=].item[=].answerOption[+].valueCoding = #11 "Linz Kepler Universitätsklinikum Neuromed Campus"
* item[=].item[=].answerOption[+].valueCoding = #16 "Christian-Doppler-Klinik Salzburg"
* item[=].item[=].answerOption[+].valueCoding = #19 "Landeskrankenhaus Universitätsklinikum Graz"
* item[=].item[=].answerOption[+].valueCoding = #22 "Landeskrankenhaus Universitätskliniken Innsbruck"
* item[=].item[=].answerOption[+].valueCoding = #25 "Universtätsklinikum AKH Wien"
* item[=].item[=].answerOption[+].valueCoding = #26 "Krankenhaus der Barmherzigen Brüder Wien"
* item[=].item[=].answerOption[+].valueCoding = #29 "Wiener Gesundheitsverbund Klinik Landstraße"
* item[=].item[=].answerOption[+].valueCoding = #34 "Landeskrankenhaus Feldkirch"
* item[=].item[+].type = #coding
* item[=].item[=].linkId = "20048"
* item[=].item[=].text = "Dokumentierendes Zentrum"
* item[=].item[=].answerOption[0].valueCoding = #1 "eigenes Zentrum"
* item[=].item[=].answerOption[+].valueCoding = #0 "anderes Zentrum"
* item[=].item[+].type = #coding
* item[=].item[=].linkId = "20052"
* item[=].item[=].text = "Intervenierendes Zentrum"
* item[=].item[=].answerConstraint = #optionsOnly
* item[=].item[=].answerOption[0].valueCoding = #1 "Klinikum Klagenfurt am Wörthersee"
* item[=].item[=].answerOption[+].valueCoding = #5 "Landesklinikum Wr. Neustadt"
* item[=].item[=].answerOption[+].valueCoding = #7 "Universitätsklinikum Tulln"
* item[=].item[=].answerOption[+].valueCoding = #8 "Universitätsklinikum St. Pölten"
* item[=].item[=].answerOption[+].valueCoding = #9 "Linz Kepler Universitätsklinikum Med Campus III"
* item[=].item[=].answerOption[+].valueCoding = #11 "Linz Kepler Universitätsklinikum Neuromed Campus"
* item[=].item[=].answerOption[+].valueCoding = #16 "Christian-Doppler-Klinik Salzburg"
* item[=].item[=].answerOption[+].valueCoding = #19 "Landeskrankenhaus Universitätsklinikum Graz"
* item[=].item[=].answerOption[+].valueCoding = #22 "Landeskrankenhaus Universitätskliniken Innsbruck"
* item[=].item[=].answerOption[+].valueCoding = #25 "Universtätsklinikum AKH Wien"
* item[=].item[=].answerOption[+].valueCoding = #26 "Krankenhaus der Barmherzigen Brüder Wien"
* item[=].item[=].answerOption[+].valueCoding = #29 "Wiener Gesundheitsverbund Klinik Landstraße"
* item[=].item[=].answerOption[+].valueCoding = #34 "Landeskrankenhaus Feldkirch"
* item[=].type = #group
* item[=].linkId = "gruppe-basisdaten-endovaskulär"
* item[=].text = "Basisdaten und Ausgangsbefund (endovaskuläres Protokoll)"
* item[=].enableWhen.question = "10090"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerBoolean = true
* item[+].item[0].type = #boolean
* item[=].item[=].linkId = "20080"
* item[=].item[=].text = "IV Thrombolyse"
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "20081"
* item[=].item[=].text = "IA Thrombolyse"
* item[=].item[+].type = #coding
* item[=].item[=].linkId = "20104"
* item[=].item[=].text = "wenn IA-Thrombolyse, welches Trombolytikum"
* item[=].item[=].enableWhen.question = "20081"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].answerOption[0].valueCoding = #0 "rTPA"
* item[=].item[=].answerOption[+].valueCoding = #3 "andere"
* item[=].item[+].type = #integer
* item[=].item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].item[=].extension[=].valueInteger = 0
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/maxValue"
* item[=].item[=].extension[=].valueInteger = 999
* item[=].item[=].linkId = "20105"
* item[=].item[=].text = "wenn rTPA: Gesamtdosis von IA rTPA in mg"
* item[=].item[=].enableWhen.question = "20104"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding = #0 "rTPA"
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "20082"
* item[=].item[=].text = "Thrombektomie"
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "20102"
* item[=].item[=].text = "ASPECT Score erfasst"
* item[=].item[+].type = #integer
* item[=].item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].item[=].extension[=].valueInteger = 0
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/maxValue"
* item[=].item[=].extension[=].valueInteger = 10
* item[=].item[=].linkId = "200601"
* item[=].item[=].text = "ASPECT Score"
* item[=].item[=].enableWhen.question = "20102"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[+].item[0].type = #boolean
* item[=].item[=].item[=].linkId = "20108"
* item[=].item[=].item[=].text = "ASS"
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "20109"
* item[=].item[=].item[=].text = "Clopidogrel"
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "20110"
* item[=].item[=].item[=].text = "GPIIb/IIIa Antagonisten"
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "20111"
* item[=].item[=].item[=].text = "Heparin"
* item[=].item[=].item[+].type = #coding
* item[=].item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item[=].extension.valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].item[=].linkId = "20161"
* item[=].item[=].item[=].text = "Ballonkatheter"
* item[=].item[=].item[=].answerOption[0].valueCoding = #1 "ja"
* item[=].item[=].item[=].answerOption[+].valueCoding = #0 "nein"
* item[=].item[=].item[=].answerOption[+].valueCoding = #2 "unbekannt"
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "20090"
* item[=].item[=].item[=].text = "Stentretriever"
* item[=].item[=].item[=].enableWhen.question = "20082"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "20091"
* item[=].item[=].item[=].text = "Aspiration"
* item[=].item[=].item[=].enableWhen.question = "20082"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[+].type = #date
* item[=].item[=].item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].item[=].item[=].extension[=].valueDate = "2015-01-01"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/maxValue"
* item[=].item[=].item[=].extension[=].valueDate = "2026-01-01"
* item[=].item[=].item[=].linkId = "20175"
* item[=].item[=].item[=].text = "Datum Angiographiebeginn"
* item[=].item[=].item[=].enableWhen.question = "20082"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[+].type = #time
* item[=].item[=].item[=].linkId = "20176"
* item[=].item[=].item[=].text = "Uhrzeit Angiographiebeginn"
* item[=].item[=].item[=].enableWhen.question = "20082"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[+].type = #date
* item[=].item[=].item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].item[=].item[=].extension[=].valueDate = "2015-01-01"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/maxValue"
* item[=].item[=].item[=].extension[=].valueDate = "2026-01-01"
* item[=].item[=].item[=].linkId = "20177"
* item[=].item[=].item[=].text = "Datum Gefäßrekanalisation"
* item[=].item[=].item[=].enableWhen.question = "20082"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[+].type = #time
* item[=].item[=].item[=].linkId = "20178"
* item[=].item[=].item[=].text = "Uhrzeit Gefäßrekanalisation"
* item[=].item[=].item[=].enableWhen.question = "20082"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[+].type = #coding
* item[=].item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item[=].extension.valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].item[=].linkId = "201621"
* item[=].item[=].item[=].text = "Anzahl der Passagen"
* item[=].item[=].item[=].enableWhen.question = "20082"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].answerOption[0].valueCoding = #0 "eins"
* item[=].item[=].item[=].answerOption[+].valueCoding = #1 "zwei"
* item[=].item[=].item[=].answerOption[+].valueCoding = #2 "drei"
* item[=].item[=].item[=].answerOption[+].valueCoding = #3 "vier"
* item[=].item[=].item[=].answerOption[+].valueCoding = #4 ">=5"
* item[=].item[=].item[=].answerOption[+].valueCoding = #5 "keine"
* item[=].item[=].item[+].type = #coding
* item[=].item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item[=].extension.valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#check-box "Check-box"
* item[=].item[=].item[=].linkId = "20128"
* item[=].item[=].item[=].text = "angiographischer Gefäßbefund"
* item[=].item[=].item[=].enableWhen.question = "20082"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].answerOption[0].valueCoding = #7 "bereits erfolgte, vollständige Rekanalisation"
* item[=].item[=].item[=].answerOption[+].valueCoding = #0 "M1-Verschluß"
* item[=].item[=].item[=].answerOption[+].valueCoding = #1 "M2-Verschluß"
* item[=].item[=].item[=].answerOption[+].valueCoding = #2 "T-Gabelverschluß"
* item[=].item[=].item[=].answerOption[+].valueCoding = #3 "distaler ACI-Verschluß, T-Gabel jedoch offen"
* item[=].item[=].item[=].answerOption[+].valueCoding = #8 "Verschluss der proximalen ACI"
* item[=].item[=].item[=].answerOption[+].valueCoding = #4 "Basilaris-Verschluß"
* item[=].item[=].item[=].answerOption[+].valueCoding = #5 "V4-Verschluß"
* item[=].item[=].item[=].answerOption[+].valueCoding = #6 "andere"
* item[=].item[=].item[=].answerOption[+].valueCoding = #9 "Stenose der proximalen ACI (wenn >=70%)"
* item[=].item[=].item[=].answerOption[+].valueCoding = #10 "A. c. posterior-Verschluss"
* item[=].item[=].item[=].answerOption[+].valueCoding = #11 "A. c. anterior-Verschluss"
* item[=].item[=].item[+].type = #string
* item[=].item[=].item[=].maxLength = 64
* item[=].item[=].item[=].linkId = "20129"
* item[=].item[=].item[=].text = "Wenn andere: Welcher"
* item[=].item[=].item[=].enableWhen[0].question = "20082"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerBoolean = true
* item[=].item[=].item[=].enableWhen[+].question = "20128"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerCoding = #6 "andere, bitte spezifizieren"
* item[=].item[=].item[=].enableBehavior = #all
* item[=].item[=].item[+].type = #coding
* item[=].item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item[=].extension.valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].item[=].linkId = "20150"
* item[=].item[=].item[=].text = "Intubation für Angiographie"
* item[=].item[=].item[=].enableWhen.question = "20082"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].answerOption[0].valueCoding = #1 "ja"
* item[=].item[=].item[=].answerOption[+].valueCoding = #0 "nein"
* item[=].item[=].item[=].answerOption[+].valueCoding = #2 "unbekannt"
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "20045"
* item[=].item[=].item[=].text = "Permanenter Stent"
* item[=].item[=].item[=].enableWhen.question = "20082"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[+].type = #coding
* item[=].item[=].item[=].linkId = "20046"
* item[=].item[=].item[=].text = "Wenn permanenter Stent Ja:"
* item[=].item[=].item[=].enableWhen[0].question = "20045"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerBoolean = true
* item[=].item[=].item[=].enableWhen[+].question = "20082"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerBoolean = true
* item[=].item[=].item[=].enableBehavior = #all
* item[=].item[=].item[=].answerOption[0].valueCoding = #1 "Carotis Interna (extrakraniell)"
* item[=].item[=].item[=].answerOption[+].valueCoding = #2 "Intrakranielle Gefäße"
* item[=].item[=].item[=].answerOption[+].valueCoding = #3 "andere extrakranielle Gefäße"
* item[=].item[=].item[+].type = #coding
* item[=].item[=].item[=].linkId = "20179"
* item[=].item[=].item[=].text = "Initialer TICI-Score"
* item[=].item[=].item[=].enableWhen.question = "20082"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].answerOption[0].valueCoding = #0 "Grad 0"
* item[=].item[=].item[=].answerOption[+].valueCoding = #1 "Grad 1"
* item[=].item[=].item[=].answerOption[+].valueCoding = #2 "Grad 2a"
* item[=].item[=].item[=].answerOption[+].valueCoding = #3 "Grad 2b"
* item[=].item[=].item[=].answerOption[+].valueCoding = #5 "Grad 3"
* item[=].item[=].item[=].answerOption[+].valueCoding = #6 "unbekannt"
* item[=].item[=].item[+].type = #coding
* item[=].item[=].item[=].linkId = "20133"
* item[=].item[=].item[=].text = "TICI-Score bei Angio-Ende"
* item[=].item[=].item[=].enableWhen.question = "20082"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].answerOption[0].valueCoding = #0 "Grad 0"
* item[=].item[=].item[=].answerOption[+].valueCoding = #1 "Grad 1"
* item[=].item[=].item[=].answerOption[+].valueCoding = #2 "Grad 2a"
* item[=].item[=].item[=].answerOption[+].valueCoding = #3 "Grad 2b"
* item[=].item[=].item[=].answerOption[+].valueCoding = #5 "Grad 3"
* item[=].item[=].item[=].answerOption[+].valueCoding = #6 "unbekannt"
* item[=].item[=].type = #group
* item[=].item[=].linkId = "group-sonstige-medikation"
* item[=].item[=].text = "Sonstige periproz. antiaggregatorische Medikation"
* item[=].type = #group
* item[=].linkId = "gruppe-therapie-endovaskuläre"
* item[=].text = "Therapie, Intervention, Komplikationen (endovaskuläres Protokoll)"
* item[=].enableWhen.question = "10090"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerBoolean = true
* item[=].enableBehavior = #all
* item[+].item[0].type = #coding
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#check-box "Check-box"
* item[=].item[=].linkId = "20135"
* item[=].item[=].text = "Prozedurale Komplikationen aufgetreten"
* item[=].item[=].required = false
* item[=].item[=].repeats = true
* item[=].item[=].answerOption[0].valueCoding = #20136 "periprozedurale Dissektion (nicht flussrelevant)"
* item[=].item[=].answerOption[+].valueCoding = #20137 "periprozedurale Dissektion (flussrelevant)"
* item[=].item[=].answerOption[+].valueCoding = #20138 "intrazerebrale Blutung (ICB)"
* item[=].item[=].answerOption[+].valueCoding = #20139 "SAB"
* item[=].item[=].answerOption[+].valueCoding = #20140 "Thrombembolische Komplikationen"
* item[=].item[=].answerOption[+].valueCoding = #20141 "Reokklusion des Zielgefäßes"
* item[=].item[=].answerOption[+].valueCoding = #20142 "Komplikationen an Punktionsstelle, z.B. Pseudoaneurysma/OP-würdige Extravasation"
* item[=].item[=].answerOption[+].valueCoding = #20143 "andere"
* item[=].item[+].type = #text
* item[=].item[=].maxLength = 64
* item[=].item[=].linkId = "20180"
* item[=].item[=].text = "Welche andere Komplikationen ?"
* item[=].item[=].enableWhen.question = "20135"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding = #20143 "andere"
* item[=].item[+].type = #coding
* item[=].item[=].linkId = "20187"
* item[=].item[=].text = "Zeitpunkt der ICB"
* item[=].item[=].enableWhen.question = "20135"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding = #20138 "intrazerebrale Blutung (ICB)"
* item[=].item[=].answerOption[0].valueCoding = #0 "innerhalb von 24 Stunden nach Intervention"
* item[=].item[=].answerOption[+].valueCoding = #1 "später"
* item[=].item[+].type = #coding
* item[=].item[=].linkId = "20145"
* item[=].item[=].text = "ECASS-Klassifikation der ICB"
* item[=].item[=].enableWhen.question = "20135"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding = #20138 "intrazerebrale Blutung (ICB)"
* item[=].item[=].answerOption[0].valueCoding = #0 "Haemorrhagic infarction 1 (HI I): small petechiae along the margins of the infarct"
* item[=].item[=].answerOption[+].valueCoding = #1 "Haemorrhagic infarction 2 (HI II): confluent petechiae within the infarcted area but no space-occupying effect"
* item[=].item[=].answerOption[+].valueCoding = #2 "parenchymal haemorrhage 1 (PH I): blood clots in 30% or less of the infarcted area with some slight space-occupying effect"
* item[=].item[=].answerOption[+].valueCoding = #3 "Parenchymal haemorrhage 2 (PH II): blood clots in more than 30% of the infarcted area with substantial space-occupying effect"
* item[=].item[+].type = #coding
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].linkId = "20146"
* item[=].item[=].text = "Besteht klinische Verschlechterung (um NIHSS >=4 Punkte) die auf ICB zu beziehen ist?"
* item[=].item[=].enableWhen.question = "20135"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding = #20138 "intrazerebrale Blutung (ICB)"
* item[=].item[=].answerOption[0].valueCoding = #1 "ja"
* item[=].item[=].answerOption[+].valueCoding = #0 "nein"
* item[=].item[=].answerOption[+].valueCoding = #2 "unbekannt"
* item[=].item[+].type = #coding
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].linkId = "20144"
* item[=].item[=].text = "Patient an prozeduralen Kompliationen verstorben?"
* item[=].item[=].answerOption[0].valueCoding = #1 "ja"
* item[=].item[=].answerOption[+].valueCoding = #0 "nein"
* item[=].item[=].answerOption[+].valueCoding = #2 "unbekannt"
* item[=].type = #group
* item[=].linkId = "gruppe-komplikationen-endovaskuläre"
* item[=].text = "Prozedurale Komplikationen (endovaskuläres Protokoll)"
* item[=].enableWhen.question = "10090"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerBoolean = true
* item[+].item[0].type = #boolean
* item[=].item[=].linkId = "20222"
* item[=].item[=].text = "Postinterventionelle Bildgebung"
* item[=].item[+].type = #coding
* item[=].item[=].linkId = "20223"
* item[=].item[=].text = "Bildgebendes Verfahren"
* item[=].item[=].enableWhen.question = "20222"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].answerOption[0].valueCoding = #1 "CT"
* item[=].item[=].answerOption[+].valueCoding = #2 "MRI"
* item[=].item[+].type = #date
* item[=].item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].item[=].extension[=].valueDate = "2024-01-01"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/maxValue"
* item[=].item[=].extension[=].valueDate = "2026-01-01"
* item[=].item[=].linkId = "20220"
* item[=].item[=].text = "Datum postinterventionelle Bildgebung"
* item[=].item[=].enableWhen.question = "20222"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[+].type = #time
* item[=].item[=].linkId = "20221"
* item[=].item[=].text = "Uhrzeit postinterventionelle Bildgebung"
* item[=].item[=].enableWhen.question = "20222"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[+].item[0].type = #boolean
* item[=].item[=].item[=].linkId = "20190"
* item[=].item[=].item[=].text = "<1/3 ACM"
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "20191"
* item[=].item[=].item[=].text = "1/3 - 2/3 ACM"
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "20192"
* item[=].item[=].item[=].text = "> 2/3 ACM"
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "20193"
* item[=].item[=].item[=].text = "Infarkt A. c. anterior"
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "20194"
* item[=].item[=].item[=].text = "Infarkt A. c. posterior"
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "20195"
* item[=].item[=].item[=].text = "Infarkt PICA"
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "20196"
* item[=].item[=].item[=].text = "Infarkt SCA"
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "20197"
* item[=].item[=].item[=].text = "hint. Zirkulation: kein Infarkt im Hirnstamm"
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "20198"
* item[=].item[=].item[=].text = "hint. Zirkulation: minimale Infarkte im Hirnstamm (Rami ad pontem)"
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "20199"
* item[=].item[=].item[=].text = "hint. Zirkulation: ausgedehnte Infarkte im Hirnstamm"
* item[=].item[=].type = #group
* item[=].item[=].linkId = "gruppe-infarktgröße-endovaskulär"
* item[=].item[=].text = "Finale Infarktgröße in der Bildgebung nach der Intervention"
* item[=].item[=].enableWhen.question = "20222"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[+].type = #integer
* item[=].item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].item[=].extension[=].valueInteger = 0
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/maxValue"
* item[=].item[=].extension[=].valueInteger = 99
* item[=].item[=].linkId = "20185"
* item[=].item[=].text = "Gesamtsumme NIH-SS nach 24 Stunden"
* item[=].item[+].type = #coding
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].linkId = "20225"
* item[=].item[=].text = "mRS"
* item[=].item[=].answerOption[0].valueCoding = #0 "0"
* item[=].item[=].answerOption[+].valueCoding = #1 "1"
* item[=].item[=].answerOption[+].valueCoding = #2 "2"
* item[=].item[=].answerOption[+].valueCoding = #3 "3"
* item[=].item[=].answerOption[+].valueCoding = #4 "4"
* item[=].item[=].answerOption[+].valueCoding = #5 "5"
* item[=].item[=].answerOption[+].valueCoding = #6 "6"
* item[=].item[+].type = #date
* item[=].item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].item[=].extension[=].valueDate = "2015-01-01"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/maxValue"
* item[=].item[=].extension[=].valueDate = "2026-01-01"
* item[=].item[=].linkId = "20163"
* item[=].item[=].text = "Wenn mRS 6 (Tod bei Entlassung), dann Todesdatum:"
* item[=].item[=].enableWhen.question = "20225"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding = #6 "6"
* item[=].item[+].type = #coding
* item[=].item[=].linkId = "20164"
* item[=].item[=].text = "Wenn mRS 6 (Tod bei Entlassung), dann Todesursache:"
* item[=].item[=].enableWhen.question = "20225"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding = #6 "6"
* item[=].item[=].answerOption[0].valueCoding = #0 "interventionsassoziiert zerebrovaskulär"
* item[=].item[=].answerOption[+].valueCoding = #1 "interventionsassoziiert, nicht zerebrovaskulär"
* item[=].item[=].answerOption[+].valueCoding = #2 "zerebrovaskulär, nicht interventionsassoziiert"
* item[=].item[=].answerOption[+].valueCoding = #3 "andere Ursache"
* item[=].item[=].answerOption[+].valueCoding = #4 "unbekannt"
* item[=].item[+].type = #string
* item[=].item[=].maxLength = 64
* item[=].item[=].linkId = "20165"
* item[=].item[=].text = "Beschreibung Todesursache"
* item[=].item[=].enableWhen.question = "20164"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding = #3 "andere Ursache"
* item[=].type = #group
* item[=].linkId = "gruppe-bildgebung-endovaskulär"
* item[=].text = "Postinterventionelle Bildgebung (endovaskuläres Protokoll)"
* item[=].enableWhen.question = "10090"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerBoolean = true
* item[+].item[0].type = #date
* item[=].item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].item[=].extension[=].valueDate = "2015-01-01"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/maxValue"
* item[=].item[=].extension[=].valueDate = "2026-01-01"
* item[=].item[=].linkId = "11001"
* item[=].item[=].text = "Entlassungsdatum"
* item[=].item[+].type = #coding
* item[=].item[=].linkId = "11002"
* item[=].item[=].text = "ICD 10 Diagnose"
* item[=].item[=].answerOption[0].valueCoding = #1 "I60.- Subarachnodialblutung"
* item[=].item[=].answerOption[+].valueCoding = #2 "I61.- Intrazerebrale Blutung"
* item[=].item[=].answerOption[+].valueCoding = #4 "I63.- Hirninfarkt"
* item[=].item[=].answerOption[+].valueCoding = #11 "G45.-zerebrale transitorische ischämische Attacken oder verwandte Syndrome"
* item[=].item[+].item[0].type = #coding
* item[=].item[=].item[=].linkId = "11003"
* item[=].item[=].item[=].text = "Entlassungsart"
* item[=].item[=].item[=].answerOption[0].valueCoding = #1 "Nach Hause"
* item[=].item[=].item[=].answerOption[+].valueCoding = #2 "Neurolog. Akutbett"
* item[=].item[=].item[=].answerOption[+].valueCoding = #3 "Neurolog. Phase B"
* item[=].item[=].item[=].answerOption[+].valueCoding = #4 "Neurolog. Phase C im Haus"
* item[=].item[=].item[=].answerOption[+].valueCoding = #5 "Neurolog. Phase C außer Haus"
* item[=].item[=].item[=].answerOption[+].valueCoding = #6 "Tagesklinik im Haus"
* item[=].item[=].item[=].answerOption[+].valueCoding = #7 "Tagesklinik außer Haus"
* item[=].item[=].item[=].answerOption[+].valueCoding = #8 "Neurolog. Phase D außer Haus"
* item[=].item[=].item[=].answerOption[+].valueCoding = #9 "Geriatrische Abteilung im Haus"
* item[=].item[=].item[=].answerOption[+].valueCoding = #10 "Geriatrische Abteilung außer Haus"
* item[=].item[=].item[=].answerOption[+].valueCoding = #11 "Neurochirurg. Abteilung im Haus"
* item[=].item[=].item[=].answerOption[+].valueCoding = #12 "Neurochirurg. Abteilung außer Haus"
* item[=].item[=].item[=].answerOption[+].valueCoding = #14 "Andere Fachabteilung im Haus"
* item[=].item[=].item[=].answerOption[+].valueCoding = #15 "Andere Fachabteilung außer Haus"
* item[=].item[=].item[=].answerOption[+].valueCoding = #16 "Intensivstation"
* item[=].item[=].item[=].answerOption[+].valueCoding = #17 "Pflegeheim"
* item[=].item[=].item[=].answerOption[+].valueCoding = #18 "Altersheim"
* item[=].item[=].item[=].answerOption[+].valueCoding = #19 "Verstorben"
* item[=].item[=].item[=].answerOption[+].valueCoding = #20 "Palliatives Setting im Haus"
* item[=].item[=].item[+].type = #coding
* item[=].item[=].item[=].linkId = "11004"
* item[=].item[=].item[=].text = "Todesursache"
* item[=].item[=].item[=].enableWhen.question = "11003"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerCoding = #19 "Verstorben"
* item[=].item[=].item[=].answerOption[0].valueCoding = #1 "Hirnödem"
* item[=].item[=].item[=].answerOption[+].valueCoding = #2 "Reinisult"
* item[=].item[=].item[=].answerOption[+].valueCoding = #3 "Herzinfarkt"
* item[=].item[=].item[=].answerOption[+].valueCoding = #4 "andere kardiale Ursachen"
* item[=].item[=].item[=].answerOption[+].valueCoding = #5 "Lungenembolie"
* item[=].item[=].item[=].answerOption[+].valueCoding = #6 "Interkurrente andere Erkrankungen"
* item[=].item[=].item[=].answerOption[+].valueCoding = #7 "Konsumierende andere Erkrankungen"
* item[=].item[=].item[=].answerOption[+].valueCoding = #8 "andere"
* item[=].item[=].item[+].type = #string
* item[=].item[=].item[=].maxLength = 64
* item[=].item[=].item[=].linkId = "11005"
* item[=].item[=].item[=].text = "Welche andere Todesursache"
* item[=].item[=].item[=].enableWhen[0].question = "11004"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerCoding = #8 "andere"
* item[=].item[=].item[=].enableWhen[+].question = "11003"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerCoding = #19 "Verstorben"
* item[=].item[=].item[=].enableBehavior = #all
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "11006"
* item[=].item[=].item[=].text = "Todesursache autoptisch gesichert"
* item[=].item[=].item[=].enableWhen.question = "11003"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerCoding = #19 "Verstorben"
* item[=].item[=].item[+].type = #integer
* item[=].item[=].item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].item[=].item[=].extension[=].valueInteger = 0
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/maxValue"
* item[=].item[=].item[=].extension[=].valueInteger = 42
* item[=].item[=].item[=].linkId = "12020"
* item[=].item[=].item[=].text = "Gesamtsumme NIH - SS bei Entlassung"
* item[=].item[=].item[=].enableWhen[0].question = "11003"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerCoding = #1 "Nach Hause"
* item[=].item[=].item[=].enableWhen[+].question = "11003"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerCoding = #2 "Neurolog. Akutbett"
* item[=].item[=].item[=].enableWhen[+].question = "11003"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerCoding = #3 "Neurolog. Phase B"
* item[=].item[=].item[=].enableWhen[+].question = "11003"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerCoding = #4 "Neurolog. Phase C im Haus"
* item[=].item[=].item[=].enableWhen[+].question = "11003"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerCoding = #5 "Neurolog. Phase C außer Haus"
* item[=].item[=].item[=].enableWhen[+].question = "11003"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerCoding = #6 "Tagesklinik im Haus"
* item[=].item[=].item[=].enableWhen[+].question = "11003"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerCoding = #7 "Tagesklinik außer Haus"
* item[=].item[=].item[=].enableWhen[+].question = "11003"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerCoding = #8 "Neurolog. Phase D außer Haus"
* item[=].item[=].item[=].enableWhen[+].question = "11003"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerCoding = #9 "Geriatrische Abteilung im Haus"
* item[=].item[=].item[=].enableWhen[+].question = "11003"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerCoding = #10 "Geriatrische Abteilung außer Haus"
* item[=].item[=].item[=].enableWhen[+].question = "11003"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerCoding = #11 "Neurochirurg. Abteilung im Haus"
* item[=].item[=].item[=].enableWhen[+].question = "11003"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerCoding = #12 "Neurochirurg. Abteilung außer Haus"
* item[=].item[=].item[=].enableWhen[+].question = "11003"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerCoding = #14 "Andere Fachabteilung im Haus"
* item[=].item[=].item[=].enableWhen[+].question = "11003"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerCoding = #15 "Andere Fachabteilung außer Haus"
* item[=].item[=].item[=].enableWhen[+].question = "11003"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerCoding = #16 "Intensivstation"
* item[=].item[=].item[=].enableWhen[+].question = "11003"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerCoding = #17 "Pflegeheim"
* item[=].item[=].item[=].enableWhen[+].question = "11003"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerCoding = #18 "Altersheim"
* item[=].item[=].item[=].enableWhen[+].question = "11003"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerCoding = #20 "Palliatives Setting im Haus"
* item[=].item[=].item[=].enableBehavior = #any
* item[=].item[=].type = #group
* item[=].item[=].linkId = "gruppe-monitoring"
* item[=].item[=].text = "Monitoring"
* item[=].item[+].item.type = #integer
* item[=].item[=].item.extension[0].url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].item[=].item.extension[=].valueInteger = 0
* item[=].item[=].item.extension[+].url = "http://hl7.org/fhir/StructureDefinition/maxValue"
* item[=].item[=].item.extension[=].valueInteger = 6
* item[=].item[=].item.linkId = "14001"
* item[=].item[=].item.text = "Rankinskala bei der Entlassung"
* item[=].item[=].type = #group
* item[=].item[=].linkId = "gruppe-entlassung-rankinskala"
* item[=].item[=].text = "RANKINSKALA bei Entlassung"
* item[=].type = #group
* item[=].linkId = "gruppe-entlassung"
* item[=].text = "Entlassung"
* item[=].enableWhen.question = "2006"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerCoding = #1 "ja"
* item[=].enableBehavior = #any
* item[+].item[0].type = #coding
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].linkId = "27024"
* item[=].item[=].text = "TTE"
* item[=].item[=].answerOption[0].valueCoding = #1 "ja"
* item[=].item[=].answerOption[+].valueCoding = #0 "nein"
* item[=].item[=].answerOption[+].valueCoding = #2 "vorgesehen"
* item[=].item[+].type = #coding
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].linkId = "27025"
* item[=].item[=].text = "TEE"
* item[=].item[=].answerOption[0].valueCoding = #1 "ja"
* item[=].item[=].answerOption[+].valueCoding = #0 "nein"
* item[=].item[=].answerOption[+].valueCoding = #2 "vorgesehen"
* item[=].type = #group
* item[=].linkId = "group-ergänzende-diagnostik"
* item[=].text = "Ergänzende Diagnostik"
* item[=].enableWhen.question = "2006"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerCoding = #1 "ja"
* item[+].item[0].type = #boolean
* item[=].item[=].linkId = "15015"
* item[=].item[=].text = "Komplikationen"
* item[=].item[+].type = #coding
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#check-box "Check-box"
* item[=].item[=].linkId = "999359609780"
* item[=].item[=].text = "Welche"
* item[=].item[=].enableWhen.question = "15015"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].repeats = true
* item[=].item[=].answerOption[0].valueCoding = #15001 "Reinsult (neues Ereignis anderes Territorium)"
* item[=].item[=].answerOption[+].valueCoding = #15014 "Progressive Stroke"
* item[=].item[=].answerOption[+].valueCoding = #15002 "Klin. Relevante Einblutung"
* item[=].item[=].answerOption[+].valueCoding = #15003 "Hirnödem"
* item[=].item[=].answerOption[+].valueCoding = #15004 "Epil. Anfall"
* item[=].item[=].answerOption[+].valueCoding = #15005 "Hydrocephalus"
* item[=].item[=].answerOption[+].valueCoding = #15006 "Kardiale Arrythmien"
* item[=].item[=].answerOption[+].valueCoding = #15007 "Herz-Kreislaufdekompensation"
* item[=].item[=].answerOption[+].valueCoding = #15008 "Pulmonalembolie"
* item[=].item[=].answerOption[+].valueCoding = #15009 "Sepsis"
* item[=].item[=].answerOption[+].valueCoding = #15010 "Harnwegsinfekt"
* item[=].item[=].answerOption[+].valueCoding = #15011 "Pneumonie"
* item[=].item[=].answerOption[+].valueCoding = #15012 "Extrazerebrale Blutung"
* item[=].item[=].answerOption[+].valueCoding = #15013 "Tiefe Beinvenenthrombose"
* item[=].item[=].answerOption[+].valueCoding = #15016 "Herzinfarkt"
* item[=].item[=].answerOption[+].valueCoding = #15018 "Delir"
* item[=].item[=].answerOption[+].valueCoding = #15019 "Progression bei primärem ICH"
* item[=].item[+].type = #date
* item[=].item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].item[=].extension[=].valueDate = "2015-01-01"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/maxValue"
* item[=].item[=].extension[=].valueDate = "2026-01-01"
* item[=].item[=].linkId = "150181"
* item[=].item[=].text = "Datum Diagnose Delir"
* item[=].item[=].enableWhen.question = "999359609780"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding = #15018 "Delir"
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "150182"
* item[=].item[=].text = "Selbst-/Fremdgefährdung"
* item[=].item[=].enableWhen.question = "999359609780"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding = #15018 "Delir"
* item[=].item[+].type = #date
* item[=].item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].item[=].extension[=].valueDate = "2015-01-01"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/maxValue"
* item[=].item[=].extension[=].valueDate = "2026-01-01"
* item[=].item[=].linkId = "15017"
* item[=].item[=].text = "Datum Einblutung"
* item[=].item[=].enableWhen.question = "999359609780"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding = #15002 "Klin. Relevante Einblutung"
* item[=].type = #group
* item[=].linkId = "group-komplikationen"
* item[=].text = "Komplikationen"
* item[=].enableWhen.question = "2006"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerCoding = #1 "ja"
* item[+].item[0].type = #boolean
* item[=].item[=].linkId = "16008"
* item[=].item[=].text = "Ischämie"
* item[=].item[+].type = #coding
* item[=].item[=].linkId = "16004"
* item[=].item[=].text = "Art der Ischämie"
* item[=].item[=].enableWhen.question = "16008"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].answerOption[0].valueCoding = #1 "TIA"
* item[=].item[=].answerOption[+].valueCoding = #3 "Hirninfarkt"
* item[=].item[+].type = #integer
* item[=].item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].item[=].extension[=].valueInteger = 0
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/maxValue"
* item[=].item[=].extension[=].valueInteger = 7
* item[=].item[=].linkId = "16035"
* item[=].item[=].text = "ABCD2 Score"
* item[=].item[=].enableWhen.question = "16004"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding = #1 "TIA"
* item[=].item[=].required = false
* item[=].item[+].item[0].type = #boolean
* item[=].item[=].item[=].linkId = "16009"
* item[=].item[=].item[=].text = "Mikroangiopathie"
* item[=].item[=].item[+].type = #coding
* item[=].item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item[=].extension.valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].item[=].linkId = "16010"
* item[=].item[=].item[=].text = "Thromboembolie aus kardialer Quelle (kardiogen-embolisch)"
* item[=].item[=].item[=].answerOption[0].valueCoding = #0 "nein"
* item[=].item[=].item[=].answerOption[+].valueCoding = #2 "wahrscheinlich"
* item[=].item[=].item[+].type = #coding
* item[=].item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item[=].extension.valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].item[=].linkId = "16011"
* item[=].item[=].item[=].text = "Makroangiopathie"
* item[=].item[=].item[=].answerOption[0].valueCoding = #0 "nein"
* item[=].item[=].item[=].answerOption[+].valueCoding = #2 "wahrscheinlich"
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "16012"
* item[=].item[=].item[=].text = "Hämodynamisch"
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "16013"
* item[=].item[=].item[=].text = "Koagulopathie"
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "16014"
* item[=].item[=].item[=].text = "Arterielle Dissektion"
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "16019"
* item[=].item[=].item[=].text = "ESUS"
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "16018"
* item[=].item[=].item[=].text = "Ätiopathogenese derzeit unbekannt"
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "16040"
* item[=].item[=].item[=].text = "Andere Ursache"
* item[=].item[=].item[+].type = #string
* item[=].item[=].item[=].maxLength = 64
* item[=].item[=].item[=].linkId = "16041"
* item[=].item[=].item[=].text = "Welche"
* item[=].item[=].item[=].enableWhen.question = "16040"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "16005"
* item[=].item[=].item[=].text = "Intrazerebrale Blutung"
* item[=].item[=].type = #group
* item[=].item[=].linkId = "gruppe-ursache-ischämie"
* item[=].item[=].text = "Ursache der Ischämie"
* item[=].item[=].enableWhen.question = "16008"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[+].item[0].type = #boolean
* item[=].item[=].item[=].linkId = "16020"
* item[=].item[=].item[=].text = "Hypertonie"
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "16021"
* item[=].item[=].item[=].text = "Gefäßmalformation"
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "16022"
* item[=].item[=].item[=].text = "Amyloidangiopathie"
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "16023"
* item[=].item[=].item[=].text = "Medikamentöse Ursache"
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].linkId = "16050"
* item[=].item[=].item[=].text = "Andere Ursache"
* item[=].item[=].item[+].type = #string
* item[=].item[=].item[=].maxLength = 64
* item[=].item[=].item[=].linkId = "16051"
* item[=].item[=].item[=].text = "Welche"
* item[=].item[=].item[=].enableWhen.question = "16050"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].type = #group
* item[=].item[=].linkId = "gruppe-ursache-intrazerebralen-blutung"
* item[=].item[=].text = "Ursache der intrazerebralen Blutung"
* item[=].item[=].enableWhen.question = "16005"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "16006"
* item[=].item[=].text = "Subarachnoidalblutung"
* item[=].item[+].type = #coding
* item[=].item[=].linkId = "16030"
* item[=].item[=].text = "Falls Subarachnoidalblutung \"Ja\""
* item[=].item[=].enableWhen.question = "16006"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].answerOption[0].valueCoding = #1 "aneurysmatisch"
* item[=].item[=].answerOption[+].valueCoding = #2 "perimesencephal"
* item[=].item[=].answerOption[+].valueCoding = #3 "konvexal"
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "16007"
* item[=].item[=].text = "Hirnvenenthrombose"
* item[=].type = #group
* item[=].linkId = "group-klassifikation"
* item[=].text = "Klassifikation"
* item[=].enableWhen.question = "2006"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerCoding = #1 "ja"
* item[+].item[0].type = #boolean
* item[=].item[=].linkId = "21000"
* item[=].item[=].text = "Follow up"
* item[=].item[+].type = #date
* item[=].item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].item[=].extension[=].valueDate = "2015-01-01"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/maxValue"
* item[=].item[=].extension[=].valueDate = "2026-01-01"
* item[=].item[=].linkId = "21004"
* item[=].item[=].text = "Follow-up Datum"
* item[=].item[=].enableWhen.question = "21000"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[+].type = #coding
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].linkId = "21005"
* item[=].item[=].text = "Follow-up Typ"
* item[=].item[=].enableWhen.question = "21000"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].answerOption[0].valueCoding = #1 "telefonisch"
* item[=].item[=].answerOption[+].valueCoding = #2 "persönlich"
* item[=].item[+].type = #coding
* item[=].item[=].linkId = "21006"
* item[=].item[=].text = "Follow-up mit"
* item[=].item[=].enableWhen.question = "21000"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].answerOption[0].valueCoding = #1 "Patienten"
* item[=].item[=].answerOption[+].valueCoding = #2 "Patienten und Angehörigen / Pflegepersonal"
* item[=].item[=].answerOption[+].valueCoding = #3 "Angehörigen oder Pflegepersonal"
* item[=].item[=].answerOption[+].valueCoding = #4 "Hausarzt / Facharzt"
* item[=].item[=].answerOption[+].valueCoding = #5 "Krankenakte"
* item[=].item[+].type = #coding
* item[=].item[=].linkId = "21010"
* item[=].item[=].text = "Patientenstatus"
* item[=].item[=].enableWhen.question = "21000"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].answerOption[0].valueCoding = #1 "Lebend, kooperativ"
* item[=].item[=].answerOption[+].valueCoding = #3 "Verstorben"
* item[=].item[=].answerOption[+].valueCoding = #4 "Lebend, keine weiteren Daten erhältlich"
* item[=].item[+].item[0].type = #boolean
* item[=].item[=].item[=].linkId = "21022"
* item[=].item[=].item[=].text = "Sterbedatum bekannt"
* item[=].item[=].item[+].type = #date
* item[=].item[=].item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].item[=].item[=].extension[=].valueDate = "2015-01-01"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/maxValue"
* item[=].item[=].item[=].extension[=].valueDate = "2026-01-01"
* item[=].item[=].item[=].linkId = "21020"
* item[=].item[=].item[=].text = "Sterbedatum"
* item[=].item[=].item[=].enableWhen.question = "21022"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[+].type = #coding
* item[=].item[=].item[=].linkId = "21030"
* item[=].item[=].item[=].text = "Todesursache"
* item[=].item[=].item[=].answerOption[0].valueCoding = #1 "Hirnödem"
* item[=].item[=].item[=].answerOption[+].valueCoding = #2 "Rezidivschlaganfall"
* item[=].item[=].item[=].answerOption[+].valueCoding = #3 "Herzinfarkt"
* item[=].item[=].item[=].answerOption[+].valueCoding = #4 "Andere kardiale Ursachen"
* item[=].item[=].item[=].answerOption[+].valueCoding = #5 "Lungenembolie"
* item[=].item[=].item[=].answerOption[+].valueCoding = #6 "Interkurrente andere Erkrankungen"
* item[=].item[=].item[=].answerOption[+].valueCoding = #7 "Konsumierende andere Erkrankungen"
* item[=].item[=].item[=].answerOption[+].valueCoding = #8 "Andere"
* item[=].item[=].item[+].type = #string
* item[=].item[=].item[=].maxLength = 64
* item[=].item[=].item[=].linkId = "21031"
* item[=].item[=].item[=].text = "Welche andere Todesursache"
* item[=].item[=].item[=].enableWhen.question = "21030"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerCoding = #8 "Andere"
* item[=].item[=].type = #group
* item[=].item[=].linkId = "group-falls-verstorben"
* item[=].item[=].text = "Falls verstorben"
* item[=].item[=].enableWhen.question = "21010"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding = #3 "Verstorben"
* item[=].type = #group
* item[=].linkId = "group-followup"
* item[=].text = "Follow Up nach 3 Monaten"
* item[=].enableWhen[0].question = "2006"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding = #1 "ja"
* item[=].enableWhen[+].question = "11003"
* item[=].enableWhen[=].operator = #!=
* item[=].enableWhen[=].answerCoding = #19 "Verstorben"
* item[=].enableBehavior = #all
* item[+].item[0].type = #coding
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].linkId = "23005"
* item[=].item[=].text = "Rehabilitation"
* item[=].item[=].enableBehavior = #any
* item[=].item[=].answerOption[0].valueCoding = #1 "Rehabilitation"
* item[=].item[=].answerOption[+].valueCoding = #2 "Keine Rehabilitation"
* item[=].item[=].answerOption[+].valueCoding = #3 "Keine Information"
* item[=].item[+].type = #coding
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].linkId = "2300X"
* item[=].item[=].text = "Art der Rehabilitation"
* item[=].item[=].enableWhen.question = "23005"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding = #1 "Rehabilitation"
* item[=].item[=].answerOption[0].valueCoding = #23006 "Stationäre Rehabilitation"
* item[=].item[=].answerOption[+].valueCoding = #23007 "Ambulante Rehabilitation"
* item[=].item[=].answerOption[+].valueCoding = #23008 "Rehabilitation zu Hause"
* item[=].item[+].type = #coding
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].linkId = "23010"
* item[=].item[=].text = "Wohnsituation"
* item[=].item[=].answerOption[0].valueCoding = #1 "Zuhause alleine"
* item[=].item[=].answerOption[+].valueCoding = #2 "Zuhause mit Verwandten / Bekannten"
* item[=].item[=].answerOption[+].valueCoding = #3 "Pensionistenheim"
* item[=].item[=].answerOption[+].valueCoding = #4 "Pflegeheim"
* item[=].item[=].answerOption[+].valueCoding = #5 "Krankenhaus"
* item[=].type = #group
* item[=].linkId = "group-soziale-situation"
* item[=].text = "Soziale Situation"
* item[=].enableWhen[0].question = "21010"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding = #1 "Lebend, kooperativ"
* item[=].enableWhen[+].question = "21000"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerBoolean = true
* item[=].enableWhen[+].question = "2006"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding = #1 "ja"
* item[=].enableBehavior = #all
* item[+].item.type = #integer
* item[=].item.extension[0].url = "http://hl7.org/fhir/StructureDefinition/maxValue"
* item[=].item.extension[=].valueInteger = 100
* item[=].item.extension[+].url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].item.extension[=].valueInteger = 0
* item[=].item.linkId = "24011"
* item[=].item.text = "Gesamtsumme Barthel-Index bei Follow Up"
* item[=].item.enableWhen.question = "21010"
* item[=].item.enableWhen.operator = #=
* item[=].item.enableWhen.answerCoding = #1 "Lebend, kooperativ"
* item[=].item.required = false
* item[=].type = #group
* item[=].linkId = "gruppe-barthel"
* item[=].text = "BARTHEL-Index Follow Up"
* item[=].enableWhen[0].question = "21010"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding = #1 "Lebend, kooperativ"
* item[=].enableWhen[+].question = "2006"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding = #1 "ja"
* item[=].enableBehavior = #all
* item[+].item.type = #coding
* item[=].item.linkId = "25001"
* item[=].item.text = "Rankinskala Follow Up"
* item[=].item.answerOption[0].valueCoding = #0 "Keine Einschränkung"
* item[=].item.answerOption[+].valueCoding = #1 "Trotz vorhandener Symptome keine nennenswerte Beeinträchtigung bei der Durchführung täglicher Verrichtungen"
* item[=].item.answerOption[+].valueCoding = #2 "Leichte Beeinträchtigung: nicht mehr möglich alle Aktivitäten wie vorher durchzuführen, kann sich jedoch ohne fremde Hilfe um die eigenen Angelegenheiten kümmern"
* item[=].item.answerOption[+].valueCoding = #3 "Geringe Beeinträchtigung: angewiesen auf etwas Hilfe, kann ohne Unterstützung gehen"
* item[=].item.answerOption[+].valueCoding = #4 "Deutliche Beeinträchtigung: kann nicht ohne Hilfe gehen und ist auf Hilfe anderer Personen bei Körperpflege angewiesen"
* item[=].item.answerOption[+].valueCoding = #5 "Schwere Beeinträchtigung: bettlägerig, inkontinent, auf permanente Pflege angewiesen"
* item[=].item.answerOption[+].valueCoding = #6 "Tod"
* item[=].type = #group
* item[=].linkId = "gruppe-rankin-skala"
* item[=].text = "RANKINSKALA bei Follow Up"
* item[=].enableWhen[0].question = "2006"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding = #1 "ja"
* item[=].enableWhen[+].question = "21010"
* item[=].enableWhen[=].operator = #!=
* item[=].enableWhen[=].answerCoding = #4 "Lebend, keine weiteren Daten erhältlich"
* item[=].enableWhen[+].question = "21000"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerBoolean = true
* item[=].enableBehavior = #all
* item[+].item[0].type = #coding
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].linkId = "26019"
* item[=].item[=].text = "Plättchenhemmer"
* item[=].item[=].answerOption[0].valueCoding = #1 "Mono"
* item[=].item[=].answerOption[+].valueCoding = #2 "Dual"
* item[=].item[=].answerOption[+].valueCoding = #0 "Nein"
* item[=].item[+].type = #coding
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].linkId = "26020"
* item[=].item[=].text = "Vitamin K Antagonist"
* item[=].item[=].answerOption[0].valueCoding = #1 "ja"
* item[=].item[=].answerOption[+].valueCoding = #0 "nein"
* item[=].item[=].answerOption[+].valueCoding = #2 "unbekannt"
* item[=].item[+].type = #coding
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].linkId = "26021"
* item[=].item[=].text = "Apixaban"
* item[=].item[=].answerOption[0].valueCoding = #1 "ja"
* item[=].item[=].answerOption[+].valueCoding = #0 "nein"
* item[=].item[=].answerOption[+].valueCoding = #2 "unbekannt"
* item[=].item[+].type = #coding
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].linkId = "26022"
* item[=].item[=].text = "Dabigatran"
* item[=].item[=].answerOption[0].valueCoding = #1 "ja"
* item[=].item[=].answerOption[+].valueCoding = #0 "nein"
* item[=].item[=].answerOption[+].valueCoding = #2 "unbekannt"
* item[=].item[+].type = #coding
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].linkId = "26023"
* item[=].item[=].text = "Edoxaban"
* item[=].item[=].answerOption[0].valueCoding = #1 "ja"
* item[=].item[=].answerOption[+].valueCoding = #0 "nein"
* item[=].item[=].answerOption[+].valueCoding = #2 "unbekannt"
* item[=].item[+].type = #coding
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].linkId = "26024"
* item[=].item[=].text = "Rivaroxaban"
* item[=].item[=].answerOption[0].valueCoding = #1 "ja"
* item[=].item[=].answerOption[+].valueCoding = #0 "nein"
* item[=].item[=].answerOption[+].valueCoding = #2 "unbekannt"
* item[=].item[+].type = #boolean
* item[=].item[=].linkId = "26005"
* item[=].item[=].text = "Andere"
* item[=].item[+].type = #string
* item[=].item[=].maxLength = 64
* item[=].item[=].linkId = "26025"
* item[=].item[=].text = "Welche andere Antithrombotica"
* item[=].item[=].enableWhen.question = "26005"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[+].type = #coding
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].linkId = "26032"
* item[=].item[=].text = "Regelmäßig Lipidsenker"
* item[=].item[=].answerOption[0].valueCoding = #1 "ja"
* item[=].item[=].answerOption[+].valueCoding = #0 "nein"
* item[=].item[=].answerOption[+].valueCoding = #2 "unbekannt"
* item[=].item[+].type = #coding
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].linkId = "26033"
* item[=].item[=].text = "Regelmäßig Blutdruckkontrollen"
* item[=].item[=].answerOption[0].valueCoding = #1 "ja"
* item[=].item[=].answerOption[+].valueCoding = #0 "nein"
* item[=].item[=].answerOption[+].valueCoding = #2 "unbekannt"
* item[=].item[+].type = #coding
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].linkId = "26034"
* item[=].item[=].text = "Regelmäßig Antihypertensiva"
* item[=].item[=].answerOption[0].valueCoding = #1 "ja"
* item[=].item[=].answerOption[+].valueCoding = #0 "nein"
* item[=].item[=].answerOption[+].valueCoding = #2 "unbekannt"
* item[=].item[+].type = #coding
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].linkId = "26035"
* item[=].item[=].text = "Regelmäßig Antidiabetica"
* item[=].item[=].answerOption[0].valueCoding = #1 "ja"
* item[=].item[=].answerOption[+].valueCoding = #0 "nein"
* item[=].item[=].answerOption[+].valueCoding = #2 "unbekannt"
* item[=].item[+].type = #coding
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].linkId = "26036"
* item[=].item[=].text = "Regelmäßig Antidepressiva"
* item[=].item[=].answerOption[0].valueCoding = #1 "ja"
* item[=].item[=].answerOption[+].valueCoding = #0 "nein"
* item[=].item[=].answerOption[+].valueCoding = #2 "unbekannt"
* item[=].item[+].type = #coding
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].linkId = "26030"
* item[=].item[=].text = "PFO Verschluss"
* item[=].item[=].answerOption[0].valueCoding = #1 "ja"
* item[=].item[=].answerOption[+].valueCoding = #0 "nein"
* item[=].item[=].answerOption[+].valueCoding = #2 "unbekannt"
* item[=].item[+].type = #coding
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].linkId = "26031"
* item[=].item[=].text = "Herzohrverschluss"
* item[=].item[=].answerOption[0].valueCoding = #1 "ja"
* item[=].item[=].answerOption[+].valueCoding = #0 "nein"
* item[=].item[=].answerOption[+].valueCoding = #2 "unbekannt"
* item[=].item[+].type = #coding
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].linkId = "26037"
* item[=].item[=].text = "Vor dem Schlaganfall Raucher"
* item[=].item[=].answerOption[0].valueCoding = #1 "ja"
* item[=].item[=].answerOption[+].valueCoding = #0 "nein"
* item[=].item[=].answerOption[+].valueCoding = #2 "unbekannt"
* item[=].item[+].type = #coding
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].linkId = "26038"
* item[=].item[=].text = "Seither abstinent (Rauchen)"
* item[=].item[=].answerOption[0].valueCoding = #1 "ja"
* item[=].item[=].answerOption[+].valueCoding = #0 "nein"
* item[=].item[=].answerOption[+].valueCoding = #2 "unbekannt"
* item[=].type = #group
* item[=].linkId = "gruppe-sekundärprophylaxe"
* item[=].text = "Sekundärprophylaxe"
* item[=].enableWhen[0].question = "21000"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerBoolean = true
* item[=].enableWhen[+].question = "21010"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding = #1 "Lebend, kooperativ"
* item[=].enableBehavior = #all
* item[+].item[0].type = #coding
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].linkId = "26040"
* item[=].item[=].text = "Ischämischer Reinsult"
* item[=].item[=].answerOption[0].valueCoding = #1 "ja"
* item[=].item[=].answerOption[+].valueCoding = #0 "nein"
* item[=].item[=].answerOption[+].valueCoding = #2 "unbekannt"
* item[=].item[+].type = #coding
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].linkId = "26041"
* item[=].item[=].text = "Myokardinfarkt"
* item[=].item[=].answerOption[0].valueCoding = #1 "ja"
* item[=].item[=].answerOption[+].valueCoding = #0 "nein"
* item[=].item[=].answerOption[+].valueCoding = #2 "unbekannt"
* item[=].item[+].type = #coding
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].linkId = "26042"
* item[=].item[=].text = "TIA"
* item[=].item[=].answerOption[0].valueCoding = #1 "ja"
* item[=].item[=].answerOption[+].valueCoding = #0 "nein"
* item[=].item[=].answerOption[+].valueCoding = #2 "unbekannt"
* item[=].item[+].type = #coding
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].linkId = "26043"
* item[=].item[=].text = "ICH"
* item[=].item[=].answerOption[0].valueCoding = #1 "ja"
* item[=].item[=].answerOption[+].valueCoding = #0 "nein"
* item[=].item[=].answerOption[+].valueCoding = #2 "unbekannt"
* item[=].type = #group
* item[=].linkId = "gruppe-rezidivereignisse"
* item[=].text = "Rezidivereignisse (nach Entlassung von der SU)"
* item[=].enableWhen[0].question = "21000"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerBoolean = true
* item[=].enableWhen[+].question = "21010"
* item[=].enableWhen[=].operator = #=
* item[=].enableWhen[=].answerCoding = #1 "Lebend, kooperativ"
* item[=].enableBehavior = #all