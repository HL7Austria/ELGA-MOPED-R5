Instance: strokeunit-questionnaire
InstanceOf: Questionnaire
Usage: #example
* url = "http://example.org/Questionnaire/strokeunit-questionnaire"
* title = "Stroke Unit Registermeldung – Patientendaten"
* description = "Fragen zur Registermeldung Stroke Unit – Abschnitt Patientendaten"
* status = #active
* name = "StrokeUnitQuestionnaire"

* item[+]
  * linkId = "gruppe-patientendaten"
  * text = "Patientendaten"
  * type = #group
  * item[+]
    * linkId = "2001"
    * text = "Zentrum"
    * type = #integer
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/minValue"
      * valueInteger = 111
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/maxValue"
      * valueInteger = 999

  * item[+]
    * linkId = "2003"
    * text = "Aufnahmezahl"
    * type = #string
    * maxLength = 20

  * item[+]
    * linkId = "gruppe-demographie"
    * text = "Demographische Basisdaten"
    * type = #group

    * item[+]
      * linkId = "2040"
      * text = "Vorname (für bPK nötig)"
      * type = #string
      * maxLength = 64

    * item[+]
      * linkId = "2041"
      * text = "Nachname (für bPK nötig)"
      * type = #string
      * maxLength = 64

    * item[+]
      * linkId = "2004"
      * text = "Geburtsdatum"
      * type = #date
      * extension[+]
        * url = "http://hl7.org/fhir/StructureDefinition/minValue"
        * valueDate = "1900-01-01"
      * extension[+]
        * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-maxValueExpression"
        * valueExpression
          * language = #text/fhirpath
          * expression = "today()"

    * item[+]
      * linkId = "2032"
      * text = "Wohnort"
      * type = #question
      * extension[+]
        * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
        * valueCodeableConcept.coding[+]
          * system = "http://hl7.org/fhir/questionnaire-item-control"
          * code = #radio-button
          * display = "Radio Button"
      * answerOption[0].valueCoding = #1 "im Inland"
      * answerOption[1].valueCoding = #2 "im Ausland"

    * item[+]
      * linkId = "2030"
      * text = "Wohnpostleitzahl (wenn Wohnort Österreich)"
      * type = #integer
      * extension[+]
        * url = "http://hl7.org/fhir/StructureDefinition/minValue"
        * valueInteger = 1000
      * extension[+]
        * url = "http://hl7.org/fhir/StructureDefinition/maxValue"
        * valueInteger = 9999
      * enableWhen[+]
        * question = "2032"
        * operator = #=
        * answerCoding = #1

    * item[+]
      * linkId = "2050"
      * text = "Studienteilnahme"
      * type = #integer
      * required = false
      * extension[+]
        * url = "http://hl7.org/fhir/StructureDefinition/minValue"
        * valueInteger = 0
      * extension[+]
        * url = "http://hl7.org/fhir/StructureDefinition/maxValue"
        * valueInteger = 999

  * item[+]
    * linkId = "gruppe-geschlecht"
    * text = "Geschlecht"
    * type = #group

    * item[+]
      * linkId = "2005"
      * text = "Geschlecht"
      * type = #question
      * extension[+]
        * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
        * valueCodeableConcept.coding[+]
          * system = "http://hl7.org/fhir/questionnaire-item-control"
          * code = #radio-button
          * display = "Radio Button"
      * answerOption[0].valueCoding = #1 "Männlich"
      * answerOption[1].valueCoding = #2 "Weiblich"
      * answerOption[2].valueCoding = #3 "Divers"

// === Untergruppe: Akuter Schlaganfall ===
  * item[+]
    * linkId = "gruppe-akuter-schlaganfall"
    * text = "Akuter Schlaganfall"
    * type = #group

    * item[+]
      * linkId = "2006"
      * text = "Akuter Schlaganfall"
      * type = #question
      * answerOption[0].valueCoding = #1 "ja"
      * answerOption[1].valueCoding = #0 "nein"
      * answerOption[2].valueCoding = #2 "Monitoring an der SU bei Hochrisikopatient:innen"

    * item[+]
      * linkId = "2007"
      * text = "Falls kein akuter Schlaganfall"
      * type = #question
      * answerOption[0].valueCoding = #1 "Nicht-vaskuläre Erkrankung, kein klinisches Bild eines Schlaganfalls (TIA)"
      * answerOption[1].valueCoding = #2 "Monitoring nach vaskulärer Intervention"
      * answerOption[2].valueCoding = #3 "Nicht-vaskuläre Erkrankung als Ursache für Schlaganfallbild (TIA)"
      * enableWhen[+]
        * question = "2006"
        * operator = #!=
        * answerCoding = #1
