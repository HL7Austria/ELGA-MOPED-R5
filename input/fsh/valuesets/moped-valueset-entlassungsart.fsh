CodeSystem: EntlassungsartCS
Title: "Entlassungsart des Patienten"
Description: "CodeSystem für die Entlassungsart des Patienten"
* ^status = #active
* ^experimental = true
* ^caseSensitive = true
* #KaOrg_1 "Urlaub"
* #KaOrg_2 "Rehabilitation angezeigt"
* #KaOrg_3 "Asylierung"
* #4 "Entlassung gegen Revers"
* #KaOrg_5 "AUVA Ende der Arbeitsunfähigkeit"
* #KaOrg_6 "AUVA Ende der ambulanten Behandlung"
* #KaOrg_7 "AUVA Ende der ambulanten Behandlung und Ende der Arbeitsunfähigkeit"
* #KaOrg_8 "Ende Rehabilitationsaufenthalt stationär"
* #KaOrg_9 "Ende Rehabilitationsaufenthalt ambulant"
* #E "Entlassung aus dem Krankenhaus"
* #KaOrg_K "Ende Kurheilverfahren stationär"
* #T "Transfer in eine andere Krankenanstalt"
* #S "Sterbefall"
* #A "Krankenhausinterne Verlegung vom Bereich der Rehabilitation und vom ausschließlichen Bereich der Pflege in den allgemeinen stationären Bereich (inkl. Intensivbereich)"
* #KaOrg_H "Abschluss eines Aufenthaltes im halbstationären Bereich oder krankenhausinterne Verlegung in den halbstationären Bereich"
* #R "Krankenhausinterne Verlegung in den Bereich der Rehabilitation"
* #P "Krankenhausinterne Verlegung in den ausschließlichen Bereich der Pflege"
* #LKF_L "Kennzeichen der Datensätze, die zum Zeitpunkt der Asylierung dokumentarisch abgeschlossen werden"
* #LKF_V "Kennzeichen für noch nicht abgeschlossene Aufenthalte von am Jahresende verbleibenden Patient:innen"
* #LKF_1 "Zuweisung an eine:n Allgemeinmediziner:in"
* #LKF_2 "Zuweisung an einen Facharzt/eine Fachärztin"
* #LKF_3 "Zuweisung an die eigene/eine andere Krankenanstalt zur ambulanten Weiterbetreuung"
* #LKF_5 "Zuweisung an die eigene/eine andere Krankenanstalt zur stationären Aufnahme"
* #LKF_6 "Wiederbestellung"
* #LKF_7 "Behandlungsende, keine Zuweisung"
* #LKF_8 "Sterbefall"
* #LKF_9 "Sonstige Abgangsart"

//TBD muss generell noch überarbeitet werden -> vorläufige zuordnung als Platzhalter, um in den Profile ENCS und ENCA verwendet werden zu können

ValueSet: EntlassungsartVS
Title: "Entlassungsart des Patienten ambulant + stationär"
Description: "ValueSet für die Entlassungsart des Patienten"
* include codes from valueset EntlassungsartAVS
* include codes from valueset EntlassungsartSVS

ValueSet: EntlassungsartAVS
Title: "Entlassungsart des Patienten ambulant"
Description: "ValueSet für die ambulante Entlassungsart des Patienten"
* ^experimental = true
* EntlassungsartCS#LKF_1
* EntlassungsartCS#LKF_2
* EntlassungsartCS#LKF_3
* EntlassungsartCS#LKF_5
* EntlassungsartCS#LKF_6
* EntlassungsartCS#LKF_7
* EntlassungsartCS#LKF_8
* EntlassungsartCS#LKF_9

ValueSet: EntlassungsartSVS
Title: "Entlassungsart des Patienten stationär"
Description: "ValueSet für die stationäre Entlassungsart des Patienten"
* ^experimental = true
* EntlassungsartCS#E
* EntlassungsartCS#T
* EntlassungsartCS#S
* EntlassungsartCS#A
* EntlassungsartCS#R
* EntlassungsartCS#P
* EntlassungsartCS#LKF_L
* EntlassungsartCS#LKF_V
* EntlassungsartCS#4
