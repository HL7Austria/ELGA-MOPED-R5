Instance: Test1OrganizationAbteilung1
InstanceOf: MOPEDOrganizationAbteilung
* id = "Test1OrganizationAbteilung1"
* meta.profile = "http://example.org/StructureDefinition/MOPEDOrganizationAbteilung"
* partOf = Reference(Organization/Test1OrganizationHerzJesuKrankenhaus)
* identifier[+].type = #Funktionscode
* identifier[=].value = "131180"
* identifier[+].type = #Funktionssubcode
* identifier[=].value = "00"
* extension[+].url = "http://example.org/StructureDefinition/moped-ext-Kostenstelle"
* extension[=].extension[+].url = "InterneKostenstellennummer"
* extension[=].extension[=].valueUnsignedInt = 11160
* extension[=].extension[+].url = "InterneKostenstellenbezeichnung"
* extension[=].extension[=].valueString = "Schlaflabor (Interne)"
* extension[=].extension[+].url = "SpezielleOrganisationsform"
* extension[=].extension[=].valueCode = #A
* extension[=].extension[+].url = "KostenstellenJahr"
* extension[=].extension[=].valueDate = "2024"