* item[+]
  * linkId = "gruppe-aufnahme-und-diagnostik"
  * text = "Aufnahme und Diagnostik"
  * type = #group
  * enableWhen[+]
    * question = "2006"
    * operator = #=
    * answerCoding = #1

  * item[+]
    * linkId = "3052"
    * text = "Datum Ereignis bekannt"
    * type = #boolean

  * item[+]
    * linkId = "3001"
    * text = "Datum Ereignis"
    * type = #date
    * enableWhen[+]
      * question = "3052"
      * operator = #=
      * answerBoolean = true
    * extension[0]
      * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-minValueExpression"
      * valueExpression
        * language = #text/fhirpath
        * expression = "today() - 1 years"
    * extension[+]
      * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-maxValueExpression"
      * valueExpression
        * language = #text/fhirpath
        * expression = "today()"

  * item[+]
    * linkId = "3040"
    * text = "Datum 'last seen well' bekannt"
    * type = #boolean

  * item[+]
    * linkId = "3041"
    * text = "Datum 'last seen well'"
    * type = #date
    * enableWhen[+]
      * question = "3040"
      * operator = #=
      * answerBoolean = true
    * extension[0]
      * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-minValueExpression"
      * valueExpression
        * language = #text/fhirpath
        * expression = "today() - 1 years"
    * extension[+]
      * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-maxValueExpression"
      * valueExpression
        * language = #text/fhirpath
        * expression = "today()"

  * item[+]
    * linkId = "3053"
    * text = "Uhrzeit Ereignis bekannt"
    * type = #question
    * answerOption[0].valueCoding = #1 "ja"
    * answerOption[1].valueCoding = #2 "nein, im Schlaf"
    * answerOption[2].valueCoding = #3 "nein, nicht erhebbar"

  * item[+]
    * linkId = "3003"
    * text = "Uhrzeit Ereignis"
    * type = #time
    * extension[+].url = "http://hl7.org/fhir/StructureDefinition/minLength"
    * extension[=].valueInteger = 5
    * extension[+].url = "http://hl7.org/fhir/StructureDefinition/maxLength"
    * extension[=].valueInteger = 5
    * enableWhen[+]
      * question = "3053"
      * operator = #=
      * answerCoding = #1

  * item[+]
    * linkId = "3050"
    * text = "Uhrzeit 'last seen well' bekannt"
    * type = #boolean
    * enableBehavior = #any
    * enableWhen[+]
      * question = "3053"
      * operator = #=
      * answerCoding = #2
    * enableWhen[+]
      * question = "3053"
      * operator = #=
      * answerCoding = #3
    

  * item[+]
    * linkId = "3051"
    * text = "Uhrzeit 'last seen well'"
    * type = #time
    * extension[+].url = "http://hl7.org/fhir/StructureDefinition/minLength"
    * extension[=].valueInteger = 5
    * extension[+].url = "http://hl7.org/fhir/StructureDefinition/maxLength"
    * extension[=].valueInteger = 5
    * enableWhen[+]
      * question = "3050"
      * operator = #=
      * answerBoolean = true

  * item[+]
    * linkId = "gruppe-ereignis-aufgetreten"
    * text = "Ereignis aufgetreten"
    * type = #group

    * item[+]
      * linkId = "3005"
      * text = "Ereignis aufgetreten"
      * type = #question
      * answerOption[0].valueCoding = #1 "Im Wachzustand"
      * answerOption[1].valueCoding = #2 "Im Schlafzustand"
      * answerOption[2].valueCoding = #3 "Unbekannt"

    * item[+]
      * linkId = "3006"
      * text = "Datum Krankenhausaufnahme"
      * type = #date
      * extension[0]
        * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-minValueExpression"
        * valueExpression
          * language = #text/fhirpath
          * expression = "today() - 10 years"
      * extension[+]
        * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-maxValueExpression"
        * valueExpression
          * language = #text/fhirpath
          * expression = "today()"

    * item[+]
      * linkId = "3007"
      * text = "Uhrzeit Krankenhausaufnahme"
      * type = #time
      * extension[+].url = "http://hl7.org/fhir/StructureDefinition/minLength"
      * extension[=].valueInteger = 5
      * extension[+].url = "http://hl7.org/fhir/StructureDefinition/maxLength"
      * extension[=].valueInteger = 5

    * item[+]
      * linkId = "3008"
      * text = "Datum Aufnahme Stroke Unit"
      * type = #date
      * extension[0]
        * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-minValueExpression"
        * valueExpression
          * language = #text/fhirpath
          * expression = "today() - 10 years"
      * extension[+]
        * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-maxValueExpression"
        * valueExpression
          * language = #text/fhirpath
          * expression = "today()"

    * item[+]
      * linkId = "3009"
      * text = "Uhrzeit Aufnahme Stroke Unit"
      * type = #time
      * extension[+].url = "http://hl7.org/fhir/StructureDefinition/minLength"
      * extension[=].valueInteger = 5
      * extension[+].url = "http://hl7.org/fhir/StructureDefinition/maxLength"
      * extension[=].valueInteger = 5

    * item[+]
      * linkId = "3012"
      * text = "Prehospital-SCORE erhoben"
      * type = #boolean

    * item[+]
      * linkId = "3013"
      * text = "Prehospital-SCORE Wert"
      * type = #integer
      * extension[+]
        * url = "http://hl7.org/fhir/StructureDefinition/minValue"
        * valueInteger = 0
      * extension[+]
        * url = "http://hl7.org/fhir/StructureDefinition/maxValue"
        * valueInteger = 40
      * enableWhen[+]
        * question = "3012"
        * operator = #=
        * answerBoolean = true

    * item[+]
      * linkId = "30541"
      * text = "Zutransport"
      * type = #question
      * answerOption[0].valueCoding = #1 "Zutransport intern"
      * answerOption[1].valueCoding = #2 "Zutransport extern"

  * item[+]
    * linkId = "gruppe-zutransport-extern"
    * text = "Zutransport extern"
    * type = #group
    * enableWhen[+]
      * question = "30541"
      * operator = #=
      * answerCoding = #2

    * item[+]
      * linkId = "3010"
      * text = "Zutransport extern"
      * type = #question
      * extension[+]
        * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
        * valueCodeableConcept.coding[+]
          * system = "http://hl7.org/fhir/questionnaire-item-control"
          * code = #radio-button
          * display = "Radio Button"
      * answerOption[0].valueCoding = #1 "Anderes Krankenhaus"
      * answerOption[1].valueCoding = #2 "Direkt"

    * item[+]
      * linkId = "3011"
      * text = "Art Zutransport – anderes Krankenhaus"
      * type = #question
      * extension[+]
        * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
        * valueCodeableConcept.coding[+]
          * system = "http://hl7.org/fhir/questionnaire-item-control"
          * code = #radio-button
          * display = "Radio Button"
      * answerOption[0].valueCoding = #1 "Rettung mit Notarzt"
      * answerOption[1].valueCoding = #2 "Rettung ohne Notarzt"
      * answerOption[2].valueCoding = #3 "Rettungshubschrauber"
      * enableWhen[+]
        * question = "3010"
        * operator = #=
        * answerCoding = #1

    * item[+]
      * linkId = "3020"
      * text = "Art Zutransport – direkt"
      * type = #question
      * answerOption[0].valueCoding = #1 "Rettung mit Notarzt mit Aviso"
      * answerOption[1].valueCoding = #2 "Rettung ohne Notarzt mit Aviso"
      * answerOption[2].valueCoding = #3 "Rettungshubschrauber"
      * answerOption[3].valueCoding = #4 "Privat"
      * answerOption[4].valueCoding = #5 "Anderer"
      * answerOption[5].valueCoding = #6 "Rettung mit Notarzt ohne Aviso"
      * answerOption[6].valueCoding = #7 "Rettung ohne Notarzt ohne Aviso"
      * answerOption[7].valueCoding = #8 "Rettung mit Notarzt"
      * answerOption[8].valueCoding = #9 "Rettung ohne Notarzt"
      * enableWhen[+]
        * question = "3010"
        * operator = #=
        * answerCoding = #2

    * item[+]
      * linkId = "3021"
      * text = "Welcher Zutransport (wenn 'Anderer')"
      * type = #string
      * maxLength = 64
      * enableWhen[+]
        * question = "3020"
        * operator = #=
        * answerCoding = #5
  * item[+]
    * linkId = "gruppe-zutransport-intern"
    * text = "Zutransport intern"
    * type = #group
    * enableWhen[+]
      * question = "30541"
      * operator = #=
      * answerCoding = #1
    * item[+]
      * linkId = "zutransport-intern-auswahl"
      * text = "Zutransport intern"
      * type = #question
      * extension[+]
        * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
        * valueCodeableConcept.coding[+]
          * system = "http://hl7.org/fhir/questionnaire-item-control"
          * code = #radio-button
          * display = "Radio Button"
      * answerOption[+]
        * valueCoding = #3055 "Ambulanz"
      * answerOption[+]
        * valueCoding = #3056 "Andere Fachabteilung"
      * answerOption[+]
        * valueCoding = #3057 "Direkt an die Stroke Unit"
      * answerOption[+]
        * valueCoding = #3058 "Notaufnahme"
      * answerOption[+]
        * valueCoding = #3059 "Eigene Fachabteilung"
      * answerOption[+]
        * valueCoding = #3060 "Schlaganfall im Krankenhaus"


