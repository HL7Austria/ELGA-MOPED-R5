Instance: MopedFragebogenErheben
InstanceOf: OperationDefinition
Title: "MOPED QuestionnaireResponse $erheben (POC)"
Description: "Die $erheben Operation wird aufgerufen, wenn ein Fragebogen für einen bestimmten Fall eingemeldet wird."
Usage: #definition 
* purpose = """
**Wer ruft diese Operation in welchem Zusammenhang auf?**

Die Operation wird vom Akteur Krankenhaus (KH) aufgerufen. Die $erheben Operation wird aufgerufen, wenn ein Fragebogen für einen bestimmten Fall eingemeldet wird.

**Voraussetzungen für den Aufruf**

* Account-Status: `Aufnahme in Arbeit`, `Aufnahme freigegeben`, `SV verarbeitet`, `Entlassung Aviso`, `Entlassung vollständig`, `vorläufige Meldung` oder `Endgültige Meldung` oder `vorläufige Freigabe` oder `LGF Korrekturaufforderung` oder `Endgültige Korrekturaufforderung` oder `Endgültige Freigabe`

**Detaillierte Business-Logik**

1. Die conditional References der QuestionnaireResponse werden aufgelöst und die Ressource wird abgespeichert.

**Validierung / Fehlerbehandlung**
* Die Aufnahmezahl lt. Operation-Parameter muss die gleiche sein wie im Encounter mit dem Pfad QuestionnaireResponse.encounter (QuestionnaireResponse lt. Operation-Parameter *fragebogen*)
* *QuestionnaireResponse.subject* muss gleich sein wie *QuestionnaireResponse.enocunter.subject*
* *QuestionnaireResponse.source* muss gleich sein wie *QuestionnaireResponse.enocunter.serviceProvider*


**Weitere Hinweise**


**Annahmen an das BeS**
* Es wurde vorab geprüft, ob das `system` des Parameters `aufnahmezahl` dem GDA entspricht, der die Operation aufruft. Somit ist sichergestellt, dass nur eigene Fälle entlassen werden können.

"""

* id = "MOPED.Patient.Entlassen"
* name = "MOPED_Patient_Entlassen"
* status = #draft
* kind = #operation 
* affectsState = true
* resource = #Encounter
* system = false
* type = true
* instance = false
* code = #entlassen
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
  * targetProfile[+] = Canonical(QuestionnaireResponse)
* parameter[+]
  * name = #return
  * use = #out
  * min = 1
  * max = "1"
  * documentation = "Der *return* Parameter gibt Auskunft über den Erfolg der Operation."
  * type = #Resource
  * targetProfile[+] = Canonical(OperationOutcome)