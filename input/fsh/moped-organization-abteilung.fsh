Profile: MOPEDOrganizationAbteilung
Parent: Organization
Description: "MOPED Profil für Abteilungen innerhalb einer Krankenanstalt."

* partOf only Reference(HL7ATCoreOrganization)
* partOf ^short = "Krankenanstalt zu welcher die Abteilung gehört"

//Slice for identifier
* identifier ^slicing.rules = #open
* identifier ^slicing.discriminator.type = #type
* identifier ^slicing.discriminator.path = "type.coding.code"
* identifier ^slicing.ordered = false
* identifier contains Funktionscode 0..1 and Funktionssubcode 0..1
* identifier[Funktionscode] ^short = "Funktionscode der Abteilung laut LKF"
* identifier[Funktionscode].type = #Funktionscode (exactly)
* identifier[Funktionssubcode] ^short = "Funktionssubcode der Abteilung laut LKF"
* identifier[Funktionssubcode].type = #Funktionssubcode (exactly)


* extension contains Kostenstelle named Kostenstelle 0..1



