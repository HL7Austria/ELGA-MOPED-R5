Profile: MOPEDPatientBund
Parent: HL7ATCorePatient
Title: "MOPED Patient Bund"
Description: "MOPED Profil der Patient Ressource aus der Sicht der Rolle: Bund"

* extension[PatientReligion] 0..0
* identifier[socialSecurityNumber] 0..0
* name.extension contains DataAbsentReason named data-absent-reason 1..1
* name.extension[DataAbsentReason].valueCode = http://terminology.hl7.org/CodeSystem/data-absent-reason#masked
* telecom 0..0
* address.line 0..0
* address.city 0..0
* address.text 0..0
* birthDate 0..0