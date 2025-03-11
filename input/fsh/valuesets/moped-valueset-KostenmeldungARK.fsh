CodeSystem: KostenmeldungARKCS
Title: "Kostenmeldung für (A/R/K)"
Description: "CodeSystem für die Art der Kostenmeldung"
* ^status = #active
* ^experimental = true
* ^caseSensitive = true
* #A "Ausländerverrechnung"
* #R "Regressangelegenheiten"
* #K "Kosteninformation"

ValueSet: KostenmeldungARK
Title: "Kostenmeldung für (A/R/K)"
Description: "ValueSet für die Art der Kostenmeldung"
* ^experimental = true
* include codes from system KostenmeldungARKCS