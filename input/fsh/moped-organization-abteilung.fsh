Profile: MOPEDOrganizationAbteilung
Parent: Organization
Title: "MOPED Organization Abteilung"
Description: "MOPED Profil für Abteilungen innerhalb einer Krankenanstalt."

* partOf only Reference(MOPEDKrankenanstaltOrganization)
* partOf ^short = "Krankenanstalt zu welcher die Abteilung gehört"
* type = http://snomed.info/sct#284548004  "Hospital department (environment)"

//Slice for identifier
* identifier ^slicing.rules = #open
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.ordered = false
* identifier contains Funktionscode 0..1 and Funktionssubcode 0..1
* identifier[Funktionscode] ^short = "Funktionscode der Abteilung laut LKF"
* identifier[Funktionscode].system = "http://example.org/lkf-system/funktionscode" (exactly)
* identifier[Funktionssubcode] ^short = "Funktionssubcode der Abteilung laut LKF"
* identifier[Funktionssubcode].system = "http://example.org/lkf-system/funktionssubcode" (exactly)


* extension contains Kostenstelle named kostenstelle 0..1



