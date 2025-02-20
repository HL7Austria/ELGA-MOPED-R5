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

ValueSet: Entlassungsart
Title: "Entlassungsart des Patienten"
Description: "ValueSet für die Entlassungsart des Patienten"
* ^experimental = true
* include codes from system EntlassungsartCS