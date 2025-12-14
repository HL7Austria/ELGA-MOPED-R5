Profile: MopedPatient
Parent: HL7ATCorePatient
Title : "MOPED Patient"
Description: "MOPED Profil der Patient Ressource"
* insert MappingHeaderEinfuegen()
* name.family ^short = "KaOrg: Zuname; KaOrg: Zuname des Hauptversicherten; KaOrg: Zuname des Mitversicherten; Vorname des Patienten - je nachdem ob es einen Mitversicherten gibt oder nicht ist das der Zuname des Mitversicherten oder des Hauptversicherten."
* insert legacyMapping(name.family, KaOrg, Zuname)
* insert legacyMapping(name.family, KaOrg, Zuname des Hauptversicherten)
* insert legacyMapping(name.family, KaOrg, Zuname des Mitversicherten)
* insert ShallPopulateObligation(name.family, MopedKHActor)
* name.given ^short = "KaOrg: Vorname; KaOrg: Vorname des Hauptversicherten; KaOrg: Vorname des Mitversicherten; Vorname des Patienten - je nachdem ob es einen Mitversicherten gibt oder nicht ist das der Vorname des Mitversicherten oder des Hauptversicherten."
* insert legacyMapping(name.given, KaOrg, Vorname)
* insert legacyMapping(name.given, KaOrg, Vorname des Hauptversicherten)
* insert legacyMapping(name.given, KaOrg, Vorname des Mitversicherten)
* insert ShallPopulateObligation(name.given, MopedKHActor)
* gender ^short = "LKF: Geschlecht; KaOrg: Geschlecht des Hauptversicherten; KaOrg: Geschlecht des Mitversicherten; KaOrg: Geschlecht"
* insert legacyMapping(gender, LKF, Geschlecht)
* insert legacyMapping(gender, KaOrg, Geschlecht des Hauptversicherten)
* insert legacyMapping(gender, KaOrg, Geschlecht des Mitversicherten)
* insert legacyMapping(gender, KaOrg, Geschlecht)
* insert ShallPopulateObligation(gender, MopedKHActor)
* birthDate ^short = "LKF: Geburtsdatum; KaOrg: Geburtsdatum des Hauptversicherten; KaOrg: Geburtsdatum des Mitversicherten; KaOrg: Geburtsdatum"
* insert legacyMapping(birthDate, LKF, Geburtsdatum)
* insert legacyMapping(birthDate, KaOrg, Geburtsdatum des Hauptversicherten)
* insert legacyMapping(birthDate, KaOrg, Geburtsdatum des Mitversicherten)
* insert legacyMapping(birthDate, KaOrg, Geburtsdatum)
* insert ShallPopulateObligation(birthDate, MopedKHActor)
* address.line.extension[street] ^short = "KaOrg: Wohandresse des Patienten, Straße"
* insert legacyMapping(address.line.extension[street], KaOrg, Wohandresse des Patienten - Straße)
* insert ShallPopulateObligation(address.line.extension[street], MopedKHActor)
* address.postalCode ^short = "LKF: Wohnsitz – Postleitzahl; KaOrg: Wohnadresse des Patienten - Postleitzahl"
* insert legacyMapping(address.postalCode, LKF, Wohnsitz – Postleitzahl)
* insert legacyMapping(address.postalCode, KaOrg, Wohnadresse des Patienten - Postleitzahl)
* insert legacyMapping(address.postalCode, KaOrg, Hauptwohnsitz Postleitzahl)
* insert ShallPopulateObligation(address.postalCode, MopedKHActor)
* address.country ^short = "LKF: Wohnsitz – Staat; KaOrg: Wohnadresse des Patienten - Länderkennzeichen"
* insert legacyMapping(address.country, LKF, Wohnsitz – Staat)
* insert legacyMapping(address.country, KaOrg, Wohnadresse des Patienten - Länderkennzeichen)
* insert legacyMapping(address.country, KaOrg, Hauptwohnsitz Staat)
* insert ShallPopulateObligation(address.country, MopedKHActor)
* address.city ^short = "KaOrg: Wohnadresse des Patienten - Ort"
* insert legacyMapping(address.city, KaOrg, Wohnadresse des Patienten - Ort)
* insert ShallPopulateObligation(address.city, MopedKHActor)
* address.extension[municipalityCode] ^short = "LKF: Wohnsitz – Gemeindecode "
* insert legacyMapping(address.extension[municipalityCode], LKF, Wohnsitz – Gemeindecode)
* insert ShallPopulateObligation(address.extension[municipalityCode], MopedKHActor)
* extension[citizenship] ^short = "LKF: Staatsbürgerschaft; KaOrg: Staatsbürgerschaftsschlüssel"
* insert legacyMapping(extension[citizenship], LKF, Staatsbürgerschaft)
* insert legacyMapping(extension[citizenship], KaOrg, Staatsbürgerschaftsschlüssel)
* insert legacyMapping(extension[citizenship], KaOrg, Staatsbürgerschaft)
* insert ShallPopulateObligation(extension[citizenship], MopedKHActor)
* identifier[socialSecurityNumber] ^short = "KaOrg: Versicherungsnummer des Hauptversicherten; KaOrg: Versicherungsnummer des Mitversicherten; Hier ist immer die SVNR des Patienten angegeben - je nachdem ob der Hauptversicherte selbst der Patient ist, ist hier die SVNR des Haupt- oder Mitversicherten angegeben"
* insert legacyMapping(identifier[socialSecurityNumber], KaOrg, Versicherungsnummer des Hauptversicherten)
* insert legacyMapping(identifier[socialSecurityNumber], KaOrg, Versicherungsnummer des Mitversicherten)
* insert ShallPopulateObligation(identifier[socialSecurityNumber], MopedKHActor)