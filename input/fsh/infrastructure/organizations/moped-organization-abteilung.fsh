Profile: MopedOrganizationAbteilung
Parent: Organization
Description: "MOPED Profil für Abteilungen innerhalb einer Krankenanstalt."
Title: "MOPED Organization Abteilung"

* partOf only Reference(KHOrganization)
* partOf ^short = "Krankenanstalt zu welcher die Abteilung gehört"
* type = http://terminology.hl7.org/CodeSystem/organization-type#dept (exactly)
* identifier ^slicing.rules = #open
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.ordered = false
* identifier contains Funktionscode 0..1 and Funktionssubcode 0..1
* identifier[Funktionscode] ^short = "Funktionscode der Abteilung laut LKF"
* identifier[Funktionscode].system = "http://example.org/lkf-system/funktionscode" (exactly)
* identifier[Funktionssubcode] ^short = "Funktionssubcode der Abteilung laut LKF"
* identifier[Funktionssubcode].system = "http://example.org/lkf-system/funktionssubcode" (exactly)


* extension contains Kostenstelle named Kostenstelle 0..1



