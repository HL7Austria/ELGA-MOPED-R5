Instance: MopedQuestionnaireResponseErheben
InstanceOf: OperationDefinition
Title: "MOPED QuestionnaireResponse $erheben"
Description: "Die $erheben Operation wird aufgerufen, wenn ein Fragebogen für einen bestimmten Fall eingemeldet wird."
Usage: #definition

* id = "MOPED.QuestionnaireResponse.Erheben"
* name = "MOPED_QuestionnaireResponse.Erheben"
* status = #draft
* kind = #operation 
* affectsState = true
* resource = #QuestionnaireResponse
* system = false
* type = true
* instance = false
* code = #erheben
* parameter[+]
  * name = #compositionID
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "Der *compositionID* Parameter beinhaltet die technische ID (inklusive Version) der Composition des zu bearbeitenden Falls"
  * type = #id
* parameter[+]
  * name = #aufnahmezahl
  * use = #in 
  * min = 1
  * max = "1"
  * documentation = "Der *aufnahmezahl* Parameter beinhaltet den eindeutigen Identifizierer für den relevanten Fall."
  * type = #Identifier
* parameter[+]
  * name = #fragebogen
  * use = #in 
  * min = 1
  * max = "1"
  * documentation = "Der *fragebogen* Parameter übermittelt den abzuspeichernden ausgefüllten Fragebogen über einen bestimmten Fall."
  * type = #Resource
  * targetProfile[+] = Canonical(MopedQuestionnaireResponse)
* parameter[+]
  * name = #return
  * use = #out
  * min = 1
  * max = "1"
  * documentation = "Der *return* Parameter gibt Auskunft über den Erfolg der Operation."
  * type = #Resource
  * targetProfile[+] = Canonical(OperationOutcome)