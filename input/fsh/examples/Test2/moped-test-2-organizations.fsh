Instance: Test2OrganizationKrankenhausRied
InstanceOf: HL7ATCoreOrganization
Title: "Krankenhaus der Barmherzigen Schwestern vom Hl. Vinzenz von Paul Ried"
Description: "Organization Ressource für das Krankenhaus der Barmherzigen Schwestern vom Hl. Vinzenz von Paul Ried"
Usage: #example
* id = "Test2OrganizationKrankenhausRied"
* meta.profile = "http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/StructureDefinition/at-core-organization"
* identifier[+].system = "urn:ietf:rfc:3986"
* identifier[=].value = "urn:oid:1.3.6.1.4.1.36124.5.427"
* identifier[+].system = "TBD"
* identifier[=].value = "K427" // Krankenanstaltennummer leistungserbringend
* identifier[+].system = "urn:oid:1.2.40.0.10.1.4.3.2"
* identifier[=].value = "827378" // VPNR
* name = "Krankenhaus der Barmherzigen Schwestern vom Hl. Vinzenz von Paul Ried"
* contact.address.line = "Schlossberg 1, 4910 Ried im Innkreis"
* contact.address.line.extension[0].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* contact.address.line.extension[=].valueString = "Schlossberg"
* contact.address.line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* contact.address.line.extension[=].valueString = "1"
* contact.address.city = "Ried im Innkreis"
* contact.address.state = "Oberösterreich"
* contact.address.postalCode = "4910"
* contact.address.country = "AUT"
* contact.telecom[0].system = #phone
* contact.telecom[0].value = "Contact details not provided" // Placeholder for contact data





Instance: Test2OrganizationUeberweisendeOrganisation
InstanceOf: HL7ATCoreOrganization
Usage: #example
* id = "Test2OrganizationUeberweisendeOrganisation"
* meta.profile = "http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/StructureDefinition/at-core-organization"
* identifier[+].system = "urn:oid:1.2.40.0.10.1.4.3.2"
* identifier[=].value = "233853" // VPNR



Instance: Test2OrganizationInsurance1
InstanceOf: HL7ATCoreOrganization
Usage: #example
* id = "Test2OrganizationInsurance1"
* meta.profile = "http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/StructureDefinition/at-core-organization"
* name = "Österreichische Gesundheitskasse Oberösterreich"
* alias[0] = "14"
* contact.address.line = "Gruberstraße 77, 4021 Linz"
* contact.address.line.extension[0].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* contact.address.line.extension[=].valueString = "Gruberstraße"
* contact.address.line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* contact.address.line.extension[=].valueString = "77"
* contact.address.city = "Linz"
* contact.address.state = "Oberösterreich"
* contact.address.postalCode = "4021"
* contact.address.country = "AUT"