* item[+]
  * linkId = "gruppe-nih-aufnahme"
  * text = "NIH Stroke Scale bei Aufnahme"
  * type = #group
  * enableWhen[+]
    * question = "2006"
    * operator = #=
    * answerCoding = #1

  * item[+]
    * linkId = "4020"
    * text = "Gesamtsumme NIH - SS bei Aufnahme"
    * type = #integer
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/minValue"
      * valueInteger = 0
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/maxValue"
      * valueInteger = 42
* item[+]
  * linkId = "gruppe-rankinskala-aufnahme"
  * text = "Rankinskala bei Aufnahme"
  * type = #group
  * enableWhen[+]
    * question = "2006"
    * operator = #=
    * answerCoding = #1

  * item[+]
    * linkId = "6001"
    * text = "Rankinskala vor Insult"
    * type = #integer
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/minValue"
      * valueInteger = 0
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/maxValue"
      * valueInteger = 5

  * item[+]
    * linkId = "6002"
    * text = "Rankinskala bei Aufnahme"
    * type = #integer
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/minValue"
      * valueInteger = 0
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/maxValue"
      * valueInteger = 5
* item[+]
  * linkId = "gruppe-syndrom"
  * text = "Syndrom"
  * type = #group
  * enableWhen[+]
    * question = "2006"
    * operator = #=
    * answerCoding = #1

  * item[+]
    * linkId = "7001"
    * text = "Syndrom"
    * type = #question
    * answerOption[0].valueCoding = #1 "Ischämie"
    * answerOption[1].valueCoding = #2 "Primäre intrazerebrale Blutung"
    * answerOption[2].valueCoding = #3 "Sinus-/Venenthrombose (SVT)"
    * answerOption[3].valueCoding = #4 "Subarachnoidalblutung (SAB)"
  * item[+]
    * linkId = "gruppe-lokalisation-ischamie"
    * text = "Lokalisation"
    * type = #group
    * enableWhen[+]
      * question = "7001"
      * operator = #=
      * answerCoding = #1

    * item[+]
      * linkId = "7005"
      * text = "Lokalisation Ischämie"
      * type = #question
      * answerOption[0].valueCoding = #1 "Linke Großhirnhemisphäre"
      * answerOption[1].valueCoding = #2 "Rechte Großhirnhemisphäre"
      * answerOption[2].valueCoding = #3 "Beide Großhirnhemisphären"
      * answerOption[3].valueCoding = #4 "Vorwiegend Hirnstamm"
      * answerOption[4].valueCoding = #5 "Vorwiegend Kleinhirn"
      * answerOption[5].valueCoding = #6 "Retina"
      * answerOption[6].valueCoding = #7 "Rückenmark"
  * item[+]
    * linkId = "gruppe-klinisches-syndrom"
    * text = "Klinisches Syndrom"
    * type = #group
    * enableWhen[+]
      * question = "7001"
      * operator = #=
      * answerCoding = #1

    * item[+]
      * linkId = "7010"
      * text = "Klinisches Syndrom"
      * type = #question
      * answerOption[0].valueCoding = #1 "LACS"
      * answerOption[1].valueCoding = #2 "TACS"
      * answerOption[2].valueCoding = #3 "PACS"
      * answerOption[3].valueCoding = #4 "POCS"
      * answerOption[4].valueCoding = #5 "Anderes"

    * item[+]
      * linkId = "7011"
      * text = "Welches anderes klinisches Syndrom"
      * type = #string
      * maxLength = 64
      * enableWhen[+]
        * question = "7010"
        * operator = #=
        * answerCoding = #5
  * item[+]
    * linkId = "gruppe-lokalisation-icb"
    * text = "Lokalisation"
    * type = #group
    * enableWhen[+]
      * question = "7001"
      * operator = #=
      * answerCoding = #2

    * item[+]
      * linkId = "7015"
      * text = "Seite primäre intrazerebrale Blutung"
      * type = #question
      * extension[+]
        * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-questionOrientation"
        * valueCode = #horizontal
      * extension[+]
        * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
        * valueCodeableConcept.coding[+]
          * system = "http://hl7.org/fhir/questionnaire-item-control"
          * code = #radio-button
          * display = "Radio Button"
      * answerOption[0].valueCoding = #1 "Links"
      * answerOption[1].valueCoding = #2 "Rechts"
      * answerOption[2].valueCoding = #3 "Beidseits"

  * item[+]
    * linkId = "gruppe-lokalisation-primaere-icb"
    * text = "Lokalisation primäre intrazerebrale Blutung"
    * type = #group
    * enableWhen[+]
      * question = "7001"
      * operator = #=
      * answerCoding = #2

    * item[+]
      * linkId = "7022"
      * text = "Stammganglien"
      * type = #boolean

    * item[+]
      * linkId = "7023"
      * text = "Thalamus"
      * type = #boolean

    * item[+]
      * linkId = "7024"
      * text = "Cerebellum"
      * type = #boolean

    * item[+]
      * linkId = "7025"
      * text = "Lobär"
      * type = #boolean

    * item[+]
      * linkId = "7026"
      * text = "Pons"
      * type = #boolean

    * item[+]
      * linkId = "7027"
      * text = "IVH (intraventricular hemorrhage)"
      * type = #boolean

    * item[+]
      * linkId = "7030"
      * text = "Wenn IVH: Lokalisation"
      * type = #question
      * extension[+]
        * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-questionOrientation"
        * valueCode = #horizontal
      * extension[+]
        * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
        * valueCodeableConcept.coding[+]
          * system = "http://hl7.org/fhir/questionnaire-item-control"
          * code = #radio-button
          * display = "Radio Button"
      * enableWhen[+]
        * question = "7027"
        * operator = #=
        * answerBoolean = true
      * answerOption[0].valueCoding = #1 "Seitenventrikel"
      * answerOption[1].valueCoding = #2 "3. oder 4. Ventrikel"

    * item[+]
      * linkId = "7050"
      * text = "GCS bei Aufnahme"
      * type = #integer
      * extension[+]
        * url = "http://hl7.org/fhir/StructureDefinition/minValue"
        * valueInteger = 3
      * extension[+]
        * url = "http://hl7.org/fhir/StructureDefinition/maxValue"
        * valueInteger = 15

    * item[+]
      * linkId = "7060"
      * text = "ICB bei Aufnahme bestimmt"
      * type = #boolean

    * item[+]
      * linkId = "7061"
      * text = "Volumen in ml"
      * type = #decimal
      * extension[+]
        * url = "http://hl7.org/fhir/StructureDefinition/minValue"
        * valueDecimal = 0.0
      * extension[+]
        * url = "http://hl7.org/fhir/StructureDefinition/maxValue"
        * valueDecimal = 500.0
      * enableWhen[+]
        * question = "7060"
        * operator = #=
        * answerBoolean = true

    * item[+]
      * linkId = "7072"
      * text = "GRAEB Score"
      * type = #integer
      * required = false
      * extension[+]
        * url = "http://hl7.org/fhir/StructureDefinition/minValue"
        * valueInteger = 0
      * extension[+]
        * url = "http://hl7.org/fhir/StructureDefinition/maxValue"
        * valueInteger = 12
