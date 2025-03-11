Instance: PJ1LKFResponse1
InstanceOf: MopedLKFResponse
Description: "Hackathon Patient Journey 1 Beispiel: LKFResponse 1"
Usage: #example
* meta.profile = "https://elga.moped.at/StructureDefinition/MopedLKFResponse"
* status = #active
* type = http://terminology.hl7.org/CodeSystem/claim-type#institutional
* use = http://hl7.org/fhir/claim-use#claim
* patient = Reference(PJ1Patient)
* created = "2024-10-31"
* insurer = Reference(oegk-wien)
* requestor = Reference(OrganizationHerzJesuKrankenhaus)
* request = Reference(PJ1LKFRequest1)

* insurance.coverage = Reference(PJ1Coverage)
* insurance.sequence = 1
* insurance.focal = true
* outcome = #complete
* diagnosisRelatedGroup.coding = LKFHauptdiagnosegruppenCS#HDG01.31

* extension[DiagnoseKnoten].valueCoding = LKFAbrechnungsKnotenCS#D
* extension[LKFPunkte].extension[PunkteBelagsdauerausreisserUntenLeistungskomponente].valueUnsignedInt = 0
* extension[LKFPunkte].extension[PunkteBelagsdauerausreisserUntenTageskomponente].valueUnsignedInt = 0
* extension[LKFPunkte].extension[ZusatzpunkteBelagsdauerausreisserNachOben].valueUnsignedInt = 0
* extension[LKFPunkte].extension[ZusatzpunkteIntensiv].valueUnsignedInt = 0
* extension[LKFPunkte].extension[ZusatzpunkteMehrfachleistungen].valueUnsignedInt = 0
* extension[LKFPunkte].extension[PunkteSpeziellerBereicheTageweise].valueUnsignedInt = 0
* extension[LKFPunkte].extension[PunkteTotal].valueUnsignedInt = 1110
* extension[LKFPunkte].extension[Leistungskomponente].valueUnsignedInt = 743
* extension[LKFPunkte].extension[TageskomponenteKontaktpunkte].valueUnsignedInt = 367

* extension[LDFPunktewertNetto].valueDecimal = 14892
* extension[LDFBetragNetto].valueDecimal = 165301
* extension[PatientenanteilAngehoerige].valueMoney.value = 0
* extension[Patientenanteil].valueMoney.value = 0
* extension[Beihilfenaequivalent].valueUnsignedInt = 1111
* extension[ForderungsbetragAuslaenderverrechnungRegress].valueMoney.value = 0
//* extension[RechnungsnummerKHLGF] = 
//* extension[Sonderleistungsnummer]
//* extension[AnzahlSonderleistungen]
* extension[PunkteLDFPauschale].valueDecimal = 1110
* extension[KonstenmeldungARK].valueCoding = KostenmeldungARKCS#K
