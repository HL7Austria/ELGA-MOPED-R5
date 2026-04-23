Profile: MopedKAOrganisationseinheit
Parent: HealthcareService
Description: "MOPED Profil für Organisationseinheiten innerhalb einer Krankenanstalt."
Title: "MOPED KA Organisationseinheiten"

* providedBy only Reference(KAOrganization)
* providedBy ^short = "Krankenanstalt zu welcher die Abteilung gehört"
* type = $ServiceType#361
//#361 Hospital Services
* category = $ServiceCategory#35
//#35 Hospital
* identifier ^slicing.rules = #open
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.ordered = false
* identifier contains Funktionscode 0..1
* identifier[Funktionscode] ^short = "Funktionscode inkl. Subcode der Abteilung laut LKF"
* identifier[Funktionscode].system = $Funktionscode (exactly)
* location 1..
* location ^short = "Angabe des spezifischen Standorts"

* extension contains Kostenstelle named Kostenstelle 0..1



