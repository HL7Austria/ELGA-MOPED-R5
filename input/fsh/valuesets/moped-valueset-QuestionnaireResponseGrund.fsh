CodeSystem: QuestionnaireResponseGrundCS
Title: "Moped Grund für die QuestionnaireResponse"
Description: "Gründe für die QuestionnaireResponse"
* ^status = #active
* ^experimental = true
* ^caseSensitive = true

* #IntensivAufnahme "Aufnahme auf die Intensivstation"
* #IntensivTaeglich "Tägliche Beurteilung auf der Intensivstation"
* #StrokeUnit "Aufenthalt auf der StrokeUnit"
* #Krebs "Krebserkrankung"

ValueSet: QuestionnaireResponseGrundVS
Title: "Moped Grund für die QuestionnaireResponse"
Description: "Gründe für die QuestionnaireResponse"
* ^experimental = true
* include codes from system QuestionnaireResponseGrundCS
