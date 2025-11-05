CodeSystem: AbrechnungsartAuslaenderverrechnungCS
Title: "Abrechnungsart Ausländerverrechnung CodeSystem"
Description: "CodeSystem für die Abrechnungsarten in der Ausländerverrechnung"
* ^status = #active
* ^experimental = true
* ^caseSensitive = true
* #E "Echtkosten"
* #P "Pauschal"
* #K "Kostenverzicht"
* #A "Abrechnungsverzicht"

ValueSet: AbrechnungsartAuslaenderverrechnungVS
Title: "Abrechnungsart Ausländerverrechnung ValueSet"
Description: "ValueSet für die Abrechnungsarten in der Ausländerverrechnung"
* ^experimental = true
* include codes from system AbrechnungsartAuslaenderverrechnungCS