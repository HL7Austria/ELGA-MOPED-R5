CodeSystem: ZahlungskennzeichenRegressCS
Title: "CodeSystem Zahlungskennzeichen Regress"
Description: "CodeSystem Zahlungskennzeichen Regress"
* ^status = #active
* ^experimental = true
* ^caseSensitive = true
* #K "kein Regress (letzte Meldung)"
* #T "Teilzahlung"
//* #V "Verfahren läuft" -> abgebildet in ARKResponse
* #N "Nicht Einbringlich-Abschreibung (letzte Mel-
dung)"
* #E "Endzahlung"
CodeSystem: ZahlungskennzeichenAuslaenderverrechnungCS
Title: "CodeSystem Zahlungskennzeichen Auslaenderverrechnung"
Description: "CodeSystem Zahlungskennzeichen Auslaenderverrechnung"
* ^status = #active
* ^experimental = true
* ^caseSensitive = true
//* #F "Forderung an den ausländischen Träger durchgeführt" -> abgebildet in ARKResponse
* #A "Akontierung"
* #K "keine ausländische Verrechnung möglich (letzte Meldung)"
* #E "Endzahlung"
* #R "Rücküberweisung an ausländischen Träger Rechnung wurde bereits bezahlt und das Geld dem Landesfond weitergegeben. Im Nachhinein wurde diese Rechnung vom ausländischen Träger begründet beanstandet. Dem ausländischen Träger wurde der Rechnungsbetrag von der ÖGK rücküberwiesen. Der Betrag im Feld BETRAV ist deshalb vom Landesgesundheitsfonds an die Österreichische Gesundheitskasse zu erstatten."

ValueSet: ZahlungskennzeichenVS
Title: "ValueSet Zahlungskennzeichen ARK"
Description: "ValueSet für das Zahlungskennzeichen ARK"
* ^experimental = true
* include codes from system ZahlungskennzeichenRegressCS
* include codes from system ZahlungskennzeichenAuslaenderverrechnungCS