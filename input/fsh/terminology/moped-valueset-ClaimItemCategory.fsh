CodeSystem: MopedClaimItemCategoryCS
Title: "Moped Claim Item Category CodeSystem"
Description: "CodeSystem für die Arten von Claim Item Kategorien"
* ^status = #active
* ^experimental = true
* ^caseSensitive = true
* #Patientenanteil "Patientenanteil"
* #LDFPLK "Leistungskomponente/Leistungspunkte"
* #LDFPTK "Tageskomponente/Kontaktpunktet"
* #SCULK "Punkte Belagsdauerausreißer nach unten – Leistungskomponente"
* #SCUTK "Punkte Belagsdauerausreißer nach unten – Tageskomponente"
* #BDZU "Zusatzpunkte Belagsdauerausreißer nach oben"
* #INTZU "Zusatzpunkte Intensiv"
* #MELZU "Zusatzpunkte Mehrfachleistungen"
* #SCSPEZ "Punkte spezieller Bereiche (tageweise)"
* #SCGES "Punkte total"

ValueSet: MopedClaimItemCategoryVS
Title: "Moped Claim Item Category ValueSet"
Description: "ValueSet für die Arten von Claim Item Kategorien"
* ^experimental = true
* include codes from system MopedClaimItemCategoryCS