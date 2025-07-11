Profile: MopedARKStatusUpdate
Parent: PaymentReconciliation
Title: "MOPED ARK Status Update - PaymentReconciliation"
Description: "MOPED Profil für Statusupdates zur Ausländerverrechnung oder zum Regress"

* referenceNumber ^short = "Zahlungsidentifikation"
* allocation 1..
* allocation.type from MopedPaymentTypesVS
* allocation.target only Reference(MopedARKRequest)
* allocation.target 1..1
* allocation.extension contains ReasonForNonPayment named KeineZahlungGrund 0..1
* allocation.extension contains Zahlungskennzeichen named Zahlungskennzeichen 1..1
* extension contains PaymentPercentage named Zahlungsprozentsatz 0..1
* amount.currency = urn:iso:std:iso:421#EUR	 //remove after the cardinality is relaxed in R6
