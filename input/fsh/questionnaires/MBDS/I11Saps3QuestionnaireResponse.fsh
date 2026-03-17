Instance: Test2SAPS3QuestionnaireResponse1
InstanceOf: MopedQuestionnaireResponseFallbezogen
Usage: #example
* questionnaire = Canonical(LKFSAPS3Questionnaire)
* status = #completed
* subject = Reference(PJ1Patient) 
* authored = "2024-09-16T19:39:58.676Z"
* encounter = Reference(PJ1Encounter)
* author = Reference(OrganizationHerzJesuKrankenhaus)
* item[0].linkId = "saps3-02"
* item[=].text = "Krankenanstaltennummer"
* item[=].answer.valueString = "K427"
* item[+].linkId = "saps3-03"
* item[=].text = "Aufnahmezahl"
* item[=].answer.valueString = "324200063"
//* item[+].linkId = "saps3-04"
//* item[=].text = "Datensatz-ID"
//* item[=].answer.valueString = 
* item[+].linkId = "saps3-05"
* item[=].text = "Aufnahme-/Kontaktdatum"
* item[=].answer.valueDate = "2024-08-08"
* item[+].linkId = "saps3-06"
* item[=].text = "Bettenführende Hauptkostenstelle – Positionsnummer"
* item[=].answer.valueString = "2"
* item[+].linkId = "saps3-07"
* item[=].text = "Erhebungsdatum"
* item[=].answer.valueDate = "2024-08-08"
* item[+].linkId = "saps3-08"
* item[=].text = "Akute Infektion bei Aufnahme; Akute Infektion bei Aufnahme - Nosokomiale Infektion"
* item[=].answer.valueBoolean = false
* item[+].linkId = "saps3-08a"
* item[=].text = "Akute Infektion bei Aufnahme; Akute Infektion bei Aufnahme - Respiratorische Infektion"
* item[=].answer.valueBoolean = false
* item[+].linkId = "saps3-09"
* item[=].text = "Aufnahmegrund: Anderer, nicht klassifiziert"
* item[=].answer.valueBoolean = false
* item[+].linkId = "saps3-10"
* item[=].text = "Aufnahmegrund: Basispflege und Observanz"
* item[=].answer.valueCoding = #2 "Medizinische Überwachung"
* item[+].linkId = "saps3-11"
* item[=].text = "Aufnahmegrund: Gastrointestinal"
* item[=].answer.valueCoding = #0 "Kein Aufnahmegrund: Gastrointestinal/nicht erhoben"
* item[+].linkId = "saps3-12"
* item[=].text = "Aufnahmegrund: Hämatologisch"
* item[=].answer.valueCoding = #0 "Kein Aufnahmegrund: Hämatologisch/nicht erhoben"
* item[+].linkId = "saps3-13"
* item[=].text = "Aufnahmegrund: Kardiovaskulär"
* item[=].answer.valueCoding = #10 "Rhythmusstörungen: durch Herzfrequenz oder Herzleitungsstörungen"
* item[+].linkId = "saps3-14"
* item[=].text = "Aufnahmegrund: Leber"
* item[=].answer.valueCoding = #0 "Kein Aufnahmegrund: Leber/nicht erhoben"
* item[+].linkId = "saps3-15"
* item[=].text = "Aufnahmegrund: Metabolisch"
* item[=].answer.valueCoding = #0 "Kein Aufnahmegrund: Metabolisch/nicht erhoben"
* item[+].linkId = "saps3-16"
* item[=].text = "Aufnahmegrund: Neurologisch"
* item[=].answer.valueCoding = #0 "Kein Aufnahmegrund: Neurologisch/nicht erhoben"
* item[+].linkId = "saps3-17"
* item[=].text = "Aufnahmegrund: Renal"
* item[=].answer.valueCoding = #0 "Kein Aufnahmegrund: Renal/nicht erhoben"
* item[+].linkId = "saps3-18"
* item[=].text = "Aufnahmegrund: Respiratorisch"
* item[=].answer.valueCoding = #0 "Kein Aufnahmegrund: Respiratorisch/nicht erhoben"
* item[+].linkId = "saps3-19"
* item[=].text = "Aufnahmegrund: Schweres Trauma"
* item[=].answer.valueBoolean = false
* item[+].linkId = "saps3-20"
* item[=].text = "Aufnahmetyp"
* item[=].answer.valueCoding = #2 "Ungeplant: Patient:innen, deren Aufnahme komplett ungeplant oder kürzer als 12 Stunden geplant wurde"
* item[+].linkId = "saps3-21"
* item[=].text = "Blutbild: Leukozyten (Minimum)"
* item[=].answer.valueDecimal = 17
* item[+].linkId = "saps3-22"
* item[=].text = "Blutbild: pH-Wert"
* item[=].answer.valueDecimal = 7.2
* item[+].linkId = "saps3-23"
* item[=].text = "Blutbild: Thrombozyten (Minimum)"
* item[=].answer.valueDecimal = 488
* item[+].linkId = "saps3-24"
* item[=].text = "Chirurgie – Eingriff"
* item[=].answer.valueCoding = #0 "Keine Chirurgie – Eingriff/nicht erhoben"
* item[+].linkId = "saps3-25"
* item[=].text = "Chirurgischer Status"
* item[=].answer.valueCoding = #3 "Kein chirurgischer Eingriff"
* item[+].linkId = "saps3-26"
* item[=].text = "Glasgow Coma Scale: motorische Reaktion"
* item[=].answer.valueCoding = #6 "Befolgt verbale Aufforderung"
* item[+].linkId = "saps3-27"
* item[=].text = "Glasgow Coma Scale: verbale Reaktion"
* item[=].answer.valueCoding = #4 "Desorientiert, betreibt Konversation"
* item[+].linkId = "saps3-28"
* item[=].text = "Glasgow Coma Scale: visuelle Reaktion"
* item[=].answer.valueCoding = #3 "Befolgt Aufforderung"
* item[+].linkId = "saps3-29"
* item[=].text = "Herzfrequenz (Maximum)"
* item[=].answer.valueInteger = 44
* item[+].linkId = "saps3-30"
* item[=].text = "Koexistierende Erkrankungen"
* item[=].item[0].linkId = "saps3-30-1"
* item[=].item[=].text = "Hämatologische Erkrankung: Lymphom, akute Leukämie oder Multiples Myelom"
* item[=].item[=].answer.valueBoolean = true
* item[=].item[+].linkId = "saps3-30-2"
* item[=].item[=].text = "HIV-positiv (kein AIDS): Positive HIV-Serologie, aber keine AIDS-Kriterien nach den CDC/WHO-Definitionen; CD4-Zellen sind, sofern gemessen, > 200"
* item[=].item[=].answer.valueBoolean = false
* item[=].item[+].linkId = "saps3-30-3"
* item[=].item[=].text = "AIDS: Patient:innen, welche die CDC/WHO-Definitionen für AIDS erfüllen, wie HIV-positive Patient:innen mit klinischen Komplikationen wie Pneumocystis carinii Pneumonie, Kaposi-Sarkom, Lymphom, Tuberkulose oder Toxoplasmose, oder CD4-Zellen sind, sofern gemessen, < 200"
* item[=].item[=].answer.valueBoolean = false
* item[=].item[+].linkId = "saps3-30-4"
* item[=].item[=].text = "Metastasierendes Malignom: Neoplasma mit Metastasen, bestätigt durch radiologische (z.B. CT), chirurgische oder andere Methoden"
* item[=].item[=].answer.valueBoolean = false
* item[=].item[+].linkId = "saps3-30-5"
* item[=].item[=].text = "Malignom, nicht metastasierend: Neoplasma ohne Metastasen, bestätigt durch radiologische (z.B. CT), chirurgische oder andere Methoden"
* item[=].item[=].answer.valueBoolean = false
* item[=].item[+].linkId = "saps3-30-6"
* item[=].item[=].text = "Leberzirrhose: Dokumentiert durch Biopsie oder klinischen Symptomen portaler Hypertension, Präsenz ösophagealer oder gastrischer Varizen (bestätigt durch Endoskopie oder Chirurgie) oder der Demonstration eines retrograden Flusses in der Vena lienalis, Episoden hepatischer Enzephalopathie oder einer Anamnese von Varizenblutungen"
* item[=].item[=].answer.valueBoolean = false
* item[=].item[+].linkId = "saps3-30-7"
* item[=].item[=].text = "Herzinsuffizienz NYHA II: Müdigkeit, Dyspnoe oder Angina pectoris, welche mit normaler Betätigung einhergehen"
* item[=].item[=].answer.valueBoolean = false
* item[=].item[+].linkId = "saps3-30-8"
* item[=].item[=].text = "Herzinsuffizienz NYHA III: Müdigkeit, Dyspnoe oder Angina pectoris, welche bereits bei mittelschwerer Betätigung auftreten"
* item[=].item[=].answer.valueBoolean = false
* item[=].item[+].linkId = "saps3-30-9"
* item[=].item[=].text = "Herzinsuffizienz NYHA IV: Müdigkeit, Dyspnoe oder Angina pectoris, welche mit leichter Betätigung einhergehen. Diese Patient:innen können nur geringe Wegstrecken zu Fuß zurücklegen oder andere Tätigkeiten alleine durchführen."
* item[=].item[=].answer.valueBoolean = false
* item[=].item[+].linkId = "saps3-30-10"
* item[=].item[=].text = "Chronische respiratorische Insuffizienz: Permanente Atemnot bei leichter Aktivität aufgrund pulmonaler Erkrankungen (chronisch restriktiver oder obstruktiver Natur). Funktionell sind diese Patient:innen unfähig, alleine Stiegen zu steigen, zu arbeiten oder den Haushalt zu verrichten. Sollte auch dokumentiert werden, wenn eines der folgenden Symptome vorliegt: chronische Hypoxie, Hyperkapnie, sekundäre Polyzythämie oder pulmonale Hypertonension mit systolischem Druck > 40 mmHg) oder Respirator-Abhängigkeit."
* item[=].item[=].answer.valueBoolean = false
* item[=].item[+].linkId = "saps3-30-11"
* item[=].item[=].text = "Chronische renale Insuffizienz: Chronische renale Therapie (Hämodialyse oder Peritonealdialyse) bei irreversiblen renalen Erkrankungen oder Anamnese einer chronischen renalen Insuffizienz"
* item[=].item[=].answer.valueBoolean = false
* item[=].item[+].linkId = "saps3-30-12"
* item[=].item[=].text = "Alkoholismus: Alkoholeinfuhr von mehr als 80 g pro Tag über einen Zeitraum von mindestens 6 Monaten vor der Aufnahme, welche klinische Symptome verursacht wie: Logorrhoe, Enzephalopathie, andere neurologische Erkrankungen, schlechter Ernährungszustand oder Leberzirrhose"
* item[=].item[=].answer.valueBoolean = false
* item[=].item[+].linkId = "saps3-30-13"
* item[=].item[=].text = "Drogensucht: Drogenabhängigkeit aufgrund intravenöser Drogeneinnahme (Kokain, Opiate und Derivate) für mindestens 6 Monate vor der Aufnahme. Patient:innen im Methadonprogramm ohne andere Drogenkonsumation fallen nicht darunter."
* item[=].item[=].answer.valueBoolean = false
* item[=].item[+].linkId = "saps3-30-14"
* item[=].item[=].text = "Immunsuppression, andere: Der:die Patient:in weist eine Erkrankung auf, welche genügend fortgeschritten ist, um die Infektionsresistenz zu unterdrücken: Schwere Mangelernährung, angeborene Defektzustände des humoralen oder zellulären Systems. Exkludiert AIDS oder HIV-Infektion, metastasiernde oder hämatologische Neoplasien, Chemotherapie, Radiotherapie und Steroidbehandlung."
* item[=].item[=].answer.valueBoolean = false
* item[=].item[+].linkId = "saps3-30-15"
* item[=].item[=].text = "Insulinpflichtiger Diabetes mellitus: Patient:innen, welche tägliche Insulingaben (Injektionen) benötigen"
* item[=].item[=].answer.valueBoolean = false
* item[=].item[+].linkId = "saps3-30-16"
* item[=].item[=].text = "Nicht-insulinpflichtiger Diabetes mellitus: Patient:innen mit diagnostiziertem Diabetes mellitus, welcher durch diätetische Maßnahmen und/oder Medikamente kontrolliert werden kann. Diese Patient:innen benötigen nicht regelmäßig Insulin."
* item[=].item[=].answer.valueBoolean = false
* item[=].item[+].linkId = "saps3-30-17"
* item[=].item[=].text = "Steroide Behandlung: Tägliche Gabe von >= 0,3mg/kg KG Prednisolon oder äquivalente Dosierungen anderer Kortikoide mindestens 6 Monate vor der Aufnahme. Topische Steroide oder Steroide per Inhalationen gehören nicht dazu."
* item[=].item[=].answer.valueBoolean = false
* item[=].item[+].linkId = "saps3-30-18"
* item[=].item[=].text = "Bestrahlung: Strahlentherapie während der letzten 6 Monate vor der Aufnahme. Exkludiert Strahlentherapie für nicht-invasive Tumoren, enterale oder parenterale Radioisotop-Therapie, radioaktive Implantate, Therapie zur Verhinderung heterotopischer Knochenformationen."
* item[=].item[=].answer.valueBoolean = false
* item[=].item[+].linkId = "saps3-30-19"
* item[=].item[=].text = "Chemotherapie: Chemotherapie in den 6 Monaten vor der Aufnahme, inkludiert immunsuppressierende Therapie für Malignome, Rheumatoide Arthritis oder entzündliche Darmerkrankungen (außer reine Behandlung mit Steroiden)."
* item[=].item[=].answer.valueBoolean = false
* item[=].item[+].linkId = "saps3-30-20"
* item[=].item[=].text = "COPD: Chronisch obstruktive pulmonale Erkrankungen aufgrund chronischer Bronchitis und/oder Emphysem"
* item[=].item[=].answer.valueBoolean = false
* item[=].item[+].linkId = "saps3-30-21"
* item[=].item[=].text = "Arterielle Hypertonension: Anamnese eines systolischen Blutdrucks >= 160 mmHg und/oder eines diastolischen Blutdrucks >= 95 mmHg, behandelt oder unbehandelt"
* item[=].item[=].answer.valueBoolean = false
* item[+].linkId = "saps3-31"
* item[=].text = "Körpertemperatur (Maximum)"
* item[=].answer.valueDecimal = 35
* item[+].linkId = "saps3-32"
* item[=].text = "Mechanische Beatmung"
* item[=].answer.valueBoolean = false
* item[+].linkId = "saps3-33"
* item[=].text = "Sauerstoff-Partialdruck arteriell (PaO2)"
* item[=].answer.valueDecimal = 222
* item[+].linkId = "saps3-34"
* item[=].text = "Sauerstoffkonzentration inspiratorisch (FiO2)"
* item[=].answer.valueDecimal = 55
* item[+].linkId = "saps3-35"
* item[=].text = "Serum: Bilirubin (Maximum)"
* item[=].answer.valueDecimal = 0.5
* item[+].linkId = "saps3-36"
* item[=].text = "Serum: Kreatinin (Maximum)"
* item[=].answer.valueDecimal = 0.8
* item[+].linkId = "saps3-37"
* item[=].text = "Systolischer Blutdruck (Minimum)"
* item[=].answer.valueDecimal = 66
* item[+].linkId = "saps3-38"
* item[=].text = "Therapeutische Maßnahmen (vor IBS)"
* item[=].item[0].linkId = "saps3-38-1"
* item[=].item[=].text = "CPR: Herzstillstand mit kardiopulmonaler Reanimation vor der Aufnahme auf die Intensivstation. Die Reanimation muss enthalten: Thoraxkompressionen, Herzmassage oder Defibrillation."
* item[=].item[=].answer.valueBoolean = false
* item[=].item[+].linkId = "saps3-38-2"
* item[=].item[=].text = "Vasoaktive Medikamente: Kontinuierlicher Einsatz von Vasopressoren, um den Blutdruck aufrechtzuerhalten (Adrenalin, Noradrenalin, Dobutamin in jeder Dosierung, Dopamin >5 μg/kgKG/ min), für mindestens eine Stunde"
* item[=].item[=].answer.valueBoolean = false
* item[=].item[+].linkId = "saps3-38-3"
* item[=].item[=].text = "Mechanische Beatmung: Invasive oder nicht-invasive Beatmung. Nicht inkludiert ist die alleinige Sauerstoffgabe über eine Venturi-Maske oder Nasenbrille."
* item[=].item[=].answer.valueBoolean = false
* item[+].linkId = "saps3-39"
* item[=].text = "Zutransferierung"
* item[=].answer.valueCoding = #1 "Bettenstation: Der:die Patient:in wurde von einer Normalstation entweder derselben oder einer anderen Krankenanstalt zurtransferiert."