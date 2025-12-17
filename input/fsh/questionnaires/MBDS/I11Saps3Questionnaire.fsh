Alias: $usage-context-type = http://terminology.hl7.org/CodeSystem/usage-context-type
Alias: $unitsofmeasure = http://unitsofmeasure.org

Instance: LKFSAPS3Questionnaire
InstanceOf: Questionnaire
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2024-07-12T00:00:00+00:00"
* version = "1.0"
* name = "SAPS3Questionnaire"
* title = "SAPS3 Questionnaire"
* status = #active
* date = "2024-07-12"
* description = "A questionnaire for collecting SAPS3 data"

* item[0].linkId = "saps3-set"
* item[0].text = "SAPS3 Data Set"
* item[0].type = #group

* item[0].item[+].linkId = "saps3-02"
* item[0].item[=].text = "Krankenanstaltennummer"
* item[0].item[=].type = #string

* item[0].item[+].linkId = "saps3-03"
* item[0].item[=].text = "Aufnahmezahl"
* item[0].item[=].type = #string

* item[0].item[+].linkId = "saps3-04"
* item[0].item[=].text = "Datensatz-ID"
* item[0].item[=].type = #string

* item[0].item[+].linkId = "saps3-05"
* item[0].item[=].text = "Aufnahme-/Kontaktdatum"
* item[0].item[=].type = #date

* item[0].item[+].linkId = "saps3-06"
* item[0].item[=].text = "Bettenführende Hauptkostenstelle – Positionsnummer"
* item[0].item[=].type = #string

* item[0].item[+].linkId = "saps3-07"
* item[0].item[=].text = "Erhebungsdatum"
* item[0].item[=].type = #date

* item[0].item[+].linkId = "saps3-08"
* item[0].item[=].text = "Akute Infektion bei Aufnahme; Akute Infektion bei Aufnahme - Nosokomiale Infektion"
* item[0].item[=].type = #boolean

* item[0].item[+].linkId = "saps3-08a"
* item[0].item[=].text = "Akute Infektion bei Aufnahme; Akute Infektion bei Aufnahme - Respiratorische Infektion"
* item[0].item[=].type = #boolean

* item[0].item[+].linkId = "saps3-09"
* item[0].item[=].text = "Aufnahmegrund: Anderer, nicht klassifiziert"
* item[0].item[=].type = #boolean

* item[0].item[+].linkId = "saps3-10"
* item[0].item[=].text = "Aufnahmegrund: Basispflege und Observanz"
* item[0].item[=].type = #coding
* item[0].item[=].answerOption[0].valueCoding.code = #0
* item[0].item[=].answerOption[0].valueCoding.display = "Kein Aufnahmegrund: Basispflege und Observanz/nicht erhoben"
* item[0].item[=].answerOption[1].valueCoding.code = #1
* item[0].item[=].answerOption[1].valueCoding.display = "Präoperative/Präinterventionelle Optimierung"
* item[0].item[=].answerOption[2].valueCoding.code = #2
* item[0].item[=].answerOption[2].valueCoding.display = "Medizinische Überwachung"
* item[0].item[=].answerOption[3].valueCoding.code = #3
* item[0].item[=].answerOption[3].valueCoding.display = "Postoperative/Postinterventionelle Überwachung"


* item[0].item[+].linkId = "saps3-11"
* item[0].item[=].text = "Aufnahmegrund: Gastrointestinal"
* item[0].item[=].type = #coding
* item[0].item[=].answerOption[0].valueCoding.code = #0
* item[0].item[=].answerOption[0].valueCoding.display = "Kein Aufnahmegrund: Gastrointestinal/nicht erhoben"
* item[0].item[=].answerOption[1].valueCoding.code = #1
* item[0].item[=].answerOption[1].valueCoding.display = "Blutung: Blutung im oberen oder unteren Gastrointestinaltrakt"
* item[0].item[=].answerOption[2].valueCoding.code = #2
* item[0].item[=].answerOption[2].valueCoding.display = "Akutes Abdomen: Assoziiert mit einer Infektion, Perforation, Ischämie im oberen oder unteren Gastrointestinaltrakt. Exkludiert die schwere Pankreatitis."
* item[0].item[=].answerOption[3].valueCoding.code = #3
* item[0].item[=].answerOption[3].valueCoding.display = "Schwere Pankreatitis"
* item[0].item[=].answerOption[4].valueCoding.code = #4
* item[0].item[=].answerOption[4].valueCoding.display = "Andere"

* item[0].item[+].linkId = "saps3-12"
* item[0].item[=].text = "Aufnahmegrund: Hämatologisch"
* item[0].item[=].type = #coding
* item[0].item[=].answerOption[0].valueCoding.code = #0
* item[0].item[=].answerOption[0].valueCoding.display = "Kein Aufnahmegrund: Hämatologisch/nicht erhoben"
* item[0].item[=].answerOption[1].valueCoding.code = #1
* item[0].item[=].answerOption[1].valueCoding.display = "Haemorrhagisches Syndrom/DIC"
* item[0].item[=].answerOption[2].valueCoding.code = #2
* item[0].item[=].answerOption[2].valueCoding.display = "Schwere Hämolyse"
* item[0].item[=].answerOption[3].valueCoding.code = #3
* item[0].item[=].answerOption[3].valueCoding.display = "Andere"


