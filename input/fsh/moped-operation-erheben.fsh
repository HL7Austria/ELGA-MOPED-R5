Instance: MopedAbrechnungFreigeben
InstanceOf: OperationDefinition
Title: "MOPED LKFRequest $erheben (POC)"
Description: "Die $erheben Operation wird aufgerufen, wenn ein Questionnaire in form eines QuestionnaireResponse für einen bestimmten Encounter ausgefüllt wird."
Usage: #definition
* purpose = """

**Wer ruft diese Operation in welchem Zusammenhang auf?**

Die Operation wird vom Akteur Krankenhaus (KH) aufgerufen. Die $erheben Operation wird aufgerufen, wenn ein Fragebogen im Zugsammenhang mit einem Aufenthalt ausgefüllt werden soll. Diese Operation hat keine Auswirkung auf den Prozess-Workflow-Status.

**Voraussetzungen für den Aufruf**

* Account-Status: `Aufnahme in Arbeit` oder `Aufnahme freigegeben` oder `SV verarbeitet` oder `Entlassung Aviso` oder `Entlassung vollständig` oder `vorläufige Meldung` oder `LKF Korrekturaufforderung` oder `Vorläufige Freigabe` oder `Endgültige Meldung` oder `Endgültige Freigabe`


**Detaillierte Business-Logik**
* Referenzen in den Input-Parametern werden technisch mit Hilfe von conditional References realisiert. Diese müssen aufgelöst werden.


**Validierung / Fehlerbehandlung**
* QuestionnaireResponse.encounter.serviceProvider = QuestionnaireResponse.source
* QuestionnaireResponse.subject = QuestionnaireResponse.encounter.subject


**Weitere Hinweise**


**Annahmen an das BeS**
* Es wurde vorab geprüft, ob die QuestionnaireResponse.source vorhanden ist und auch dem KH entspricht, das die Operation aufruft. Somit ist sichergestellt, dass jedes KH nur eigens erhobene Fragebögen einbringen kann.

"""

* id = "MOPED.QuestionnaireResponse.erheben"
* name = "MOPED_QuestionnaireResponse_Erheben"
* status = #draft
* kind = #operation
* affectsState = true
* resource = #QuestionnaireResponse
* system = false
* type = true
* instance = false
* code = #erheben
* parameter[+]
  * name = #QuestionnaireResponse
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "Der *QuestionnaireResponse* Parameter beinhaltet den befüllten Questionnaire als Form eines QuestionnaireResponse."
  * type = #QuestionnaireResponse
* parameter[+]
  * name = #return
  * use = #out
  * min = 1
  * max = "1"
  * documentation = "Der *return* Parameter gibt Auskunft über den Erfolg der Operation."
  * type = #Resource
  * targetProfile[+] = Canonical(OperationOutcome)