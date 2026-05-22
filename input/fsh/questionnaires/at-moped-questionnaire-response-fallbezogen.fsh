Profile: AtMopedQuestionnaireResponseFallbezogen
Parent: QuestionnaireResponse
Id: at-moped-questionnaireresponse-fallbezogen
Title: "AT MOPED QuestionnaireResponse fallbezogenes Profil"
Description: "MOPED Profil der QuestionnaireResponse Ressource für QuestionnnaireResponses die im Kontext von Moped mit Fallbezug erhoben werden"

* questionnaire 1..1
* subject only Reference(AtMopedPatientvbPKBasis or AtMopedPatientKlarnameBasis)
* subject 1..1
* encounter only only Reference(AtMopedEncounterAufenthaltStationaerBasis or AtMopedEncounterBesuchAmbulantBasis)
* encounter 1..1
* authored 1..1
* author only Reference(AtMopedOrganizationKA)
* author 1..1
* item 1..