* item[0].item[+].linkId = "saps3-13"
* item[0].item[=].text = "Aufnahmegrund: Kardiovaskulär"
* item[0].item[=].type = #coding
* item[0].item[=].answerOption[0].valueCoding.code = #0
* item[0].item[=].answerOption[0].valueCoding.display = "Kein Aufnahmegrund: Kardiovaskulär/nicht erhoben"
* item[0].item[=].answerOption[1].valueCoding.code = #1
* item[0].item[=].answerOption[1].valueCoding.display = "Herzstillstand: Mit kardiopulmonaler Reanimation vor der Aufnahme auf die Intensivstation. Die Reanimation muss enthalten: Herzmassage/Defibrillation"
* item[0].item[=].answerOption[2].valueCoding.code = #2
* item[0].item[=].answerOption[2].valueCoding.display = "Schock: Hypovolämischer: durch externe Verluste oder interne Sequestration"
* item[0].item[=].answerOption[3].valueCoding.code = #3
* item[0].item[=].answerOption[3].valueCoding.display = "Schock: Hämorrhagischer"
* item[0].item[=].answerOption[4].valueCoding.code = #4
* item[0].item[=].answerOption[4].valueCoding.display = "Schock: Septischer"
* item[0].item[=].answerOption[5].valueCoding.code = #5
* item[0].item[=].answerOption[5].valueCoding.display = "Schock: Kardiogener"
* item[0].item[=].answerOption[6].valueCoding.code = #6
* item[0].item[=].answerOption[6].valueCoding.display = "Schock: Anaphylaktischer"
* item[0].item[=].answerOption[7].valueCoding.code = #7
* item[0].item[=].answerOption[7].valueCoding.display = "Schock: Gemischt und undefiniert"
* item[0].item[=].answerOption[8].valueCoding.code = #8
* item[0].item[=].answerOption[8].valueCoding.display = "Thoraxschmerzen: Mit EKG und/oder serologischen Veränderungen, welche mit Angina pectoris oder einem akuten Myokardinfarkt kompatibel sind"
* item[0].item[=].answerOption[9].valueCoding.code = #9
* item[0].item[=].answerOption[9].valueCoding.display = "Hypertensive Krise"
* item[0].item[=].answerOption[10].valueCoding.code = #10
* item[0].item[=].answerOption[10].valueCoding.display = "Rhythmusstörungen: durch Herzfrequenz oder Herzleitungsstörungen"
* item[0].item[=].answerOption[11].valueCoding.code = #11
* item[0].item[=].answerOption[11].valueCoding.display = "Herzinsuffizienz (ohne Schock): Links-, Rechts- oder Global-Insuffizienz"
* item[0].item[=].answerOption[12].valueCoding.code = #12
* item[0].item[=].answerOption[12].valueCoding.display = "Andere"


* item[0].item[+].linkId = "saps3-14"
* item[0].item[=].text = "Aufnahmegrund: Leber"
* item[0].item[=].type = #coding
* item[0].item[=].answerOption[0].valueCoding.code = #0
* item[0].item[=].answerOption[0].valueCoding.display = "Kein Aufnahmegrund: Leber/nicht erhoben"
* item[0].item[=].answerOption[1].valueCoding.code = #1
* item[0].item[=].answerOption[1].valueCoding.display = "Leberversagen: Leberversagen mit metabolischen Störungen oder hepatischer Enzephalopathie"
* item[0].item[=].answerOption[2].valueCoding.code = #2
* item[0].item[=].answerOption[2].valueCoding.display = "Andere"


* item[0].item[+].linkId = "saps3-15"
* item[0].item[=].text = "Aufnahmegrund: Metabolisch"
* item[0].item[=].type = #coding
* item[0].item[=].answerOption[0].valueCoding.code = #0
* item[0].item[=].answerOption[0].valueCoding.display = "Kein Aufnahmegrund: Metabolisch/nicht erhoben"
* item[0].item[=].answerOption[1].valueCoding.code = #1
* item[0].item[=].answerOption[1].valueCoding.display = "Säure-Basen Haushalts- und Elektrolytstörungen"
* item[0].item[=].answerOption[2].valueCoding.code = #2
* item[0].item[=].answerOption[2].valueCoding.display = "Hypo- und Hyperthermie"
* item[0].item[=].answerOption[3].valueCoding.code = #3
* item[0].item[=].answerOption[3].valueCoding.display = "Hypo- und Hyperglykämie: Inkludiert diabetisches Koma"
* item[0].item[=].answerOption[4].valueCoding.code = #4
* item[0].item[=].answerOption[4].valueCoding.display = "Andere"


* item[0].item[+].linkId = "saps3-16"
* item[0].item[=].text = "Aufnahmegrund: Neurologisch"
* item[0].item[=].type = #coding
* item[0].item[=].answerOption[0].valueCoding.code = #0
* item[0].item[=].answerOption[0].valueCoding.display = "Kein Aufnahmegrund: Neurologisch/nicht erhoben"
* item[0].item[=].answerOption[1].valueCoding.code = #1
* item[0].item[=].answerOption[1].valueCoding.display = "Koma, Stupor, Konfusion, Agitation, Delirium"
* item[0].item[=].answerOption[2].valueCoding.code = #2
* item[0].item[=].answerOption[2].valueCoding.display = "Epileptischer Anfall"
* item[0].item[=].answerOption[3].valueCoding.code = #3
* item[0].item[=].answerOption[3].valueCoding.display = "Fokales neurologisches Defizit: Hemiplegie, Paraplegie, Tetraplegie"
* item[0].item[=].answerOption[4].valueCoding.code = #4
* item[0].item[=].answerOption[4].valueCoding.display = "Intrakranieller Masseneffekt (Hirndruck)"
* item[0].item[=].answerOption[5].valueCoding.code = #5
* item[0].item[=].answerOption[5].valueCoding.display = "Andere"


