Instance: PJ2LKFResponse1
InstanceOf: MopedLKFResponse
Description: "Hackathon Patient Journey 2 Beispiel: LKFResponse 1"
Usage: #example
* meta.profile = "https://elga.moped.at/StructureDefinition/MopedLKFResponse"
* status = #active
* type = http://terminology.hl7.org/CodeSystem/claim-type#institutional
* use = http://hl7.org/fhir/claim-use#claim
* patient = Reference(PJ2Patient)
* created = "2025-02-24"
* request = Reference(PJ2LKFRequest1)


* outcome = #complete
* diagnosisRelatedGroup.coding = LKFHauptdiagnosegruppenCS#HDG15.03

* extension[DiagnoseKnoten].valueCoding = LKFAbrechnungsKnotenCS#C
* extension[LKFPunkte].extension[PunkteBelagsdauerausreisserUntenLeistungskomponente].valueUnsignedInt = 0
* extension[LKFPunkte].extension[PunkteBelagsdauerausreisserUntenTageskomponente].valueUnsignedInt = 0
* extension[LKFPunkte].extension[ZusatzpunkteBelagsdauerausreisserNachOben].valueUnsignedInt = 0
* extension[LKFPunkte].extension[ZusatzpunkteIntensiv].valueUnsignedInt = 0
* extension[LKFPunkte].extension[ZusatzpunkteMehrfachleistungen].valueUnsignedInt = 0
* extension[LKFPunkte].extension[PunkteSpeziellerBereicheTageweise].valueUnsignedInt = 0
* extension[LKFPunkte].extension[PunkteTotal].valueUnsignedInt = 1384
* extension[LKFPunkte].extension[Leistungskomponente].valueUnsignedInt = 62
* extension[LKFPunkte].extension[TageskomponenteKontaktpunkte].valueUnsignedInt = 1322

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
