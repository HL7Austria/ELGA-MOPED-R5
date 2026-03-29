
Diese Seite beschreibt die technische Umsetzung der in MOPED abgebildeten Prozesse rund um die Abwicklung eines MOPED-Falls – von der Aufnahme über die Versorgung bis hin zu Abrechnung und Meldung. Ziel ist es, die Abläufe transparent und nachvollziehbar darzustellen sowie aufzuzeigen, wie einzelne Teilprozesse modular zusammengesetzt werden können, um unterschiedliche Szenarien des MOPED-Falls abzubilden.

Die Übersichtsgrafik unten veranschaulicht den generellen Ablauf eines MOPED-Falls. Darauf aufbauend werden die spezifischen Anwendungsfälle im stationären, ambulanten und selbstzahlenden Bereich im Standardablauf erläutert. Jeder dieser Standardabläufe wird in weiterer Folge in klar definierte Teilprozesse zerlegt, die mit ihren jeweiligen Vor- und Nachbedingungen beschrieben sind.

Dieses Vorgehen erlaubt eine flexible Modellierung realer Prozessvarianten: Die Teilprozesse können – je nach Fallkonstellation – „puzzleartig“ miteinander kombiniert werden. So wird ersichtlich, an welchen Stellen innerhalb des Gesamtprozesses bestimmte Abläufe greifen und welche Abhängigkeiten zwischen ihnen bestehen.

[![overview](MOPED_Fall_Ueberblick.svg){: style="width: 60%"}](MOPED_Fall_Ueberblick.svg)

