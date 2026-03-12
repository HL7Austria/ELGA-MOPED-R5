Profile: MopedQuestionnaireResponseEinmeldenBundle
Parent: Bundle
Title: "MOPED QuestionnaireResponse einmelden Bundle"
Description: """Bundle für die Input-Ressourcen beim Einmelden von nicht fallspezifischen QuestionnaireResponses"""


* type = #transaction
* entry 1..*
* entry.resource only MopedQuestionnaireResponseNichtFallbezogen
* entry.request.method from HTTPVerbInsertUpdateDeleteVS
// TBD method abklären
* entry.request.method ^short = "POST | PUT | DELETE"