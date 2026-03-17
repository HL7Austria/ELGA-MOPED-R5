CodeSystem: SpezielleOrganisationsformenCS
Title: "Spezielle Organisationsformen"
Description: "Spezielle Organisationsformen (gemäß ÖSG bzw. KAKuG)"
* ^status = #active
* ^experimental = true
* ^caseSensitive = true
* #A "Abteilung"
* #R "Referenzzentrum – ohne Versorgungsstufengliederung"
* #Z "Referenzzentrum – höchste Versorgungsstufe"
* #S "Referenzzentrum – 2. Versorgungsstufe"
* #V "Spezialzentrum – ausgewählte Versorgungsbereiche"
* #D "Department"
* #F "Fachschwerpunkt"
* #T "Dislozierte Tagesklinik"
* #W "Dislozierte Wochenklinik"

CodeSystem: SpezielleBetriebsformenCS
Title: "Spezielle Betriebsform"
Description: "Spezielle Betriebsformen (gemäß ÖSG bzw. KAKuG)"
* #K "Tagesstation als Teil einer vollstationären Organisationsform (für einmalige Aufenthalte über Tag oder über Nacht)"
* #H "Spezielle ambulante Bereiche (ambulante Tagesbehandlung und ambulante tagesstrukturierende Behandlung)"
* #M "Fachspezifische Wochenklinik"
* #X "Ohne fachlich eindeutige Zuordnung"


ValueSet: SpezielleOrganisationsformVS
Title: "Spezielle Organisationsform"
Description: "Die spezielle Organisationsform der stationären Versorgung ist im Kostenstellenplan 
zusätzlich zum Funktionscode mit einer entsprechenden Kennzeichnung zu versehen."
* ^experimental = true
* include codes from system SpezielleOrganisationsformenCS
* include codes from system SpezielleBetriebsformenCS