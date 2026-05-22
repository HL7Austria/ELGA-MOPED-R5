Profile: AtMopedBundleQuestionnaireResponseEinmeldenKA
Parent: Bundle
Id: at-moped-bundle-questionnaireresponse-einmelden-KA
Title: "AT MOPED Bundle QuestionnaireResponse $einmelden Profil"
Description: """MOPED Profil der Bundle Ressource für die Input-Ressourcen beim Einmelden von nicht fallspezifischen QuestionnaireResponses"""


* type = #transaction
* entry 1..*
* entry.resource only AtMopedQuestionnaireResponseNichtFallbezogen
* entry.request.method from HTTPVerbInsertUpdateDeleteVS
// TBD method abklären
* entry.request.method ^short = "POST | PUT | DELETE"