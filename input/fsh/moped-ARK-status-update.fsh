Profile: MopedARKStatusUpdate
Parent: PaymentReconciliation
Title: "MOPED ARK Status Update - PaymentReconciliation"
Description: "MOPED Profil für Statusupdates zur Ausländerverrechnung oder zum Regress"

* referenceNumber ^short = "Zahlungsidentifikation"
* allocation 1..
* allocation.type from MopedPaymentTypesVS
* insert ShallPopulateObligation(allocation.type, MopedSVActor)
* allocation.target only Reference(MopedARKRequest)
* allocation.target 1..1
* insert ShallPopulateObligation(allocation.target, MopedSVActor)
* allocation.extension contains ReasonForNonPayment named KeineZahlungGrund 0..1
* allocation.extension[KeineZahlungGrund] ^short = "KaOrg: Grund, warum keine Zahlung erfolgte"
* insert ShallPopulateObligation(allocation.extension[KeineZahlungGrund], MopedSVActor)
* allocation.extension contains Zahlungskennzeichen named Zahlungskennzeichen 1..1
* allocation.extension[Zahlungskennzeichen] ^short = "KaOrg: Zahlungskennzeichen Regress"
* insert ShallPopulateObligation(allocation.extension[Zahlungskennzeichen], MopedSVActor)
* extension contains PaymentPercentage named Zahlungsprozentsatz 0..1
* extension[PaymentPercentage] ^short = "KaOrg: Prozentsatz der Zahlung"
* insert ShallPopulateObligation(extension[Zahlungsprozentsatz], MopedSVActor)
* amount.currency = urn:iso:std:iso:421#EUR	 //remove after the cardinality is relaxed in R6
* insert ShallPopulateObligation(amount.currency, MopedSVActor)