Die folgenden Anwendungsfälle in ihrem Standardablauf werden im Detail beschrieben:
- [Moped Fall Stationär](AF_moped_fall_ueberblick.html#anwendungsfall-standardablauf-im-sunshine-case)
- [Moped Fall Ambulant](AF_moped_fall_ueberblick.html#anwendungsfall-3-ambulanter-fall)
- [Moped Fall Selbstzahler](AF_moped_fall_ueberblick.html#anwendungsfall-14-selbstzahler)


Die einzelnen Schritte dieser Standardabläufe sowie mögliche Abweichungen werden als „puzzleartig“ zusammensetzbare Teilprozesse beschrieben – jeweils mit ihren jeweiligen Vor- und Nachbedingungen. Dadurch wird nachvollziehbar, an welchen Stellen innerhalb des Gesamtprozesses die einzelnen Teilprozesse zur Anwendung kommen können.

Eine Übersicht aller Teilprozesse findet sich [hier](#liste-der-teilprozesse).


{%include AF_stationaer.md %}

{% include AF3.md %}

{% include AF14.md %}


### Liste der Teilprozesse:

#### Moped Fall - Aufnahme: 
- [ANWF 1 - Planaufnahme 🔄](AF_moped_fall_aufnahme.html#anwendungsfall-1-planaufnahme)
- [ANWF 2 - Stationäre Aufnahme ✅](AF_moped_fall_aufnahme.html#anwendungsfall-2-stationäre-aufnahme)
- [ANWF 18 - Transfer 🔄](AF_moped_fall_aufnahme.html#anwendungsfall-18-transfer)

#### Moped Fall - Patientversorgung:
- [ANWF 7 - Behandlungsabbruch 🔄](AF_moped_fall_patientenversorgung.html#anwendungsfall-7-behandlungsabbruch-vor-erbrachter-leistung)
- [ANWF 17 - Zwischenbetriebliche Leistungserbringung ✅](AF_moped_fall_patientenversorgung.html#anwendungsfall-17-zwischenbetriebliche-leistungserbringung)
- [ANWF 19 - Interne Verlegung ✅](AF_moped_fall_patientenversorgung.html#anwendungsfall-19-interne-verlegung)
- [ANWF 20 - Urlaub ✅](AF_moped_fall_patientenversorgung.html#anwendungsfall-20-beurlaubung)
- [ANWF 21 - gesundes Neugeborenes 🔄](AF_moped_fall_patientenversorgung.html#anwendungsfall-21-gesundes-neugeborenes)
- [ANWF 22 - krankes Neugeborenes 🔄](AF_moped_fall_patientenversorgung.html#anwendungsfall-22-krankes-neugeborenes)
- [ANWF 26 - Überlieger 🔄](AF_moped_fall_patientenversorgung.html#anwendungsfall-26-überlieger)
- [ANWF 53 - Intensivaufenthalt 🔄](AF_moped_fall_patientenversorgung.html#anwendungsfall-53-intensivaufenthalt-mit-intensivdaten)

#### Moped Fall - Entlassung: 
- [ANWF 23-25 - Entlassung & Hauptdiagnose ✅](AF_moped_fall_entlassung.html#anwendungsfall-23-entlassung-mit-hauptdiagnose)
- [ANWF 50 - Urgenz 🔄](AF_moped_fall_entlassung.html#anwendungsfall-50-urgenz)

#### Moped Fall - Versichertenanspruchserklärung:
- [ANWF 10 - Klassenwechsel ✅](AF_moped_fall_vae.html#anwendungsfall-10-klassenwechsel)
- [ANWF 11 - Versicherungswechsel 🔄](AF_moped_fall_vae.html#anwendungsfall-11-versicherungswechsel)
- [ANWF 28-32 - SV Kostenübernahmevariationen 🔄](AF_moped_fall_vae.html#anwendungsfall-28-positive-vae-inkl-verlängerung)

#### Moped Fall - Abrechnung:
- [ANWF 27 - Leistungen ohne Abrechnungsrelevanz ✅](AF_moped_fall_abrechnung.html#anwendungsfall-27-leistung-ohne-abrechnungsrelevanz)
- [ANWF 38 - Laufende Generierung der LKF-Daten](AF_moped_fall_abrechnung.html#anwendungsfall-38-laufende-generierung-der-lkf-daten)

#### Moped Fall - Ablehnung/Genehmigung: 
- [ANWF 39-41 - medizinische und qualitative Rückmeldungen](AF_moped_fall_ablehnung_genehmigung.html#anwendungsfall-39-qualitative-anmerkung-der-lkf-daten)
- [ANWF 43 - Freigabe der LKF-Daten](AF_moped_fall_ablehnung_genehmigung.html#anwendungsfall-43-freigabe-der-lkf-daten)

#### Moped Fall - Kostenmeldung: 
- [ANWF 12,13,15,35-37 - Ausländerverrechnung und Regress 🔄](AF_moped_fall_kostenmeldung.html#anwendungsfall-12-dauerbetreute)
- [ANWF 33-34 - Kostenmeldungen? 🔄](AF_moped_fall_kostenmeldung.html#anwendungsfall-33-kostenmeldung---korrekte-zuordnung)

#### Moped Fall - Jahres-/Quartalsmeldung: 
- [ANWF 42 - Quartalsmeldung 🔄](AF_moped_fall_jahres_quartals_meldung.html#anwendungsfall-42-quartalsmäßige-bereitstellung-der-lkf-daten)
- [ANWF 44 - Jahresmeldung 🔄](AF_moped_fall_jahres_quartals_meldung.html#anwendungsfall-42-jährliche-bereitstellung-der-lkf-daten)

#### Moped Fall - Prozessübergreifend: 
- [ANWF 4,5 - Fallartwechsel 🔄](AF_moped_fall_prozessuebergreifend.html#anwendungsfall-4-fallartwechsel-ambulant---stationär)
- [ANWF 6 - Mehrmalige Aufnahme an einem Tag 🔄](AF_moped_fall_prozessuebergreifend.html#anwendungsfall-6-abgeschlossene-ambulante-behandlung-und-stationäre-aufnahme-am-gleichen-tag-innerhalb-eines-khs)
- [ANWF 8,9,47 - Stammdatenabgleich 🔄](AF_moped_fall_prozessuebergreifend.html#anwendungsfall-8-patientenverwechslung-vor-leistungserbringung)
- [ANWF 48 - Mehrere aktive Fälle in MOPED 🔄](AF_moped_fall_prozessuebergreifend.html#anwendungsfall-48-mehrere-aktive-fälle-in-moped)
- [ANWF 49 - Aufrollung nach Speicherfrist 🔄](AF_moped_fall_prozessuebergreifend.html#anwendungsfall-49-aufrollung-nach-speicherfrist)
- [ANWF 54 - Stammdatenänderung 🔄](AF_moped_fall_prozessuebergreifend.html#anwendungsfall-54-stammdatenänderung)


#### Noch zuzuordnen:

- [ANWF 51-52 - Asylierung 🔄](TBD)