* item[+]
  * linkId = "gruppe-diagnostik"
  * text = "Diagnostik"
  * type = #group
  * enableWhen[+]
    * question = "2006"
    * operator = #=
    * answerCoding = #1

  * item[+]
    * linkId = "gruppe-erste-bildgebung"
    * text = "Erste Bildgebung"
    * type = #group

    * item[+]
      * linkId = "8888"
      * text = "Bildgebende Untersuchung durchgeführt"
      * type = #boolean

    * item[+]
      * linkId = "8000"
      * text = "Bereits vor Krankenhausaufnahme durchgeführt"
      * type = #boolean
      * enableWhen[+]
        * question = "8888"
        * operator = #=
        * answerBoolean = true

  

    * item[+]
      * linkId = "8001"
      * text = "Datum"
      * type = #date
      * extension[0]
        * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-minValueExpression"
        * valueExpression
          * language = #text/fhirpath
          * expression = "today() - 10 years"
      * extension[+]
        * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-maxValueExpression"
        * valueExpression
          * language = #text/fhirpath
          * expression = "today()"
      * enableBehavior = #any
      * enableWhen[+]
        * question = "8000"
        * operator = #=
        * answerBoolean = true
      * enableWhen[+]
        * question = "8003"
        * operator = #=
        * answerBoolean = true
      * enableWhen[+]
        * question = "8004"
        * operator = #=
        * answerBoolean = true

    * item[+]
      * linkId = "8002"
      * text = "Uhrzeit CCT"
      * type = #time
      * extension[+].url = "http://hl7.org/fhir/StructureDefinition/minLength"
      * extension[=].valueInteger = 5
      * extension[+].url = "http://hl7.org/fhir/StructureDefinition/maxLength"
      * extension[=].valueInteger = 5
      * enableBehavior = #any
      * enableWhen[+]
        * question = "8000"
        * operator = #=
        * answerBoolean = true
      * enableWhen[+]
        * question = "8003"
        * operator = #=
        * answerBoolean = true
      * enableWhen[+]
        * question = "8004"
        * operator = #=
        * answerBoolean = true
  * item[+]
    * linkId = "gruppe-bildgebung-verfahren"
    * text = "Bildgebendes Verfahren"
    * type = #group
    * enableWhen[+]
      * question = "8888"
      * operator = #=
      * answerBoolean = true
    * item[+]
      * linkId = "8003"
      * text = "CCT durchgeführt"
      * type = #boolean
    * item[+]
      * linkId = "8004"
      * text = "MRI durchgeführt"
      * type = #boolean

  * item[+]
    * linkId = "gruppe-gefäßdiagnostik-extrakraniell"
    * text = "Erste Untersuchung der hirnzuführenden Gefäße (extrakraniell)"
    * type = #group

    * item[+]
      * linkId = "8889"
      * text = "Untersuchung der hirnzuführenden Gefäße durchgeführt"
      * type = #boolean

    * item[+]
      * linkId = "8011"
      * text = "Bereits vor Krankenhausaufnahme durchgeführt"
      * type = #boolean
      * enableWhen[+]
        * question = "8889"
        * operator = #=
        * answerBoolean = true
        
    * item[+]
      * linkId = "8009"
      * text = "Datum"
      * type = #date
      * enableBehavior = #any
      * enableWhen[0]
        * question = "8011"
        * operator = #=
        * answerBoolean = true
      * enableWhen[+]
        * question = "8008"
        * operator = #=
        * answerBoolean = true
      * enableWhen[+]
        * question = "8013"
        * operator = #=
        * answerBoolean = true
      * enableWhen[+]
        * question = "8006"
        * operator = #=
        * answerBoolean = true
      * extension[0]
        * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-minValueExpression"
        * valueExpression
          * language = #text/fhirpath
          * expression = "today() - 10 years"
      * extension[+]
        * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-maxValueExpression"
        * valueExpression
          * language = #text/fhirpath
          * expression = "today()"

    * item[+]
      * linkId = "8010"
      * text = "Uhrzeit"
      * type = #time
      * extension[+].url = "http://hl7.org/fhir/StructureDefinition/minLength"
      * extension[=].valueInteger = 5
      * extension[+].url = "http://hl7.org/fhir/StructureDefinition/maxLength"
      * extension[=].valueInteger = 5
      * enableBehavior = #any
      * enableWhen[0]
        * question = "8011"
        * operator = #=
        * answerBoolean = true
      * enableWhen[+]
        * question = "8008"
        * operator = #=
        * answerBoolean = true
      * enableWhen[+]
        * question = "8013"
        * operator = #=
        * answerBoolean = true
      * enableWhen[+]
        * question = "8006"
        * operator = #=
        * answerBoolean = true



    * item[+]
      * linkId = "8008"
      * text = "Sonografie"
      * type = #boolean
      * enableWhen[+]
        * question = "8889"
        * operator = #=
        * answerBoolean = true

    * item[+]
      * linkId = "8013"
      * text = "CTA"
      * type = #boolean
      * enableWhen[+]
        * question = "8889"
        * operator = #=
        * answerBoolean = true

    * item[+]
      * linkId = "8006"
      * text = "MR-Angio"
      * type = #boolean
      * enableWhen[+]
        * question = "8889"
        * operator = #=
        * answerBoolean = true

    
    * item[+]
      * linkId = "8030"
      * text = "Erste Untersuchung der Hirngefäße"
      * type = #question
      * answerOption[0].valueCoding = #1 "Sonografie"
      * answerOption[1].valueCoding = #2 "CTA"
      * answerOption[2].valueCoding = #3 "MR-Angio"
      * answerOption[3].valueCoding = #4 "DSA"
      * answerOption[4].valueCoding = #5 "keine"

    * item[+]
      * linkId = "8060"
      * text = "Gefäßverschluss (Hauptstamm)"
      * type = #boolean

    * item[+]
      * linkId = "806X"
      * text = "Lokalisation des Gefäßverschlusses"
      * type = #question
      * repeats = true
      * extension[+]
        * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
        * valueCodeableConcept.coding[+]
          * system = "http://hl7.org/fhir/questionnaire-item-control"
          * code = #check-box
          * display = "Check Box"
      * extension[+]
        * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-openLabel"
        * valueString = "Sonstiger Verschluss (bitte angeben)"
      * enableWhen[+]
        * question = "8060"
        * operator = #=
        * answerBoolean = true
      * answerOption[+].valueCoding
        * system = "http://example.org/CodeSystem/vessel-occlusion"
        * code = #8061
        * display = "M1-Verschluss"
      * answerOption[+].valueCoding
        * system = "http://example.org/CodeSystem/vessel-occlusion"
        * code = #8062
        * display = "M2-Verschluss"
      * answerOption[+].valueCoding
        * system = "http://example.org/CodeSystem/vessel-occlusion"
        * code = #8063
        * display = "T-Gabelverschluss"
      * answerOption[+].valueCoding
        * system = "http://example.org/CodeSystem/vessel-occlusion"
        * code = #8064
        * display = "Distaler ACI-Verschluss, T-Gabel jedoch offen"
      * answerOption[+].valueCoding
        * system = "http://example.org/CodeSystem/vessel-occlusion"
        * code = #8065
        * display = "Basilaris-Verschluss"
      * answerOption[+].valueCoding
        * code = #8066
        * display = "V4-Verschluss"
        * system = "http://example.org/CodeSystem/vessel-occlusion"
      * answerOption[+].valueCoding
        * code = #8067
        * display = "A. c. posterior-Verschluss"
        * system = "http://example.org/CodeSystem/vessel-occlusion"
      * answerOption[+].valueCoding
        * code = #8071
        * display =  "A. c. anterior-Verschluss"
        * system = "http://example.org/CodeSystem/vessel-occlusion"
      * answerOption[+].valueCoding
        * code = #8072
        * display =  "Verschluss der proximalen ACI"
        * system = "http://example.org/CodeSystem/vessel-occlusion"
      * answerOption[+].valueCoding
        * code = #8073
        * display = "Stenose der proximalen ACI (wenn >= 70 %)"
        * system = "http://example.org/CodeSystem/vessel-occlusion"

