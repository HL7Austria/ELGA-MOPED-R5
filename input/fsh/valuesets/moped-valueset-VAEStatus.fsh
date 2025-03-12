CodeSystem: VAEStatusCS
Title: "Status der Versichertenanspruchserklärung"
Description: "Status der Versichertenanspruchserklärung"
* ^status = #active
* ^experimental = true
* ^caseSensitive = true
* #00 "bewilligt (nur für stationären Bereich)"
* #01 "Versicherung nicht festgestellt"
* #02 "Wartezeit für Schutzfrist nicht gegeben"
* #03 "nicht leistungszuständig"
* #04 "Angehörigeneigenschaft nicht nachgewiesen"
* #05 "Änderung der Zuständigkeit"
* #08 "Anstaltspflege ohne Notwendigkeit ärztlicher Behandlung"
* #10 "Leistungszuständigkeit durch Nichtbeantwortung einer Anfrage nicht geklärt"
* #11 "notwendige Unterlagen fehlen"
* #12 "direkte Verrechnung mit dem Versicherten"
* #14 "Nichterfüllung der Wartezeit bei Selbstversicherten"
* #16 "Kostenübernahme vom Chef(Kontroll)arzt abgelehnt"
* #17 "die weitere Kostenübernahme vom Chef(Kontroll)arzt abgelehnt"
* #18 "Bearbeitung/Verlängerung erst nach Vorlage der Krankengeschichte möglich"
* #19 "Versicherung festgestellt (nur für Ambulanzverrechnung inkl. tageschirurgischer Versorgung)"
* #21 "Pflicht anerkannt, aber zahlungsunfähig X"
* #22 "Pflicht anerkannt, Kostenübernahme abgelehnt X"
* #40 "Voraussetzung für Angehörigeneigenschaft nicht mehr gegeben"
* #42 "Angehöriger ist selber versichert oder anderweitig mitversichert"
* #49 "Ablehnungsgrund steht im Kommentarsatz (sonstige Ablehnung)"
* #97 "Urgenz für Entlassungsnachricht (K05)"
* #98 "in Bearbeitung"
* #99 "kasseninterne Berichtigung"

ValueSet: VAEStatus
Title: "Status der Versichertenanspruchserklärung"
Description: "Status der Versichertenanspruchserklärung"
* ^experimental = true
* include codes from system VAEStatusCS