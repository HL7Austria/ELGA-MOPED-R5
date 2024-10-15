Profile: MOPEDLKFLeistungsabrechnungsUndDatenmeldungsBundle
Parent: Bundle
Title: "LKF Leistungsabrechnung und Datenmeldung - Bundle"
Description: "LKF Bundle für die Leistungsabrechnung und Datenmeldung"
* implicitRules 0..0
* type = #transaction
* entry 1..*
* entry ^slicing.discriminator[0].type = #type
* entry ^slicing.discriminator[=].path = "resource"
* entry ^slicing.discriminator[+].type = #profile
* entry ^slicing.discriminator[=].path = "resource"
* entry ^slicing.rules = #open
* entry contains 
    claim 0..1 and
    encounter 1..1 and
    transferencounter 0.. and
    condition 0.. and
    leistungen 0.. and
    kh 1..1 and
    abteilung 0.. and
    patient 0..1 and
    account 0..1 and
    versicherung 0..1 and
    kostentraeger 1..1 and
    coverage 0..1 and
    coverageeligibilityrequest 0.. and
    coverageeligibilityresponse 0..
* entry[claim].resource 1..
* entry[claim].resource only MOPEDClaim   
* entry[encounter].resource 1..
* entry[encounter].resource only LKFEncounter
* entry[kh].resource 1..
* entry[kh].resource only LKFKA
* entry[transferencounter].resource 1..
* entry[transferencounter].resource only LKFTransferEncounter
* entry[condition].resource 1..
* entry[condition].resource only Condition
* entry[leistungen].resource 1..
* entry[leistungen].resource only Procedure
* entry[abteilung].resource 1..
* entry[abteilung].resource only LKFOrganizationAbteilung
* entry[patient].resource 1..
* entry[patient].resource only LKFPatient
* entry[account].resource 1..
* entry[account].resource only LKFAccount
* entry[versicherung].resource 1..
* entry[versicherung].resource only LKFVersicherung
* entry[kostentraeger].resource 1..
* entry[kostentraeger].resource only LKFLeistungszustaendigerKostentraeger
* entry[coverage].resource 1..
* entry[coverage].resource only LKFCoverage
* entry[coverageeligibilityrequest].resource 1..
* entry[coverageeligibilityrequest].resource only LKFCoverageEligibilityRequest
* entry[coverageeligibilityresponse].resource 1..
* entry[coverageeligibilityresponse].resource only LKFCoverageEligibilityResponse