* item[0].item[+].linkId = "saps3-17"
* item[0].item[=].text = "Aufnahmegrund: Renal"
* item[0].item[=].type = #coding
* item[0].item[=].answerOption[0].valueCoding.code = #0
* item[0].item[=].answerOption[0].valueCoding.display = "Kein Aufnahmegrund: Renal/nicht erhoben"
* item[0].item[=].answerOption[1].valueCoding.code = #1
* item[0].item[=].answerOption[1].valueCoding.display = "Prärenales ANV: Akutes Nierenversagen welches hämodynamisch, also durch Hypovolämie oder Schock ausgelöst wird"
* item[0].item[=].answerOption[2].valueCoding.code = #2
* item[0].item[=].answerOption[2].valueCoding.display = "Obstruktives ANV: Postrenales Nierenversagen welches durch Obstruktion der intrarenalen oder der ableitenden Harnwege ausgelöst wird"
* item[0].item[=].answerOption[3].valueCoding.code = #3
* item[0].item[=].answerOption[3].valueCoding.display = "Organisches ANV: Akutes Nierenversagen welches von intraparenchymalen Läsionen, also im Bereich der renalen Gefäße, der Glomeruli oder des Interstitiums, ausgelöst wird"
* item[0].item[=].answerOption[4].valueCoding.code = #4
* item[0].item[=].answerOption[4].valueCoding.display = "Andere"


* item[0].item[+].linkId = "saps3-18"
* item[0].item[=].text = "Aufnahmegrund: Respiratorisch"
* item[0].item[=].type = #coding
* item[0].item[=].answerOption[0].valueCoding.code = #0
* item[0].item[=].answerOption[0].valueCoding.display = "Kein Aufnahmegrund: Respiratorisch/nicht erhoben"
* item[0].item[=].answerOption[1].valueCoding.code = #1
* item[0].item[=].answerOption[1].valueCoding.display = "ALI und ARDS: Syndrom der akuten Inflammation und erhöhten Permeabilität, assoziiert mit klinischen, radiologischen und physiologischen Abnormalitäten: arterielle Hypoxämie, welche nicht auf eine Sauerstofftherapie reagiert (ALI: PaO2/FiO2 <300 mm Hg; ARDS: PaO2/FiO2 <200 mm Hg) und diffuse bilaterale radiologische Infiltrate ohne Zeichen eines Herzversagens oder einer pulmonalen Hypertension"
* item[0].item[=].answerOption[2].valueCoding.code = #2
* item[0].item[=].answerOption[2].valueCoding.display = "Respiratorisches Versagen bei COPD: Obstruktive oder restriktive Form der COPD"
* item[0].item[=].answerOption[3].valueCoding.code = #3
* item[0].item[=].answerOption[3].valueCoding.display = "Andere: Eingeschränkte pulmonale Funktion, weniger ausgeprägt als bei ALI oder ARDS, aufgrund pulmonaler Läsionen oder Pleuritis, welche einer Sauerstoffgabe oder einer mechanischen Beatmung bedürfen"


* item[0].item[+].linkId = "saps3-19"
* item[0].item[=].text = "Aufnahmegrund: Schweres Trauma"
* item[0].item[=].type = #boolean

* item[0].item[+].linkId = "saps3-20"
* item[0].item[=].text = "Aufnahmetyp"
* item[0].item[=].type = #coding
* item[0].item[=].answerOption[0].valueCoding.code = #1
* item[0].item[=].answerOption[0].valueCoding.display = "Geplant: Patient:innen, deren Aufnahme zumindest 12 Stunden im Voraus geplant wurde"
* item[0].item[=].answerOption[1].valueCoding.code = #2
* item[0].item[=].answerOption[1].valueCoding.display = "Ungeplant: Patient:innen, deren Aufnahme komplett ungeplant oder kürzer als 12 Stunden geplant wurde"


* item[0].item[+].linkId = "saps3-21"
* item[0].item[=].text = "Blutbild: Leukozyten (Minimum)"
* item[0].item[=].type = #decimal
* item[0].item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
* item[0].item[=].extension[0].valueCoding.code = #G/L
* item[0].item[=].extension[0].valueCoding.display = #G/L


* item[0].item[+].linkId = "saps3-22"
* item[0].item[=].text = "Blutbild: pH-Wert"
* item[0].item[=].type = #decimal

* item[0].item[+].linkId = "saps3-23"
* item[0].item[=].text = "Blutbild: Thrombozyten (Minimum)"
* item[0].item[=].type = #decimal
* item[0].item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
* item[0].item[=].extension[0].valueCoding.code = #G/L
* item[0].item[=].extension[0].valueCoding.display = #G/L


