CodeSystem: UrsacheCS
Title: "Ursache für Behandlung"
Description: "CodeSystem für die Ursache der Behandlung laut Ka-Org"
* ^status = #active
* ^experimental = true
* ^caseSensitive = true
* #00 "Überweisung"
* #01 "Arbeitsunfall oder Berufskrankheit"
* #02 "Wehrdienstbeschädigung"
* #03 "Strom/Blitz"
* #04 "Beschädigung nach dem KOVG, HVB, etc."
* #05 "Raufhandel"
* #06 "Trunkenheit"
* #07 "Arbeitsunfall in der Land- und Forstwirtschaft"
* #08 "Verkehrsunfall"
* #09 "Erste Hilfe"
* #10 "Mutter-Kind-Pass-Untersuchung"
* #11 "Mutter-Kind-Pass-Untersuchung für Nichtversicherte"
* #12 "Behandlung in Folge einer Schwangerschaft"
* #13 "Gesundenuntersuchung"
* #14 "Vergewaltigung"
* #15 "Verbrennung"
* #16 "Tierbiss"
* #17 "Routineuntersuchung Neugeborenes"
* #19 "Telemedizinische Leistungen"
* #30 "Nachbehandlung nach stationärer Pflege in einer Anstalt"
* #32 "Prästationäre Untersuchung/Behandlung vor stationärer Anstaltspflege"
* #35 "Nichtanwesenheit des Patienten in der Ambulanz (Laborprobe, Untersuchung einer Gewebeprobe)"
* #40 "ambulante Chemotherapie"
* #45 "Diabetesbehandlung im Rahmen von Therapie Aktiv"
* #50 "Dialyse"
* #60 "Spende von Körperteilen"
* #70 "Anzeigepflichtige übertragbare Krankheit (meldepflichtige Diagnose)"
* #80 "Humangenetische Untersuchung"
* #99 "Sonstige Ursache"

ValueSet: UrsacheVS
Title: "Ursache für Behandlung"
Description: "ValueSet für die Ursache der Behandlung laut Ka-Org"
* ^experimental = true
* include codes from system UrsacheCS