* item[+]
  * linkId = "gruppe-vortherapie"
  * text = "Vortherapie bei Aufnahme (Antithrombotische Therapie)"
  * type = #group
  * enableWhen[+]
    * question = "2006"
    * operator = #=
    * answerCoding = #1

  * item[+]
    * linkId = "8070"
    * text = "Plättchenhemmer"
    * type = #question
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-questionOrientation"
      * valueCode = #horizontal
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
      * valueCodeableConcept.coding[+]
        * system = "http://hl7.org/fhir/questionnaire-item-control"
        * code = #radio-button
        * display = "Radio Button"
    * answerOption[+].valueCoding = #1 "Mono"
    * answerOption[+].valueCoding = #2 "Dual"
    * answerOption[+].valueCoding = #0 "Nein"

  * item[+]
    * linkId = "8075"
    * text = "Vitamin K Antagonist"
    * type = #question
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-questionOrientation"
      * valueCode = #horizontal
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
      * valueCodeableConcept.coding[+]
        * system = "http://hl7.org/fhir/questionnaire-item-control"
        * code = #radio-button
        * display = "Radio Button"
    * answerOption[+].valueCoding = #1 "ja"
    * answerOption[+].valueCoding = #2 "derzeit pausiert"
    * answerOption[+].valueCoding = #0 "nein"

  * item[+]
    * linkId = "8076"
    * text = "INR-Wert bei Aufnahme"
    * type = #decimal
    * enableWhen[+]
      * question = "8075"
      * operator = #=
      * answerCoding = #1
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/minValue"
      * valueDecimal = 0.0
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/maxValue"
      * valueDecimal = 9.9

  * item[+]
    * linkId = "8080"
    * text = "Apixaban"
    * type = #question
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-questionOrientation"
      * valueCode = #horizontal
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
      * valueCodeableConcept.coding[+]
        * system = "http://hl7.org/fhir/questionnaire-item-control"
        * code = #radio-button
        * display = "Radio Button"
    * answerOption[+].valueCoding = #1 "ja"
    * answerOption[+].valueCoding = #2 "derzeit pausiert"
    * answerOption[+].valueCoding = #0 "nein"

  * item[+]
    * linkId = "8085"
    * text = "Dabigatran"
    * type = #question
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-questionOrientation"
      * valueCode = #horizontal
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
      * valueCodeableConcept.coding[+]
        * system = "http://hl7.org/fhir/questionnaire-item-control"
        * code = #radio-button
        * display = "Radio Button"
    * answerOption[+].valueCoding = #1 "ja"
    * answerOption[+].valueCoding = #2 "derzeit pausiert"
    * answerOption[+].valueCoding = #0 "nein"

  * item[+]
    * linkId = "8090"
    * text = "Edoxaban"
    * type = #question
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-questionOrientation"
      * valueCode = #horizontal
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
      * valueCodeableConcept.coding[+]
        * system = "http://hl7.org/fhir/questionnaire-item-control"
        * code = #radio-button
        * display = "Radio Button"
    * answerOption[+].valueCoding = #1 "ja"
    * answerOption[+].valueCoding = #2 "derzeit pausiert"
    * answerOption[+].valueCoding = #0 "nein"

  * item[+]
    * linkId = "8095"
    * text = "Rivaroxaban"
    * type = #question
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-questionOrientation"
      * valueCode = #horizontal
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
      * valueCodeableConcept.coding[+]
        * system = "http://hl7.org/fhir/questionnaire-item-control"
        * code = #radio-button
        * display = "Radio Button"
    * answerOption[+].valueCoding = #1 "ja"
    * answerOption[+].valueCoding = #2 "derzeit pausiert"
    * answerOption[+].valueCoding = #0 "nein"