* item[0].item[+].linkId = "saps3-24"
* item[0].item[=].text = "Chirurgie – Eingriff"
* item[0].item[=].type = #coding
* item[0].item[=].answerOption[0].valueCoding.code = #0
* item[0].item[=].answerOption[0].valueCoding.display = "Keine Chirurgie – Eingriff/nicht erhoben"
* item[0].item[=].answerOption[1].valueCoding.code = #1
* item[0].item[=].answerOption[1].valueCoding.display = "Abdomen: Oberer GI Trakt: Bis zu und inklusive Jejunum"
* item[0].item[=].answerOption[2].valueCoding.code = #2
* item[0].item[=].answerOption[2].valueCoding.display = "Abdomen: Unterer GI Trakt"
* item[0].item[=].answerOption[3].valueCoding.code = #3
* item[0].item[=].answerOption[3].valueCoding.display = "Abdomen: Biliärtrakt: Gallenblase und/oder biliäre Chirurgie"
* item[0].item[=].answerOption[4].valueCoding.code = #4
* item[0].item[=].answerOption[4].valueCoding.display = "Abdomen: Leber-Chirurgie: Leberteilresektion, protosystemische Shunts"
* item[0].item[=].answerOption[5].valueCoding.code = #5
* item[0].item[=].answerOption[5].valueCoding.display = "Abdomen: Pankreas"
* item[0].item[=].answerOption[6].valueCoding.code = #6
* item[0].item[=].answerOption[6].valueCoding.display = "Abdomen: endokrine Chirurgie"
* item[0].item[=].answerOption[7].valueCoding.code = #7
* item[0].item[=].answerOption[7].valueCoding.display = "Extremitäten-Chirurgie"
* item[0].item[=].answerOption[8].valueCoding.code = #8
* item[0].item[=].answerOption[8].valueCoding.display = "Gefäß: Aortenchirurgie: Dissektion, Atherom, Aneurysmen"
* item[0].item[=].answerOption[9].valueCoding.code = #9
* item[0].item[=].answerOption[9].valueCoding.display = "Gefäß: Karotischirurgie"
* item[0].item[=].answerOption[10].valueCoding.code = #10
* item[0].item[=].answerOption[10].valueCoding.display = "Gefäß: Große Gefäße: Chirurgie im Bereich der intrathorakalen oder intraabdominalen Gefäße"
* item[0].item[=].answerOption[11].valueCoding.code = #11
* item[0].item[=].answerOption[11].valueCoding.display = "Gefäß: Periphere Gefäßchirurgie: Chirurgie im Bereich arterieller oder venöser Gefäße, mit oder ohne Bypass. Exkludiert intrakranielle, intrathorakale oder intraabdominale Gefäße"
* item[0].item[=].answerOption[12].valueCoding.code = #12
* item[0].item[=].answerOption[12].valueCoding.display = "Gefäß: Andere"
* item[0].item[=].answerOption[13].valueCoding.code = #13
* item[0].item[=].answerOption[13].valueCoding.display = "Geburtshilflicher Eingriff: Kaiserschnitt, ektopische Schwangerschaft, peri- oder postpartum Blutung, intrauteriner Fruchttod"
* item[0].item[=].answerOption[14].valueCoding.code = #14
* item[0].item[=].answerOption[14].valueCoding.display = "Gynäkologischer Eingriff: Chirurgie des Uterus, Ovarien, Zervix uteri, oder den Genitalien"
* item[0].item[=].answerOption[15].valueCoding.code = #15
* item[0].item[=].answerOption[15].valueCoding.display = "Herz: Klappe: Alle Klappenoperationen ohne gleichzeitiger Koronarchirurgie"
* item[0].item[=].answerOption[16].valueCoding.code = #16
* item[0].item[=].answerOption[16].valueCoding.display = "Herz: Klappe mit CABG: Alle Klappenoperationen mit gleichzeitiger Koronarchirurgie"
* item[0].item[=].answerOption[17].valueCoding.code = #17
* item[0].item[=].answerOption[17].valueCoding.display = "Herz: CABG: Koronar-arterielles Bypass Grafting ohne Klappenchirurgie"
* item[0].item[=].answerOption[18].valueCoding.code = #18
* item[0].item[=].answerOption[18].valueCoding.display = "Herz: Andere: Herzchirurgie für andere Erkrankungen wie perikardialer Erguss, kongenitale Störungen, Ventrikuläres Aneurysma, Neoplasien, Vena-Cava-Clipping oder Einsatz eines Vena-Cava-Filters"
* item[0].item[=].answerOption[19].valueCoding.code = #19
* item[0].item[=].answerOption[19].valueCoding.display = "HNO-Chirurgie"
* item[0].item[=].answerOption[20].valueCoding.code = #20
* item[0].item[=].answerOption[20].valueCoding.display = "Kiefer-Gesichtschirurgie"
* item[0].item[=].answerOption[21].valueCoding.code = #21
* item[0].item[=].answerOption[21].valueCoding.display = "Neurochirurgie: Zerebrovaskuläres Ereignis: Intrakranielles Hämatom oder anderes nicht-traumatisches Ereignis (z.B. Blutung oder Aneurysma)"
* item[0].item[=].answerOption[22].valueCoding.code = #22
* item[0].item[=].answerOption[22].valueCoding.display = "Neurochirurgie: Intrakranieller Tumor"
* item[0].item[=].answerOption[23].valueCoding.code = #23
* item[0].item[=].answerOption[23].valueCoding.display = "Neurochirurgie: Wirbelsäulenchirurgie"
* item[0].item[=].answerOption[24].valueCoding.code = #24
* item[0].item[=].answerOption[24].valueCoding.display = "Neurochirurgie: Andere"
* item[0].item[=].answerOption[25].valueCoding.code = #25
* item[0].item[=].answerOption[25].valueCoding.display = "Thorax-Chirurgie: Pneumektomie"
* item[0].item[=].answerOption[26].valueCoding.code = #26
* item[0].item[=].answerOption[26].valueCoding.display = "Thorax-Chirurgie: Lobektomie"
* item[0].item[=].answerOption[27].valueCoding.code = #27
* item[0].item[=].answerOption[27].valueCoding.display = "Thorax-Chirurgie: Pleurachirurgie: Jede Form der Pleurachirurgie, entweder wegen eines Tumors oder eines anderen Geschehens (Pneumothorax etc.)"
* item[0].item[=].answerOption[28].valueCoding.code = #28
* item[0].item[=].answerOption[28].valueCoding.display = "Thorax-Chirurgie: Andere"
* item[0].item[=].answerOption[29].valueCoding.code = #29
* item[0].item[=].answerOption[29].valueCoding.display = "Trauma: SHT: Chirurgie wegen eines subduralen, epiduralen, intrazerebralen Hämatoms und/oder Schädelfraktur"
* item[0].item[=].answerOption[30].valueCoding.code = #30
* item[0].item[=].answerOption[30].valueCoding.display = "Trauma: Thorax"
* item[0].item[=].answerOption[31].valueCoding.code = #31
* item[0].item[=].answerOption[31].valueCoding.display = "Trauma: Abdomen"
* item[0].item[=].answerOption[32].valueCoding.code = #32
* item[0].item[=].answerOption[32].valueCoding.display = "Trauma: Extremitäten"
* item[0].item[=].answerOption[33].valueCoding.code = #33
* item[0].item[=].answerOption[33].valueCoding.display = "Trauma: Polytrauma"
* item[0].item[=].answerOption[34].valueCoding.code = #34
* item[0].item[=].answerOption[34].valueCoding.display = "Transplantation: Leber"
* item[0].item[=].answerOption[35].valueCoding.code = #35
* item[0].item[=].answerOption[35].valueCoding.display = "Transplantation: Herz"
* item[0].item[=].answerOption[36].valueCoding.code = #36
* item[0].item[=].answerOption[36].valueCoding.display = "Transplantation: Niere"
* item[0].item[=].answerOption[37].valueCoding.code = #37
* item[0].item[=].answerOption[37].valueCoding.display = "Transplantation: Pankreas"
* item[0].item[=].answerOption[38].valueCoding.code = #38
* item[0].item[=].answerOption[38].valueCoding.display = "Transplantation: Lunge"
* item[0].item[=].answerOption[39].valueCoding.code = #39
* item[0].item[=].answerOption[39].valueCoding.display = "Transplantation: Herz/Lunge"
* item[0].item[=].answerOption[40].valueCoding.code = #40
* item[0].item[=].answerOption[40].valueCoding.display = "Transplantation: Niere/Pankreas"
* item[0].item[=].answerOption[41].valueCoding.code = #41
* item[0].item[=].answerOption[41].valueCoding.display = "Transplantation: Andere"
* item[0].item[=].answerOption[42].valueCoding.code = #42
* item[0].item[=].answerOption[42].valueCoding.display = "Andere Eingriffe, nicht klassifiziert"


