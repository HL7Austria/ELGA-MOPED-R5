Invariant: mandatory-gemeindecode-for-AUT
Severity: #error
Description: "Der Gemeindecode ist für inländische Patienten verpflichtend anzugeben"
Expression: "address.where(country = 'AUT').extension.where(url = 'http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/StructureDefinition/at-core-ext-address-municipalityCode').exists()" 

Invariant: mandatory-postal-code-for-AUT
Severity: #error
Description: "Die Postleitzahl ist für inländische Patienten verpflichtend anzugeben"
Expression: "address.where(country = 'AUT').postalCode.exists()" 