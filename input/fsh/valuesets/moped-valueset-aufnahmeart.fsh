CodeSystem: AufnahmeartCS
Title: "Moped Aufnahmeart des Patienten"
Description: "Zulässige Ausprägungen Aufnahmeart (LKF & KaOrg)"
* ^status = #active
* ^experimental = true
* ^caseSensitive = true
* #A "Aufnahme in den allgemein stationären Bereich inkl. Aufnahme auf Intensiveinheiten"
* #T "Transfer von einem anderen Krankenhaus in den allgemein stationären Bereich inkl. Intensiveinheiten"
* #W "Wiederaufnahme in den allgemein stationären Bereich inkl. Wiederaufnahme auf Intensiveinheiten"
* #R "Aufnahme in den Bereich der Rehabilitation"
* #K "Aufnahme eines 0-Tagesfalls"
* #L "Kennzeichen der Datensätze, die den Patientenaufenthalt nach dem Zeitpunkt der Asylierung beschreiben"
* #G "Aufnahme eines Frühgeborenen/Neugeborenen am Tag der Geburt oder am Folgetag in den allgemein stationären Bereich inkl. Aufnahme auf Intensiveinheiten"
* #LKF_P "Aufnahme in den ausschließlichen Bereich der Pflege"
* #KaOrg_3 "Ambulanzfall"
* #KaOrg_7 "AUVA Wiederaufnahme (Diagnose der Aufnahme enthält Diagnose der Ersterkrankung. Aufnahmezahl AUFZL enthält jene des Erstberichtes)."
* #KaOrg_8 "Kurheilverfahren stationär"
* #KaOrg_9 "Rehabilitationsaufenthalt ambulant"
* #KaOrg_U "Urgenz"
* #KaOrg_1 "Verlängerung"
* #KaOrg_2 "Asylierung"
* #KaOrg_E "Erinnerung (Urgenz von Ambulanzmeldungen)"
* #LKF_1 "Fremdzuweisung von einem:einer Allgemeinmediziner:in"
* #LKF_2 "Fremdzuweisung von einem Facharzt/einer Fachärztin"
* #LKF_3 "Fremdzuweisung von der eigenen/einer anderen Krankenanstalt ohne bestehenden stationären Aufenthalt"
* #LKF_4 "Fremdzuweisung von einem Notarzt/einer Notärztin"
* #LKF_5 "Selbstzuweisung (ohne Einweisungsschein)"
* #LKF_6 "Wiederbestellung"
* #LKF_9 "Sonstige Zuweisung (durch Behörde, Pflegeeinrichtung, etc.)"



ValueSet: AufnahmeartVS
Title: "Aufnahmeart des Patienten"
Description: "ValueSet für die Aufnahmeart des Patienten (LKF + Ka-Org)"
* ^experimental = true
* include codes from system AufnahmeartCS