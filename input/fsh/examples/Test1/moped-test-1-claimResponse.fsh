Instance: Test1ClaimResponse1
InstanceOf: MOPEDClaimResponse
Usage: #example
* id = "Test1ClaimResponse1"
* status = #active
* type.coding.code = http://terminology.hl7.org/CodeSystem/claim-type#institutional
* use = #claim
* patient = Reference(Patient/Test1Patient)
* outcome = #completed
* created = "2024-11-01"
* diagnosisRelatedGroup = $LKFAbrechnungsGruppe#HDG01.31
* extension[DiagnoseKnoten].valueCoding = $LKFAbrechnungsKnoten#D

* insurer = Reference(Organization/Test1OrganizationInsurance1)
* request = Reference(Claim/Test1Claim1)
* requestor = Reference(Organization/Test1OrganizationHerzJesuKrankenhaus)

* insurance[+].coverage = Reference(Coverage/Test1SVCCoverage)
* insurance[=].sequence = 1
* insurance[=].focal = true

* extension[LDFPunktewertNetto].valueDecimal = 14892
* extension[LDFBetragNetto].valueDecimal = 165301
* extension[PatientenanteilAngehoerige].valueDecimal  = 0
* extension[Patientenanteil].valueDecimal  = 0
* extension[Beihilfenaequivalent].valueDecimal  = 1111
* extension[ForderungsbetragAuslaenderverrechnungRegress].valueDecimal  = 0
* extension[PunkteLDFPauschale].valueDecimal  = 1110
* extension[KonstenmeldungARK].valueCoding = $KostenmeldungARK#K "Kosteninformation"
* extension[LkfPunkte] = Test1LKFPunkte1

Instance:    Test1LKFPunkte2
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