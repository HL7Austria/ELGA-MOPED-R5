Instance: Test1OrganizationAbteilung1
InstanceOf: MOPEDOrganizationAbteilung
* id = "Test1OrganizationAbteilung1"
* meta.profile = "http://example.org/StructureDefinition/MOPEDOrganizationAbteilung"
* partOf = Reference(Organization/Test1OrganizationHerzJesuKrankenhaus)
* identifier[+].value = "131180"
* identifier[=].system = "http://example.org/lkf-system/funktionscode"
* identifier[+].value = "00"
* identifier[=].system = "http://example.org/lkf-system/funktionssubcode"
* extension[+].url = "http://example.org/StructureDefinition/moped-ext-Kostenstelle"
* extension[=].extension[+].url = "InterneKostenstellennummer"
* extension[=].extension[=].valueUnsignedInt = 11160
* extension[=].extension[+].url = "InterneKostenstellenbezeichnung"
* extension[=].extension[=].valueString = "Schlaflabor (Interne)"
* extension[=].extension[+].url = "SpezielleOrganisationsform"
* extension[=].extension[=].valueCoding.system = $SpezielleOrganisationsform
* extension[=].extension[=].valueCoding.code = #A
* extension[=].extension[+].url = "KostenstellenJahr"
* extension[=].extension[=].valueDate = "2024"
