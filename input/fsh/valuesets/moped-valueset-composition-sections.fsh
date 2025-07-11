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
* #VAEReq "VAERequests"
* #VAEResp "VAEResponses"
* #LKFReq "LKFRequests"
* #LKFResp "LKFResponses"
* #HAUPTV "Hauptversicherter"
* #QResp "QuestionnaireResponses"
* #ARKReq "ARK Requests"
* #ARKResp "ARK Responses"
* #ARKPay "ARK Status Updates"

ValueSet: CompositionSectionsVS
Title: "Moped Composition Sections ValueSet"
Description: "ValueSet für die Moped Sections der Composition Ressource"
* ^experimental = true
* include codes from system CompositionSectionsCS
* https://elga.moped.at/CodeSystem/MopedEncounterTypesCS#ENC 
* https://elga.moped.at/CodeSystem/MopedEncounterTypesCS#TENC

