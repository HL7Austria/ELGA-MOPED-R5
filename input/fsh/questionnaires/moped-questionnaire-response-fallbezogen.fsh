Profile: MopedQuestionnaireResponseFallbezogen
Parent: QuestionnaireResponse
Description: "MOPED Profil für QuestionnaireResponses die im Kontext von Moped mit Fallbezug erhoben werden"
Title: "Moped QuestionnaireResponse fallbezogen"

* questionnaire 1..1
* subject only Reference(MopedBasisPatientvbPK or MopedBasisPatientKlarname)
* subject 1..1
* encounter only Reference(MopedEncounter)
* encounter 1..1
* authored 1..1
* author only Reference(KAOrganization)
* author 1..1
* item 1..