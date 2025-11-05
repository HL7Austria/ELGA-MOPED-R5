Instance: LKFK02Questionnaire
InstanceOf: Questionnaire
Usage: #example
* title = "LKF K02 Questionnaire"
* status = #draft
* description = "K02 Questionnaire - KA-Stammdaten"
* item[0].type = #string
* item[=].maxLength = 3
* item[=].linkId = "satzartenkennzeichen"
* item[=].text = "Satzartenkennzeichen"
* item[=].readOnly = true
* item[=].initial.valueString = "K02"
* item[+].type = #integer
* item[=].maxLength = 4
* item[=].linkId = "jahr"
* item[=].text = "Jahr"
* item[+].type = #string
* item[=].maxLength = 6
* item[=].linkId = "krankenanstaltennummer"
* item[=].text = "Krankenanstaltennummer"
* item[+].type = #string
* item[=].maxLength = 150
* item[=].linkId = "krankenanstalt-bezeichnung"
* item[=].text = "Krankenanstalt – Bezeichnung"
* item[+].type = #string
* item[=].maxLength = 50
* item[=].linkId = "krankenanstalt-straße"
* item[=].text = "Krankenanstalt – Straße"
* item[+].type = #string
* item[=].maxLength = 6
* item[=].linkId = "krankenanstalt-postleitzahl"
* item[=].text = "Krankenanstalt – Postleitzahl"
* item[+].type = #string
* item[=].maxLength = 50
* item[=].linkId = "krankenanstalt-ort"
* item[=].text = "Krankenanstalt – Ort"
* item[+].type = #string
* item[=].maxLength = 20
* item[=].linkId = "krankenanstalt-telefon"
* item[=].text = "Krankenanstalt – Telefon"
* item[+].type = #string
* item[=].maxLength = 20
* item[=].linkId = "krankenanstalt-fax"
* item[=].text = "Krankenanstalt – Fax"
* item[+].type = #string
* item[=].maxLength = 100
* item[=].linkId = "krankenanstalt-homepage"
* item[=].text = "Krankenanstalt – Homepage"
* item[+].type = #string
* item[=].maxLength = 150
* item[=].linkId = "rechtsträger-bezeichnung"
* item[=].text = "Rechtsträger – Bezeichnung"
* item[+].type = #string
* item[=].maxLength = 50
* item[=].linkId = "rechtsträger-straße"
* item[=].text = "Rechtsträger – Straße"
* item[+].type = #string
* item[=].maxLength = 6
* item[=].linkId = "rechtsträger-postleitzahl"
* item[=].text = "Rechtsträger – Postleitzahl"
* item[+].type = #string
* item[=].maxLength = 50
* item[=].linkId = "rechtsträger-ort"
* item[=].text = "Rechtsträger – Ort"
* item[+].type = #string
* item[=].maxLength = 20
* item[=].linkId = "rechtsträger-telefon"
* item[=].text = "Rechtsträger – Telefon"
* item[+].type = #string
* item[=].maxLength = 20
* item[=].linkId = "rechtsträger-fax"
* item[=].text = "Rechtsträger – Fax"
* item[+].type = #string
* item[=].maxLength = 100
* item[=].linkId = "rechtsträger-homepage"
* item[=].text = "Rechtsträger – Homepage"
* item[+].type = #string
* item[=].maxLength = 100
* item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/entryFormat"
* item[=].extension[=].valueString = "NACHNAME/Vorname/Titel"
* item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/regex"
* item[=].extension[=].valueString = "^[A-ZÄÖÜ]+\\/[A-ZÄÖÜ][a-zäöüß]+\\/[A-Za-zÄÖÜäöüß\\.]+$"
* item[=].linkId = "ärztliche-leitung"
* item[=].text = "Ärztliche Leitung"
* item[=].item.linkId = "ärztliche-leitung_helpText"
* item[=].item.type = #display
* item[=].item.text = "Bitte geben Sie den Namen im Format NACHNAME/Vorname/Titel ein, z. B. MÜLLER/Anna/Dr."
* item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item.extension.valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#help "Help-Button"
* item[=].item.extension.valueCodeableConcept.text = "Help-Button"
* item[+].type = #string
* item[=].maxLength = 100
* item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/entryFormat"
* item[=].extension[=].valueString = "NACHNAME/Vorname/Titel"
* item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/regex"
* item[=].extension[=].valueString = "^[A-ZÄÖÜ]+\\/[A-ZÄÖÜ][a-zäöüß]+\\/[A-Za-zÄÖÜäöüß\\.]+$"
* item[=].linkId = "verwaltungsleitung"
* item[=].text = "Verwaltungsleitung"
* item[=].item.linkId = "verwaltungsleitung_helpText"
* item[=].item.type = #display
* item[=].item.text = "Bitte geben Sie den Namen im Format NACHNAME/Vorname/Titel ein, z. B. MÜLLER/Anna/Dr."
* item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item.extension.valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#help "Help-Button"
* item[=].item.extension.valueCodeableConcept.text = "Help-Button"
* item[+].type = #string
* item[=].maxLength = 100
* item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/entryFormat"
* item[=].extension[=].valueString = "NACHNAME/Vorname/Titel"
* item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/regex"
* item[=].extension[=].valueString = "^[A-ZÄÖÜ]+\\/[A-ZÄÖÜ][a-zäöüß]+\\/[A-Za-zÄÖÜäöüß\\.]+$"
* item[=].linkId = "pflegedienstleitung"
* item[=].text = "Pflegedienstleitung"
* item[=].item.linkId = "pflegedienstleitung_helpText"
* item[=].item.type = #display
* item[=].item.text = "Bitte geben Sie den Namen im Format NACHNAME/Vorname/Titel ein, z. B. MÜLLER/Anna/Dr."
* item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item.extension.valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#help "Help-Button"
* item[=].item.extension.valueCodeableConcept.text = "Help-Button"