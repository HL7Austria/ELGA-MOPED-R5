CodeSystem: AbgangsartCS
Title: "Moped Aufnahmeart des Patienten"
Description: "Zulässige Ausprägungen Aufnahmeart (LKF & KaOrg)"
* ^status = #active
* ^experimental = true
* ^caseSensitive = true

* #1 "Lebend"
* #2 "Lebend mit Therapiereduktion"
* #3 "Gestorben"
* #4 "Gestorben mit Therapiereduktion"

ValueSet: Abgangsart
Title: "Abgangsart des Patienten"
Description: "ValueSet für die Abgangsart des Patienten"
* ^experimental = true
* include codes from system AbgangsartCS
