CodeSystem: VerdachtArbeitsSchuelerunfallCS
Title: "Verdacht auf Arbeits- oder Schuelerunfall CodeSystem"
Description: "CodeSystem für den Verdacht auf einen Arbeits- oder Schuelerunfall"
* ^status = #active
* ^experimental = true
* ^caseSensitive = true
* #1 "Arbeitsunfall"
* #2 "Schüler-/Studentenunfall"
* #3 "Landwirtschaftlicher Unfall"
* #4 "Wegunfall Arbeit"
* #5 "Wegunfall Schüler/Student"
* #0 "Nein/Unbekannt"

ValueSet: VerdachtArbeitsSchuelerunfallVS
Title: "Verdacht auf Arbeits- oder Schuelerunfall ValueSet"
Description: "ValueSet für den Verdacht auf einen Arbeits- oder Schuelerunfall"
* ^experimental = true
* include codes from system VerdachtArbeitsSchuelerunfallCS