* item[0].item[+].linkId = "saps3-25"
* item[0].item[=].text = "Chirurgischer Status"
* item[0].item[=].type = #coding
* item[0].item[=].answerOption[0].valueCoding.code = #1
* item[0].item[=].answerOption[0].valueCoding.display = "Elektive Chirurgie: Patient:innen, welche einem chirurgischen Eingriff unterzogen wurden (vor der Aufnahme auf die Intensivstation) welcher länger als 24 Stunden voraus geplant wurde"
* item[0].item[=].answerOption[1].valueCoding.code = #2
* item[0].item[=].answerOption[1].valueCoding.display = "Notfalls-Eingriff: Patient:innen, welche einem chirurgischen Eingriff unterzogen wurden (vor der Aufnahme auf die Intensivstation) welcher kürzer als 24 Stunden voraus geplant wurde"
* item[0].item[=].answerOption[2].valueCoding.code = #3
* item[0].item[=].answerOption[2].valueCoding.display = "Kein chirurgischer Eingriff"


* item[0].item[+].linkId = "saps3-26"
* item[0].item[=].text = "Glasgow Coma Scale: motorische Reaktion"
* item[0].item[=].type = #coding
* item[0].item[=].answerOption[0].valueCoding.code = #1
* item[0].item[=].answerOption[0].valueCoding.display = "Keine Antwort"
* item[0].item[=].answerOption[1].valueCoding.code = #2
* item[0].item[=].answerOption[1].valueCoding.display = "Streckung/Dezerebrationssteifigkeit auf Schmerz"
* item[0].item[=].answerOption[2].valueCoding.code = #3
* item[0].item[=].answerOption[2].valueCoding.display = "Abnormale Beugung"
* item[0].item[=].answerOption[3].valueCoding.code = #4
* item[0].item[=].answerOption[3].valueCoding.display = "Ungezielte Schmerzabwehr durch Beugung"
* item[0].item[=].answerOption[4].valueCoding.code = #5
* item[0].item[=].answerOption[4].valueCoding.display = "Gezielte Schmerzabwehr"
* item[0].item[=].answerOption[5].valueCoding.code = #6
* item[0].item[=].answerOption[5].valueCoding.display = "Befolgt verbale Aufforderung"


