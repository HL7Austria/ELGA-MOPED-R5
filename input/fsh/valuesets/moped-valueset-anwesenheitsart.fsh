CodeSystem: AnwesenheitsartCS
Title: "Anwesenheitsart"
Description: "CodeSystem für die Anwesenheitsart"
* ^status = #active
* ^experimental = true
* ^caseSensitive = true
* #ANW "physisch anwesend"
* #ABW "physisch nicht anwesend"

ValueSet: Anwesenheitsart
Title: "Anwesenheitsart"
Description: "ValueSet für die Anwesenheitsart"
* ^experimental = true
* include codes from system AnwesenheitsartCS