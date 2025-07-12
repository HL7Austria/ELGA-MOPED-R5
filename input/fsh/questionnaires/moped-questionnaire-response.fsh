Profile: MopedQuestionnaireResponse
Parent: QuestionnaireResponse
Description: "MOPED Profil für QuestionnaireResponses die im Kontext von Moped erhoben werden"
Title: "Moped QuestionnaireResponse"

* questionnaire 1..1
* subject only Reference(HL7ATCorePatient)
* subject 1..1
* encounter only Reference(MopedEncounter)
* encounter 1..1
* authored 1..1
* author only Reference(KHOrganization)
* author 1..1