* item[0].item[+].linkId = "saps3-27"
* item[0].item[=].text = "Glasgow Coma Scale: verbale Reaktion"
* item[0].item[=].type = #coding
* item[0].item[=].answerOption[0].valueCoding.code = #1
* item[0].item[=].answerOption[0].valueCoding.display = "Keine Antwort"
* item[0].item[=].answerOption[1].valueCoding.code = #2
* item[0].item[=].answerOption[1].valueCoding.display = "Unverständliche Laute (keine Wörter)"
* item[0].item[=].answerOption[2].valueCoding.code = #3
* item[0].item[=].answerOption[2].valueCoding.display = "Unangebrachte Phrasen"
* item[0].item[=].answerOption[3].valueCoding.code = #4
* item[0].item[=].answerOption[3].valueCoding.display = "Desorientiert, betreibt Konversation"
* item[0].item[=].answerOption[4].valueCoding.code = #5
* item[0].item[=].answerOption[4].valueCoding.display = "Orientiert, betreibt Konversation"


* item[0].item[+].linkId = "saps3-28"
* item[0].item[=].text = "Glasgow Coma Scale: visuelle Reaktion"
* item[0].item[=].type = #coding
* item[0].item[=].answerOption[0].valueCoding.code = #1
* item[0].item[=].answerOption[0].valueCoding.display = "Keine Antwort"
* item[0].item[=].answerOption[1].valueCoding.code = #2
* item[0].item[=].answerOption[1].valueCoding.display = "Auf Schmerzreize"
* item[0].item[=].answerOption[2].valueCoding.code = #3
* item[0].item[=].answerOption[2].valueCoding.display = "Befolgt Aufforderung"
* item[0].item[=].answerOption[3].valueCoding.code = #4
* item[0].item[=].answerOption[3].valueCoding.display = "Spontan"


* item[0].item[+].linkId = "saps3-29"
* item[0].item[=].text = "Herzfrequenz (Maximum)"
* item[0].item[=].type = #integer
* item[0].item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
* item[0].item[=].extension[0].valueCoding.code = #Schläge/min
* item[0].item[=].extension[0].valueCoding.display = #Schläge/min