* item[+]
  * linkId = "gruppe-risikofaktoren"
  * text = "Risikofaktoren und Begleiterkrankungen"
  * type = #group
  * enableWhen[+]
    * question = "2006"
    * operator = #=
    * answerCoding = #1

  * item[+]
    * linkId = "9001"
    * text = "Hypertonie"
    * type = #question
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-questionOrientation"
      * valueCode = #horizontal
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
      * valueCodeableConcept.coding[+]
        * system = "http://hl7.org/fhir/questionnaire-item-control"
        * code = #radio-button
        * display = "Radio Button"
    * answerOption[+].valueCoding = #1 "ja"
    * answerOption[+].valueCoding = #0 "nein"
    * answerOption[+].valueCoding = #2 "unbekannt"

  * item[+]
    * linkId = "9002"
    * text = "Diabetes mellitus"
    * type = #question
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-questionOrientation"
      * valueCode = #horizontal
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
      * valueCodeableConcept.coding[+]
        * system = "http://hl7.org/fhir/questionnaire-item-control"
        * code = #radio-button
        * display = "Radio Button"
    * answerOption[+].valueCoding = #1 "ja"
    * answerOption[+].valueCoding = #0 "nein"
    * answerOption[+].valueCoding = #2 "unbekannt"

  * item[+]
    * linkId = "9003"
    * text = "Vorinsult"
    * type = #question
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-questionOrientation"
      * valueCode = #horizontal
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
      * valueCodeableConcept.coding[+]
        * system = "http://hl7.org/fhir/questionnaire-item-control"
        * code = #radio-button
        * display = "Radio Button"
    * answerOption[+].valueCoding = #1 "ja"
    * answerOption[+].valueCoding = #0 "nein"
    * answerOption[+].valueCoding = #2 "unbekannt"

  * item[+]
    * linkId = "9004"
    * text = "Herzinfarkt"
    * type = #question
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-questionOrientation"
      * valueCode = #horizontal
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
      * valueCodeableConcept.coding[+]
        * system = "http://hl7.org/fhir/questionnaire-item-control"
        * code = #radio-button
        * display = "Radio Button"
    * answerOption[+].valueCoding = #1 "ja"
    * answerOption[+].valueCoding = #0 "nein"
    * answerOption[+].valueCoding = #2 "unbekannt"

  * item[+]
    * linkId = "9005"
    * text = "Hypercholesterinämie"
    * type = #question
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-questionOrientation"
      * valueCode = #horizontal
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
      * valueCodeableConcept.coding[+]
        * system = "http://hl7.org/fhir/questionnaire-item-control"
        * code = #radio-button
        * display = "Radio Button"
    * answerOption[+].valueCoding = #1 "ja"
    * answerOption[+].valueCoding = #0 "nein"
    * answerOption[+].valueCoding = #2 "unbekannt"

  * item[+]
    * linkId = "9015"
    * text = "DLCN Score"
    * type = #integer
    * required = false
    * enableWhen[+]
      * question = "9005"
      * operator = #=
      * answerCoding = #1
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/minValue"
      * valueInteger = 0
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/maxValue"
      * valueInteger = 24

  * item[+]
    * linkId = "9006"
    * text = "Vorhofflimmern"
    * type = #question
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-questionOrientation"
      * valueCode = #horizontal
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
      * valueCodeableConcept.coding[+]
        * system = "http://hl7.org/fhir/questionnaire-item-control"
        * code = #radio-button
        * display = "Radio Button"
    * answerOption[+].valueCoding = #1 "ja bereits bekannt"
    * answerOption[+].valueCoding = #3 "ja De-Novo (EKG)"
    * answerOption[+].valueCoding = #0 "nein"

  * item[+]
    * linkId = "9009"
    * text = "Nikotin"
    * type = #question
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-questionOrientation"
      * valueCode = #horizontal
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
      * valueCodeableConcept.coding[+]
        * system = "http://hl7.org/fhir/questionnaire-item-control"
        * code = #radio-button
        * display = "Radio Button"
    * answerOption[+].valueCoding = #1 "ja"
    * answerOption[+].valueCoding = #0 "nein"
    * answerOption[+].valueCoding = #2 "unbekannt"

  * item[+]
    * linkId = "9012"
    * text = "Alkohol"
    * type = #question
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-questionOrientation"
      * valueCode = #horizontal
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
      * valueCodeableConcept.coding[+]
        * system = "http://hl7.org/fhir/questionnaire-item-control"
        * code = #radio-button
        * display = "Radio Button"
    * answerOption[+].valueCoding = #1 "ja"
    * answerOption[+].valueCoding = #0 "nein"
    * answerOption[+].valueCoding = #2 "unbekannt"

  * item[+]
    * linkId = "9013"
    * text = "Niereninsuffizienz"
    * type = #question
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-questionOrientation"
      * valueCode = #horizontal
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
      * valueCodeableConcept.coding[+]
        * system = "http://hl7.org/fhir/questionnaire-item-control"
        * code = #radio-button
        * display = "Radio Button"
    * answerOption[+].valueCoding = #1 "ja"
    * answerOption[+].valueCoding = #0 "nein"
    * answerOption[+].valueCoding = #2 "unbekannt"

