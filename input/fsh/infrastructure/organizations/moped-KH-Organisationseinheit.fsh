Profile: MopedKHOrganisationseinheit
Parent: HealthcareService
Description: "MOPED Profil für Organisationseinheiten innerhalb einer Krankenanstalt."
Title: "MOPED KH Organisationseinheiten"

* providedBy only Reference(KHOrganization)
* providedBy ^short = "Krankenanstalt zu welcher die Abteilung gehört"
* type = http://terminology.hl7.org/CodeSystem/service-type#361
//#361 Hospital Services
* category = http://terminology.hl7.org/CodeSystem/service-category#35
//#35 Hospital
* identifier ^slicing.rules = #open
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.ordered = false
* identifier contains Funktionscode 0..1 and Funktionssubcode 0..1
* identifier[Funktionscode] ^short = "Funktionscode der Abteilung laut LKF"
* identifier[Funktionscode].system = "http://example.org/lkf-system/funktionscode" (exactly)
* identifier[Funktionssubcode] ^short = "Funktionssubcode der Abteilung laut LKF"
* identifier[Funktionssubcode].system = "http://example.org/lkf-system/funktionssubcode" (exactly)
* location 1..
* location ^short = "Angabe des spezifischen Standorts"

* extension contains Kostenstelle named Kostenstelle 0..1



