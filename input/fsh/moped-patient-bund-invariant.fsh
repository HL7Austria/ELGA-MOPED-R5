Profile: MOPEDPatientBundInvariant
Parent: HL7ATCorePatient
Title: "MOPED Patient Bund Invariant"
Description: "MOPED Profil der Patient Ressource aus der Sicht der Rolle: Bund (invariant)"
* obeys moped-inv-bund-patient

Invariant:    moped-inv-bund-patient
Description:  "Eine Ressource die diesem Profil entspricht, darf, außer den in dieser Invariante explizit gewhitelisteten Elementen (inkl. Sub-Elemente) nur den Wert des Ressourcen-Typs 'Patient' beinhalten, welcher mit dieser Expression nicht ausgeschlossen werden kann."
Expression:   "descendants().exclude(Patient.gender | Patient.address.where(extension.url = 'http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-ext-address-municipalityCode') | Patient.address.extension.where(url = 'http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-ext-address-municipalityCode') | Patient.address.extension.where(url = 'http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-ext-address-municipalityCode').descendants() | Patient.resourceType).exists().not()"
Severity:     #error