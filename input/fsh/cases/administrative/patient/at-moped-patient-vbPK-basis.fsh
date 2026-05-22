Profile: AtMopedPatientvbPKBasis
Parent: AtMopedPatientGenerisch
Id: at-moped-patient-vbPK-basis
Title : "AT MOPED Patient vbPK Basis Profil"
Description: "MOPED Profil der Patienten Ressource mit vbPKs"
* insert MappingHeaderEinfuegen

//TBD name 0..0 if changes in HL7ATCore are approved
* name 1..1 MS

* name.family 0..0
* name.given 0..0

//TBD remove name.extension if changes in HL7ATCore are approved
* name.extension 1..1
* name.extension contains DataAbsentReason named data-absent-reason 1..1
* name.extension[DataAbsentReason].valueCode = $DataAbsentReason#masked (exactly)
* insert ShallPopulateObligation(name.extension[DataAbsentReason], MopedKAActor)

* address.city 0..0
* address.line 0..0

