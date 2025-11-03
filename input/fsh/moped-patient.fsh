Profile: MopedPatient
Parent: HL7ATCorePatient
Title : "MOPED Patient"
Description: "MOPED Profil der Patient Ressource"

* name.family ^short = "KaOrg: Zuname des Patienten"
* name.given ^short = "KaOrg: Vorname des Patienten"
* insert ShallPopulateObligation(name, MopedKHActor)
* gender ^short = "LKF: Geschlecht; KaOrg: Geschlecht des Hauptversicherten oder Geschlecht des Mitversicherten"
* insert ShallPopulateObligation(gender, MopedKHActor)
* birthDate ^short = "LKF: Geburtsdatum; KaOrg: Geburtsdatum des Hauptversicherten oder Geburtsdatum des Mitversicherten"
* insert ShallPopulateObligation(birthDate, MopedKHActor)
* address.line.extension[street] ^short = "KaOrg: Wohandresse des Patienten, Straße"
* insert ShallPopulateObligation(address.line.extension[street], MopedKHActor)
* address.postalCode ^short = "LKF: Wohnsitz – Postleitzahl; KaOrg: Wohnadresse des Patienten, Postleitzahl"
* insert ShallPopulateObligation(address.postalCode, MopedKHActor)
* address.country ^short = "LKF: Wohnsitz – Staat; KaOrg: Wohnadresse des Patienten, Länderkennzeichen"
* insert ShallPopulateObligation(address.country, MopedKHActor)
* address.city ^short = "KaOrg: Wohnadresse des Patienten, Ort"
* insert ShallPopulateObligation(address.city, MopedKHActor)
* address.extension[municipalityCode] ^short = "LKF: Wohnsitz – Gemeindecode "
* insert ShallPopulateObligation(address.extension[municipalityCode], MopedKHActor)
* extension[citizenship] ^short = "LKF: Staatsbürgerschaft; KaOrg: Staatsbürgerschaftsschlüssel"
* insert ShallPopulateObligation(extension[citizenship], MopedKHActor)
* identifier[socialSecurityNumber] ^short = "KaOrg: Versicherungsnummer des Hauptversicherten oder Versicherungsnummer des Mitversicherten"
* insert ShallPopulateObligation(identifier[socialSecurityNumber], MopedKHActor)