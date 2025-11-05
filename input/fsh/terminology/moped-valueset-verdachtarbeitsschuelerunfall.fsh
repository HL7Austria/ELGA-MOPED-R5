CodeSystem: VerdachtArbeitsSchuelerunfallCS
Title: "Verdacht auf Arbeits- oder Schuelerunfall CodeSystem"
Description: "CodeSystem für den Verdacht auf einen Arbeits- oder Schuelerunfall"
* ^status = #active
* ^experimental = true
* ^caseSensitive = true
/** $VerdachtArbeitsSchuelerunfall#1 "Arbeitsunfall - Abgedeckt durch http://terminology.hl7.org/CodeSystem/v3-ActCode#WPA "
/** $VerdachtArbeitsSchuelerunfall#2 "Schüler-/Studentenunfall" - Abgedeckt durch http://terminology.hl7.org/CodeSystem/v3-ActCode#SCHOOL */
* #3 "Landwirtschaftlicher Unfall"
* #4 "Wegunfall Arbeit"
* #5 "Wegunfall Schüler/Student"
* #0 "Nein/Unbekannt"

ValueSet: VerdachtArbeitsSchuelerunfallVS
Title: "Verdacht auf Arbeits- oder Schuelerunfall ValueSet"
Description: "ValueSet für den Verdacht auf einen Arbeits- oder Schuelerunfall"
* ^experimental = true
* include codes from valueset http://terminology.hl7.org/ValueSet/v3-ActIncidentCode
* include codes from system VerdachtArbeitsSchuelerunfallCS
