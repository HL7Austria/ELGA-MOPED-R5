Alias: $questionnaire-item-control = http://hl7.org/fhir/questionnaire-item-control

Instance: register-questionnaire
InstanceOf: Questionnaire
Usage: #example
* title = "register-questionnaire"
* status = #draft

* item[0].type = #string
* item[=].linkId = "550421449440"
* item[=].maxLength = 100
* item[=].text = "Personennummer"
* item[=].required = false

* item[0].type = #string
* item[=].linkId = "550421449441"
* item[=].maxLength = 100
* item[=].text = "Tumornummer"
* item[=].required = false

* item[0].type = #string
* item[=].linkId = "550421449442"
* item[=].maxLength = 100
* item[=].text = "Meldungsnummer"
* item[=].required = false

* item[+].type = #string
* item[=].linkId = "550421449443"
* item[=].maxLength = 4
* item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/minLength"
* item[=].extension.valueInteger = 4
* item[=].text = "Anstaltsnummer"
* item[=].required = true
* item[=].item.linkId = "550421449443_helpText"
* item[=].item.type = #display
* item[=].item.text = "Code bei Statistik Austria anfordern"
* item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item.extension.valueCodeableConcept = $questionnaire-item-control#help "Help-Button"
* item[=].item.extension.valueCodeableConcept.text = "Help-Button"

* item[+].type = #string
* item[=].maxLength = 172
* item[=].linkId = "550421449444"
* item[=].text = "VBPK-AS"
* item[=].required = false
* item[=].item.linkId = "550421449444_helpText"
* item[=].item.type = #display
* item[=].item.text = "verschlüsseltes bereichsspezifisches Personenkennzeichen Amtliche Statistik"
* item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item.extension.valueCodeableConcept = $questionnaire-item-control#help "Help-Button"
* item[=].item.extension.valueCodeableConcept.text = "Help-Button"

* item[+].type = #string
* item[=].linkId = "550421449445"
* item[=].maxLength = 10
* item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/minLength"
* item[=].extension.valueInteger = 10
* item[=].text = "Sozialversicherungsnummer"
* item[=].enableWhen.question = "550421449444"
* item[=].enableWhen.operator = #exists
* item[=].enableWhen.answerBoolean = false
* item[=].enableBehavior = #any
* item[=].required = false

* item[+].type = #date
* item[=].linkId = "550421449446"
* item[=].text = "Aufenthalt am"
* item[=].required = true
* item[=].item.linkId = "550421449446_helpText"
* item[=].item.type = #display
* item[=].item.text = "Datum des Patientenkontakts"
* item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item.extension.valueCodeableConcept = $questionnaire-item-control#help "Help-Button"
* item[=].item.extension.valueCodeableConcept.text = "Help-Button"

* item[+].type = #coding
* item[=].linkId = "550421449447"
* item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].text = "Histopathologisches Grading"
* item[=].required = true
* item[=].answerOption[0].valueCoding = #1 "\"Grad I gut differenziert differenziert o.n.A.\""
* item[=].answerOption[+].valueCoding = #2 "\"Grad II mäßig differenziert mäßig gut differenziert mittelgradig differenziert\""
* item[=].answerOption[+].valueCoding = #3 "\"Grad III schlecht differenziert\""
* item[=].answerOption[+].valueCoding = #4 "\"Grad IV undifferenziert anaplastisch\""
* item[=].answerOption[+].valueCoding = #9 "Grading bzw. Bestimmung des Zelltyps nicht durchgeführt, nicht angegeben oder entfällt"

* item[+].type = #coding
* item[=].linkId = "550421449448"
* item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].text = "Diagnosestellung"
* item[=].required = true
* item[=].answerOption[0].valueCoding = #1 "rein klinisch"
* item[=].answerOption[+].valueCoding = #2 "mit klinischen Hilfsmitteln"
* item[=].answerOption[+].valueCoding = #3 "endoskopisch"
* item[=].answerOption[+].valueCoding = #4 "explorativ-operativ"
* item[=].answerOption[+].valueCoding = #5 "zytologisch"
* item[=].answerOption[+].valueCoding = #6 "bioptisch"
* item[=].answerOption[+].valueCoding = #7 "operativ"
* item[=].answerOption[+].valueCoding = #8 "autoptisch"
* item[=].answerOption[+].valueCoding = #9 "unbekannt"
* item[=].answerOption[=].initialSelected = true
* item[=].item.linkId = "550421449448_helpText"
* item[=].item.type = #display
* item[=].item.text = "Art der Diagnose, die letztendlich zur Diagnosestellung geführt hat."
* item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item.extension.valueCodeableConcept = $questionnaire-item-control#help "Help-Button"
* item[=].item.extension.valueCodeableConcept.text = "Help-Button"

* item[+].type = #coding
* item[=].linkId = "550421449449"
* item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].extension.valueCodeableConcept = $questionnaire-item-control#check-box "Check-box"
* item[=].text = "Behandlung"
* item[=].required = false
* item[=].repeats = true
* item[=].answerOption[0].valueCoding = #00 "sonstige (7)"
* item[=].answerOption[+].valueCoding = #10 "chirurgisch radikal (1)"
* item[=].answerOption[+].valueCoding = #20 "chirurgisch palliativ (2)"
* item[=].answerOption[+].valueCoding = #30 "strahlentherapeutisch (3)"
* item[=].answerOption[+].valueCoding = #40 "chemotherapeutisch (4)"
* item[=].answerOption[+].valueCoding = #50 "hormonal (5)"
* item[=].answerOption[+].valueCoding = #60 "immunotherapeutisch (6)"