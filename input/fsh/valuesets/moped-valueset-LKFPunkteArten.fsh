CodeSystem: LKFPunkteArtenCS
Title: "LKF Punkte Arten"
Description: "CodeSystem für die LKF Punkte Arten"
* ^status = #active
* ^experimental = true
* ^caseSensitive = true
* #LDFPLK "Leistungskomponente/Leistungspunkte"
* #LDFPTK "Tageskomponente/Kontaktpunktet"
* #SCULK "Punkte Belagsdauerausreißer nach unten – Leistungskomponente"
* #SCUTK "Punkte Belagsdauerausreißer nach unten – Tageskomponente"
* #BDZU "Zusatzpunkte Belagsdauerausreißer nach oben"
* #INTZU "Zusatzpunkte Intensiv"
* #MELZU "Zusatzpunkte Mehrfachleistungen"
* #SCSPEZ "Punkte spezieller Bereiche (tageweise)"
* #SCGES "Punkte total"

CodeSystem: ClaimItemArtenCS
Title: "Claim Item Art"
Description: "CodeSystem für die Arten von Claim Items"
* ^status = #active
* ^experimental = true
* ^caseSensitive = true
* #Patientenanteil "Leistungskomponente/Leistungspunkte"

ValueSet: ClaimItemArtenVS
Title: "LKF Punkte Arten ValueSet"
Description: "ValueSet für die LKF Punkte Arten"
* ^experimental = true
* include codes from system LKFPunkteArtenCS
* include codes from system ClaimItemArtenCS