Instance: Test1Claim1
InstanceOf: MOPEDClaim
Usage: #example
* id = "Test1Claim1"
* status = #active
* type = http://terminology.hl7.org/CodeSystem/claim-type#institutional
* use = #claim
* created = "2024-10-31"
* patient = Reference(Patient/Test1Patient)
* procedure[+].procedureReference = Reference(Procedure/Test1Procedure1)
* procedure[=].extension[AbrechnungsRelevanz].valueCoding = $AbrechnungsRelevanz#J
* procedure[=].sequence = 1
* diagnosis[+].diagnosisReference = Reference(Condition/Test1Condition1)
* diagnosis[=].sequence = 1
* diagnosisRelatedGroup = $LKFAbrechnungsGruppe#HDG01.31
* extension[DiagnoseKnoten].valueCoding = $LKFAbrechnungsKnoten#D

* insurer = Reference(Organization/Test1OrganizationInsurance1)
* provider = Reference(Organization/Test1OrganizationHerzJesuKrankenhaus)
* insurance[+].coverage = Reference(Coverage/Test1SVCCoverage)
* insurance[=].sequence = 1
* insurance[=].focal = true
* encounter[+] = Reference(Encounter/Test1MOPEDEncounter)
* encounter[+] = Reference(Encounter/Test1TransferEncounter1)
* extension[Fondsrelevanz].valueCoding = $Fondsrelevanz#J
* extension[LkfPunkte] = Test1LKFPunkte1

Instance:    Test1LKFPunkte1
InstanceOf:  LkfPunkte
Description: "Beispiel des Testfall 1 für eine LKF Punkte Extension"
Usage:       #inline
* extension[PunkteBelagsdauerausreisserUntenLeistungskomponente].valueUnsignedInt = 0
* extension[PunkteBelagsdauerausreisserUntenTageskomponente].valueUnsignedInt = 0
* extension[ZusatzpunkteBelagsdauerausreisserNachOben].valueUnsignedInt = 0
* extension[ZusatzpunkteIntensiv].valueUnsignedInt = 0
* extension[ZusatzpunkteMehrfachleistungen].valueUnsignedInt = 0
* extension[PunkteSpeziellerBereicheTageweise].valueUnsignedInt = 0
* extension[PunkteTotal].valueUnsignedInt = 1110
* extension[Leistungskomponente].valueUnsignedInt = 743
* extension[TageskomponenteKontaktpunkte].valueUnsignedInt = 367