* item[+]
  * linkId = "gruppe-therapie-ischämisch"
  * text = "Therapie ischämischer Schlaganfall"
  * type = #group
  * enableWhen[+]
    * question = "2006"
    * operator = #=
    * answerCoding = #1

  * item[+]
    * linkId = "10001"
    * text = "Lyse i.v."
    * type = #question
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-questionOrientation"
      * valueCode = #horizontal
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
      * valueCodeableConcept.coding[+]
        * system = "http://hl7.org/fhir/questionnaire-item-control"
        * code = #radio-button
        * display = "Radio Button"
    * answerOption[+].valueCoding = #1 "ja"
    * answerOption[+].valueCoding = #0 "nein"
    * answerOption[+].valueCoding = #2 "extern durchgeführt"

  * item[+]
    * linkId = "10002"
    * text = "Art der Thrombolyse"
    * type = #question
    * enableWhen[+]
      * question = "10001"
      * operator = #=
      * answerCoding = #1
      * extension[+]
        * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-questionOrientation"
        * valueCode = #horizontal
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
      * valueCodeableConcept.coding[+]
        * system = "http://hl7.org/fhir/questionnaire-item-control"
        * code = #radio-button
        * display = "Radio Button"
    * answerOption[+].valueCoding = #1 "Alteplase"
    * answerOption[+].valueCoding = #2 "Tenecteplase"

  * item[+]
    * linkId = "10040"
    * text = "Datum Lyse i.v."
    * type = #date
    * enableWhen[+]
      * question = "10001"
      * operator = #=
      * answerCoding = #1
    * extension[0]
      * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-minValueExpression"
      * valueExpression
        * language = #text/fhirpath
        * expression = "today() - 10 years"
    * extension[+]
      * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-maxValueExpression"
      * valueExpression
        * language = #text/fhirpath
        * expression = "today()"

  * item[+]
    * linkId = "10041"
    * text = "Uhrzeit Lyse i.v."
    * type = #time
    * extension[+].url = "http://hl7.org/fhir/StructureDefinition/minLength"
    * extension[=].valueInteger = 5
    * extension[+].url = "http://hl7.org/fhir/StructureDefinition/maxLength"
    * extension[=].valueInteger = 5
    * enableWhen[+]
      * question = "10001"
      * operator = #=
      * answerCoding = #1

  * item[+]
    * linkId = "10090"
    * text = "Akute endovaskuläre Behandlung"
    * type = #boolean

  * item[+]
    * linkId = "10005"
    * text = "Thrombozytenaggregationshemmer"
    * type = #question
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-questionOrientation"
      * valueCode = #horizontal
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
      * valueCodeableConcept.coding[+]
        * system = "http://hl7.org/fhir/questionnaire-item-control"
        * code = #radio-button
        * display = "Radio Button"
    * answerOption[+].valueCoding = #2 "Mono"
    * answerOption[+].valueCoding = #3 "Dual"
    * answerOption[+].valueCoding = #0 "Nein"

  * item[+]
    * linkId = "10091"
    * text = "Heparin"
    * type = #question
    * answerOption[+].valueCoding = #1 "Keines"
    * answerOption[+].valueCoding = #2 "Low"
    * answerOption[+].valueCoding = #3 "Medium"
    * answerOption[+].valueCoding = #4 "High"

  * item[+]
    * linkId = "10092"
    * text = "PTA/Stent der ACI"
    * type = #question
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-questionOrientation"
      * valueCode = #horizontal
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
      * valueCodeableConcept.coding[+]
        * system = "http://hl7.org/fhir/questionnaire-item-control"
        * code = #radio-button
        * display = "Radio Button"
    * answerOption[+].valueCoding = #1 "ja"
    * answerOption[+].valueCoding = #0 "nein"
    * answerOption[+].valueCoding = #2 "vorgesehen"

  * item[+]
    * linkId = "10093"
    * text = "CEA"
    * type = #question
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-questionOrientation"
      * valueCode = #horizontal
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
      * valueCodeableConcept.coding[+]
        * system = "http://hl7.org/fhir/questionnaire-item-control"
        * code = #radio-button
        * display = "Radio Button"
    * answerOption[+].valueCoding = #1 "ja"
    * answerOption[+].valueCoding = #0 "nein"
    * answerOption[+].valueCoding = #2 "vorgesehen"

* item[+]
  * linkId = "gruppe-therapie-icb"
  * text = "Therapie intrazerebrale Blutung"
  * type = #group
  * enableWhen[+]
    * question = "2006"
    * operator = #=
    * answerCoding = #1
  * enableWhen[+]
    * question = "7001"
    * operator = #=
    * answerCoding = #2

  * item[+]
    * linkId = "10060"
    * text = "Externe Ventrikel-Drainage"
    * type = #boolean

  * item[+]
    * linkId = "10061"
    * text = "Lumbale Drainage"
    * type = #boolean

  * item[+]
    * linkId = "10062"
    * text = "Intraventrikuläre Lyse"
    * type = #boolean

  * item[+]
    * linkId = "10063"
    * text = "Operative Ausräumung"
    * type = #boolean

  * item[+]
    * linkId = "10064"
    * text = "Hypothermie"
    * type = #boolean
  
