Instance: Test1OrganizationHerzJesuKrankenhaus
InstanceOf: HL7ATCoreOrganization
Title: "Herz Jesu-Krankenhaus"
Description: "Organization resource for Herz Jesu-Krankenhaus"
Usage: #example
* meta.profile = "http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/StructureDefinition/at-core-organization"
* id = "Test1OrganizationHerzJesuKrankenhaus"
* identifier[+].system = "urn:ietf:rfc:3986"
* identifier[=].value = "urn:oid:1.3.6.1.4.1.36124.5.914"
* identifier[+].system = "TBD"
* identifier[=].value = "K914" // Krankenanstaltennummer leistungserbringend
* identifier[+].system = "urn:oid:1.2.40.0.10.1.4.3.2"
* identifier[=].value = "832138" // VPNR
* name = "Herz Jesu-Krankenhaus"
* contact.telecom[0].system = #phone
* contact.telecom[0].value = "Contact details not provided" // Placeholder for contact data
* contact.address.line = "Baumgasse 20a, 1030 Wien"
* contact.address.line.extension[0].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* contact.address.line.extension[=].valueString = "Baumgasse"
* contact.address.line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* contact.address.line.extension[=].valueString = "20a"
* contact.address.city = "Wien"
* contact.address.state = "Wien"
* contact.address.postalCode = "1030"
* contact.address.country = "AUT"


Instance: Test1OrganizationUeberweisendeOrganisation
InstanceOf: HL7ATCoreOrganization
Usage: #example
* id = "Test1OrganizationUeberweisendeOrganisation"
* meta.profile = "http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/StructureDefinition/at-core-organization"
* name = "HJK Interne Ambulanz"
* contact.address.city = "Wien"
* contact.address.state = "Wien"
* contact.address.postalCode = "1030"
* contact.address.country = "AUT"



Instance: Test1OrganizationInsurance1
InstanceOf: HL7ATCoreOrganization
Usage: #example
* id = "Test1OrganizationInsurance1"
* meta.profile = "http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/StructureDefinition/at-core-organization"
* name = "Österreichische Gesundheitskasse Wien"
* alias[0] = "14"
* contact.address.line = "Wienerbergstraße 15-19, 1100 Wien"
* contact.address.line.extension[0].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* contact.address.line.extension[=].valueString = "Wienerbergstraße"
* contact.address.line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* contact.address.line.extension[=].valueString = "15-19"
* contact.address.city = "Wien"
* contact.address.state = "Wien"
* contact.address.postalCode = "1100"
* contact.address.country = "AUT"

