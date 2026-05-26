Profile: AtMopedBundleUpdateKA
Parent: AtMopedBundleInputKA
Id: at-moped-bundle-update-KA
Title: "AT MOPED Bundle $update KA"
Description: """MOPED Profil der Bundle Ressource für die Input-Ressourcen beim Update von Informationen zu einem Fall"""
* entry[Aufenthalt].resource only AtMopedEncounterAufenthaltStationaerBasis or AtMopedEncounterBesuchAmbulantBasis
* entry[Aufenthalt].request.method = $HTTPVerb#PUT
* entry[Aufenthalt].request.method ^short = "PUT"
* entry[Patient].resource only AtMopedPatientvbPKBasis or AtMopedPatientKlarnameBasis
* entry[Patient].request.method = $HTTPVerb#PUT
* entry[Patient].request.method ^short = "PUT"
