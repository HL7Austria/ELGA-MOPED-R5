
Profile: MOPEDCoverageEligibilityResponse
Parent: CoverageEligibilityResponse
Description: "MOPED Profil der CoverageEligibilityResponse Ressource für die Versichertenanspruchserklärung-Antwort."


* patient only Reference(HL7ATCorePatient)

* extension contains Fristende named fristende 0..1
* extension contains VAEStatus named vaeStatus 0..1
* extension contains VerpflegskostenBeitragsbefreiung named verpflegskostenBeitragsbefreiung 0..1
* extension contains VortageanzahlAufKostenbeitrag named vortageanzahlAufKostenbeitrag 0..1

* insurance.coverage only Reference(SVCCoverage)