* item[0].item[+].linkId = "saps3-30"
* item[0].item[=].text = "Koexistierende Erkrankungen"
* item[0].item[=].type = #group
* item[0].item[=].item[+].linkId = "saps3-30-1"
* item[0].item[=].item[=].text = "Hämatologische Erkrankung: Lymphom, akute Leukämie oder Multiples Myelom"
* item[0].item[=].item[=].type = #boolean
* item[0].item[=].item[+].linkId = "saps3-30-2"
* item[0].item[=].item[=].text = "HIV-positiv (kein AIDS): Positive HIV-Serologie, aber keine AIDS-Kriterien nach den CDC/WHO-Definitionen; CD4-Zellen sind, sofern gemessen, > 200"
* item[0].item[=].item[=].type = #boolean
* item[0].item[=].item[+].linkId = "saps3-30-3"
* item[0].item[=].item[=].text = "AIDS: Patient:innen, welche die CDC/WHO-Definitionen für AIDS erfüllen, wie HIV-positive Patient:innen mit klinischen Komplikationen wie Pneumocystis carinii Pneumonie, Kaposi-Sarkom, Lymphom, Tuberkulose oder Toxoplasmose, oder CD4-Zellen sind, sofern gemessen, < 200"
* item[0].item[=].item[=].type = #boolean
* item[0].item[=].item[+].linkId = "saps3-30-4"
* item[0].item[=].item[=].text = "Metastasierendes Malignom: Neoplasma mit Metastasen, bestätigt durch radiologische (z.B. CT), chirurgische oder andere Methoden"
* item[0].item[=].item[=].type = #boolean
* item[0].item[=].item[+].linkId = "saps3-30-5"
* item[0].item[=].item[=].text = "Malignom, nicht metastasierend: Neoplasma ohne Metastasen, bestätigt durch radiologische (z.B. CT), chirurgische oder andere Methoden"
* item[0].item[=].item[=].type = #boolean
* item[0].item[=].item[+].linkId = "saps3-30-6"
* item[0].item[=].item[=].text = "Leberzirrhose: Dokumentiert durch Biopsie oder klinischen Symptomen portaler Hypertension, Präsenz ösophagealer oder gastrischer Varizen (bestätigt durch Endoskopie oder Chirurgie) oder der Demonstration eines retrograden Flusses in der Vena lienalis, Episoden hepatischer Enzephalopathie oder einer Anamnese von Varizenblutungen"
* item[0].item[=].item[=].type = #boolean
* item[0].item[=].item[+].linkId = "saps3-30-7"
* item[0].item[=].item[=].text = "Herzinsuffizienz NYHA II: Müdigkeit, Dyspnoe oder Angina pectoris, welche mit normaler Betätigung einhergehen"
* item[0].item[=].item[=].type = #boolean
* item[0].item[=].item[+].linkId = "saps3-30-8"
* item[0].item[=].item[=].text = "Herzinsuffizienz NYHA III: Müdigkeit, Dyspnoe oder Angina pectoris, welche bereits bei mittelschwerer Betätigung auftreten"
* item[0].item[=].item[=].type = #boolean
* item[0].item[=].item[+].linkId = "saps3-30-9"
* item[0].item[=].item[=].text = "Herzinsuffizienz NYHA IV: Müdigkeit, Dyspnoe oder Angina pectoris, welche mit leichter Betätigung einhergehen. Diese Patient:innen können nur geringe Wegstrecken zu Fuß zurücklegen oder andere Tätigkeiten alleine durchführen."
* item[0].item[=].item[=].type = #boolean
* item[0].item[=].item[+].linkId = "saps3-30-10"
* item[0].item[=].item[=].text = "Chronische respiratorische Insuffizienz: Permanente Atemnot bei leichter Aktivität aufgrund pulmonaler Erkrankungen (chronisch restriktiver oder obstruktiver Natur). Funktionell sind diese Patient:innen unfähig, alleine Stiegen zu steigen, zu arbeiten oder den Haushalt zu verrichten. Sollte auch dokumentiert werden, wenn eines der folgenden Symptome vorliegt: chronische Hypoxie, Hyperkapnie, sekundäre Polyzythämie oder pulmonale Hypertonension mit systolischem Druck > 40 mmHg) oder Respirator-Abhängigkeit."
* item[0].item[=].item[=].type = #boolean
* item[0].item[=].item[+].linkId = "saps3-30-11"
* item[0].item[=].item[=].text = "Chronische renale Insuffizienz: Chronische renale Therapie (Hämodialyse oder Peritonealdialyse) bei irreversiblen renalen Erkrankungen oder Anamnese einer chronischen renalen Insuffizienz"
* item[0].item[=].item[=].type = #boolean
* item[0].item[=].item[+].linkId = "saps3-30-12"
* item[0].item[=].item[=].text = "Alkoholismus: Alkoholeinfuhr von mehr als 80 g pro Tag über einen Zeitraum von mindestens 6 Monaten vor der Aufnahme, welche klinische Symptome verursacht wie: Logorrhoe, Enzephalopathie, andere neurologische Erkrankungen, schlechter Ernährungszustand oder Leberzirrhose"
* item[0].item[=].item[=].type = #boolean
* item[0].item[=].item[+].linkId = "saps3-30-13"
* item[0].item[=].item[=].text = "Drogensucht: Drogenabhängigkeit aufgrund intravenöser Drogeneinnahme (Kokain, Opiate und Derivate) für mindestens 6 Monate vor der Aufnahme. Patient:innen im Methadonprogramm ohne andere Drogenkonsumation fallen nicht darunter."
* item[0].item[=].item[=].type = #boolean
* item[0].item[=].item[+].linkId = "saps3-30-14"
* item[0].item[=].item[=].text = "Immunsuppression, andere: Der:die Patient:in weist eine Erkrankung auf, welche genügend fortgeschritten ist, um die Infektionsresistenz zu unterdrücken: Schwere Mangelernährung, angeborene Defektzustände des humoralen oder zellulären Systems. Exkludiert AIDS oder HIV-Infektion, metastasiernde oder hämatologische Neoplasien, Chemotherapie, Radiotherapie und Steroidbehandlung."
* item[0].item[=].item[=].type = #boolean
* item[0].item[=].item[+].linkId = "saps3-30-15"
* item[0].item[=].item[=].text = "Insulinpflichtiger Diabetes mellitus: Patient:innen, welche tägliche Insulingaben (Injektionen) benötigen"
* item[0].item[=].item[=].type = #boolean
* item[0].item[=].item[+].linkId = "saps3-30-16"
* item[0].item[=].item[=].text = "Nicht-insulinpflichtiger Diabetes mellitus: Patient:innen mit diagnostiziertem Diabetes mellitus, welcher durch diätetische Maßnahmen und/oder Medikamente kontrolliert werden kann. Diese Patient:innen benötigen nicht regelmäßig Insulin."
* item[0].item[=].item[=].type = #boolean
* item[0].item[=].item[+].linkId = "saps3-30-17"
* item[0].item[=].item[=].text = "Steroide Behandlung: Tägliche Gabe von >= 0,3mg/kg KG Prednisolon oder äquivalente Dosierungen anderer Kortikoide mindestens 6 Monate vor der Aufnahme. Topische Steroide oder Steroide per Inhalationen gehören nicht dazu."
* item[0].item[=].item[=].type = #boolean
* item[0].item[=].item[+].linkId = "saps3-30-18"
* item[0].item[=].item[=].text = "Bestrahlung: Strahlentherapie während der letzten 6 Monate vor der Aufnahme. Exkludiert Strahlentherapie für nicht-invasive Tumoren, enterale oder parenterale Radioisotop-Therapie, radioaktive Implantate, Therapie zur Verhinderung heterotopischer Knochenformationen."
* item[0].item[=].item[=].type = #boolean
* item[0].item[=].item[+].linkId = "saps3-30-19"
* item[0].item[=].item[=].text = "Chemotherapie: Chemotherapie in den 6 Monaten vor der Aufnahme, inkludiert immunsuppressierende Therapie für Malignome, Rheumatoide Arthritis oder entzündliche Darmerkrankungen (außer reine Behandlung mit Steroiden)."
* item[0].item[=].item[=].type = #boolean
* item[0].item[=].item[+].linkId = "saps3-30-20"
* item[0].item[=].item[=].text = "COPD: Chronisch obstruktive pulmonale Erkrankungen aufgrund chronischer Bronchitis und/oder Emphysem"
* item[0].item[=].item[=].type = #boolean
* item[0].item[=].item[+].linkId = "saps3-30-21"
* item[0].item[=].item[=].text = "Arterielle Hypertonension: Anamnese eines systolischen Blutdrucks >= 160 mmHg und/oder eines diastolischen Blutdrucks >= 95 mmHg, behandelt oder unbehandelt"
* item[0].item[=].item[=].type = #boolean





