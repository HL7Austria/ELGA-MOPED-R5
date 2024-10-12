Profile: MOPEDLKFMBDSBundle
Parent: Bundle
Description: "Bundle, welches den kompletten MBDS Datensatz enthält"
Title: "LKF MBDS Bundle"
* implicitRules 0..0
* type = #transaction
* entry 1..*
* entry ^slicing.discriminator[0].type = #type
* entry ^slicing.discriminator[=].path = "resource"
* entry ^slicing.discriminator[+].type = #profile
* entry ^slicing.discriminator[=].path = "resource"
* entry ^slicing.rules = #open
* entry contains 
    claim 1..1 and
    claimresponse 1..1 and
    encounter 1..1 and
    transferencounter 1.. and
    condition 1.. and
    leistungen 1.. and
    kh 1..1 and
    abteilung 1.. and
    patient 1..1
    account 1..1 and
    versicherung 1..1 and
    kostentraeger 1..1 and
    coverage 1..1 and
* entry[claim].resource 1..
* entry[claim].resource only MOPEDClaim   
* entry[claimresponse].resource 1..
* entry[claimresponse].resource only MOPEDClaimResponse
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

