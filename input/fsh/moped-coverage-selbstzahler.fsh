Profile: MOPEDCoverageSelbstzahler
Parent: Coverage
Description: "MOPED Profil der Coverage Ressource für Selbstzahler"


* kind = #self-pay
* paymentBy.party only Reference(HL7ATCorePatient)
* beneficiary only Reference(HL7ATCorePatient)
* subscriber only Reference(HL7ATCorePatient)
/*
* extension contains
    RezeptgebbefreitExtension named RezeptgebbefreitExtension 0..1 and
    KostenanteilbefreitExtension named KostenanteilbefreitExtension 0..1
*/

