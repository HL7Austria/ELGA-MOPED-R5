Instance: MopedQuestionnaireResponseEinmelden
InstanceOf: OperationDefinition
Title: "MOPED QuestionnaireResponse $einmelden"
Description: "Die $einmelden Operation wird aufgerufen, wenn eine (nicht fallbezogene) QuestionnaireResponse eingemeldet werden soll."
Usage: #definition

* id = "MOPED.QuestionnaireResponse.Einmelden"
* name = "MOPED_QuestionnaireResponse_Einmelden"
* status = #draft
* kind = #operation
* affectsState = true
* resource = #QuestionnaireResponse
* system = false
* type = true
* instance = false
* code = #einmelden
* parameter[+]
  * name = #QuestionnaireResponses
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "Der *QuestionnaireResponses* Parameter beinhaltet ein Bundle mit sämtlichen nicht fallspezifischen QuestionnaireResponses die eingebracht werden sollen."
  * type = #Bundle
  * targetProfile = Canonical(MopedQuestionnaireResponseEinmeldenBundle)
* parameter[+]
  * name = #return
  * use = #out
  * min = 1
  * max = "1"
  * documentation = "Der *return* Parameter gibt Auskunft über den Erfolg der Operation."
  * type = #Resource
  * targetProfile[+] = Canonical(OperationOutcome)