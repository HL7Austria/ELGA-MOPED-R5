Profile: MOPEDPatientBundInvariant
Parent: HL7ATCorePatient
Title: "MOPED Patient Bund Invariant"
Description: "MOPED Profil der Patient Ressource aus der Sicht der Rolle: Bund (invariant)"

Invariant:    moped-inv-bund-patient
Description:  "Eine Ressource die diesem Profil entspricht, darf, außer den in dieser Invariante explizit gewhitelisteten Elementen (inkl. Sub-Elemente) nur den Wert des Ressourcen-Typs 'Patient' beinhalten, welcher mit dieser Expression nicht ausgeschlossen werden kann."
Expression:   "descendants().exclude(Patient.gender | Patient.managingOrganization | Patient.managingOrganization.reference) = 'Patient'"
Severity:     #error