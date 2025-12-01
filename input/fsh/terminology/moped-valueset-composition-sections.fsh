CodeSystem: CompositionSectionsCS
Title: "Moped Composition Sections"
Description: "CodeSystem für die Moped Sections der Composition Ressource"
* ^status = #active
* ^experimental = true
* ^caseSensitive = true
* #SV "Zuständige SV"
* #LGF "Zuständiger LGF"
* #KH "Zuständiges KH"
* #ABT "Besuchte Abteilungen"
* #COV "Coverages"
* #DIAG "Diagnosen (Conditions)"
* #LEI "Leistungen (Procedures)"
* #OBS "Observations"
* #HAUPTV "Hauptversicherter"
* #QRESP "QuestionnaireResponses"
* #ARKPAY "ARK Status Updates"
* #COMM "Communication & Responses"

ValueSet: CompositionSectionsVS
Title: "Moped Composition Sections ValueSet"
Description: "ValueSet für die Moped Sections der Composition Ressource"
* ^experimental = true
* include codes from system CompositionSectionsCS
* https://elga.moped.at/CodeSystem/MopedEncounterTypesCS#ENC 
* https://elga.moped.at/CodeSystem/MopedEncounterTypesCS#TENC
* https://elga.moped.at/CodeSystem/MopedClaimTypeCS#ARKREQ
* https://elga.moped.at/CodeSystem/MopedClaimTypeCS#ARKRESP
* https://elga.moped.at/CodeSystem/MopedClaimTypeCS#VAEREQ
* https://elga.moped.at/CodeSystem/MopedClaimTypeCS#VAERESP
* https://elga.moped.at/CodeSystem/MopedClaimTypeCS#LKFREQ
* https://elga.moped.at/CodeSystem/MopedClaimTypeCS#LKFRESP