* item[0].item[+].linkId = "saps3-31"
* item[0].item[=].text = "Körpertemperatur (Maximum)"
* item[0].item[=].type = #decimal
* item[0].item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
* item[0].item[=].extension[0].valueCoding.code = #°Celsius
* item[0].item[=].extension[0].valueCoding.display = "°Celsius"


* item[0].item[+].linkId = "saps3-32"
* item[0].item[=].text = "Mechanische Beatmung"
* item[0].item[=].type = #boolean

* item[0].item[+].linkId = "saps3-33"
* item[0].item[=].text = "Sauerstoff-Partialdruck arteriell (PaO2)"
* item[0].item[=].type = #decimal
* item[0].item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
* item[0].item[=].extension[0].valueCoding.code = #mmHG
* item[0].item[=].extension[0].valueCoding.display = "mmHG"


* item[0].item[+].linkId = "saps3-34"
* item[0].item[=].text = "Sauerstoffkonzentration inspiratorisch (FiO2)"
* item[0].item[=].type = #decimal
* item[0].item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
* item[0].item[=].extension[0].valueCoding.code = #%
* item[0].item[=].extension[0].valueCoding.display = "%"


* item[0].item[+].linkId = "saps3-35"
* item[0].item[=].text = "Serum: Bilirubin (Maximum)"
* item[0].item[=].type = #decimal
* item[0].item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
* item[0].item[=].extension[0].valueCoding.code = #mg/dL
* item[0].item[=].extension[0].valueCoding.display = "mg/dL"


* item[0].item[+].linkId = "saps3-36"
* item[0].item[=].text = "Serum: Kreatinin (Maximum)"
* item[0].item[=].type = #decimal
* item[0].item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
* item[0].item[=].extension[0].valueCoding.code = #mg/dL
* item[0].item[=].extension[0].valueCoding.display = "mg/dL"


* item[0].item[+].linkId = "saps3-37"
* item[0].item[=].text = "Systolischer Blutdruck (Minimum)"
* item[0].item[=].type = #decimal
* item[0].item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
* item[0].item[=].extension[0].valueCoding.code = #mmHg
* item[0].item[=].extension[0].valueCoding.display = "mmHg"


* item[0].item[+].linkId = "saps3-38"
* item[0].item[=].text = "Therapeutische Maßnahmen (vor IBS)"
* item[0].item[=].type = #group
* item[0].item[=].item[0].linkId = "saps3-38-1"
* item[0].item[=].item[0].text = "CPR: Herzstillstand mit kardiopulmonaler Reanimation vor der Aufnahme auf die Intensivstation. Die Reanimation muss enthalten: Thoraxkompressionen, Herzmassage oder Defibrillation."
* item[0].item[=].item[0].type = #boolean
* item[0].item[=].item[1].linkId = "saps3-38-2"
* item[0].item[=].item[1].text = "Vasoaktive Medikamente: Kontinuierlicher Einsatz von Vasopressoren, um den Blutdruck aufrechtzuerhalten (Adrenalin, Noradrenalin, Dobutamin in jeder Dosierung, Dopamin >5 μg/kgKG/ min), für mindestens eine Stunde"
* item[0].item[=].item[1].type = #boolean
* item[0].item[=].item[2].linkId = "saps3-38-3"
* item[0].item[=].item[2].text = "Mechanische Beatmung: Invasive oder nicht-invasive Beatmung. Nicht inkludiert ist die alleinige Sauerstoffgabe über eine Venturi-Maske oder Nasenbrille."
* item[0].item[=].item[2].type = #boolean


* item[0].item[+].linkId = "saps3-39"
* item[0].item[=].text = "Zutransferierung"
* item[0].item[=].type = #coding
* item[0].item[=].answerOption[0].valueCoding.code = #1
* item[0].item[=].answerOption[0].valueCoding.display = "Bettenstation: Der:die Patient:in wurde von einer Normalstation entweder derselben oder einer anderen Krankenanstalt zurtransferiert."
* item[0].item[=].answerOption[1].valueCoding.code = #2
* item[0].item[=].answerOption[1].valueCoding.display = "Notaufnahme: Der:die Patient:in wurde von der Notaufnahme entweder derselben oder einer anderen Krankenanstalt zurtransferiert."
* item[0].item[=].answerOption[2].valueCoding.code = #3
* item[0].item[=].answerOption[2].valueCoding.display = "Andere Intensivstation: Der:die Patient:in wurde von einer anderen Intensivstation entweder derselben oder einer anderen Krankenanstalt zurtransferiert."
* item[0].item[=].answerOption[3].valueCoding.code = #4
* item[0].item[=].answerOption[3].valueCoding.display = "IMCU: Der:die Patient:in wurde von einer Intermediate Care Unit entweder derselben oder einer anderen Krankenanstalt zurtransferiert."
* item[0].item[=].answerOption[4].valueCoding.code = #5
* item[0].item[=].answerOption[4].valueCoding.display = "OP: Der:die Patient:in wurde von einem Operationssaal zurtransferiert."
* item[0].item[=].answerOption[5].valueCoding.code = #6
* item[0].item[=].answerOption[5].valueCoding.display = "Aufwachraum: Der:die Patient:in wurde von einem Aufwachraum zurtransferiert."
* item[0].item[=].answerOption[6].valueCoding.code = #7
* item[0].item[=].answerOption[6].valueCoding.display = "Andere: Der:die Patient:in wurde von anderen Lokalisationen aus auf die Intensivstation zurtransferiert."

