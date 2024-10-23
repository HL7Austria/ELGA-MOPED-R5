Instance: MOPEDLeistungEinmelden
InstanceOf: OperationDefinition
Title: "MOPED Patient $leistungMelden (POC)"
Description: "Die $leistungMelden Operation wird aufgerufen, wenn eine erbrachte Leistung eingemeldet wird."
Usage: #definition
* purpose = """

**Wer ruft diese Operation in welchem Zusammenhang auf?**

Die Operation wird vom Akteur Krankenhaus (KH) aufgerufen. Die $leistungMelden Operation wird aufgerufen, wenn ein(e) im Zuge des Falles erbrachte Leistung eingemeldet wird.

**Voraussetzungen für den Aufruf**

* Account-Status: `Entlassung vollständig` 

**Detaillierte Business-Logik**

1. Suche des MOPEDEncounter: Der MOPEDEncounter mit der jeweiligen *aufnahmezahl* lt. Operation-Parameter wird gesucht
2. Falls bisher Conditions oder Procedures eingemeldet wurden, die zum Encounter aus Schritt 1 gehören (also diesen Encounter in Procedure.encounter bzw. Condition.encounter referenzieren), dann werden diese gelöscht
3. Die neuen Conditions und Procedures werden. lt. Ressourcen in den Operation-Parametern eingespielt, sofern die Validierung (siehe unten) erfolgreich war.

**Validierung / Fehlerbehandlung**

* Mindestens ein leistungs- oder ein diagnose-Parameter müssen befüllt sein
* Procedure.status muss `completed` sein
* Procedure.code muss einen MEL-Code beinhalten (lt. Profil TBD)
* Procedure.subject muss gleich sein wie Encounter.subject (Encounter aus Schritt 1)
* Procedure.encounter muss gleich sein wie der Encounter aus Schritt 1
* Procedure.performer.onBehalfOf muss gleich sein wie Encounter.serviceProvider aus Schritt 1
* Procedure.occurence muss innerhalb der Zeit erfolgt sein, wie Encounter.actualPeriod aus Schritt 1
* Condition.verificationStatus muss `confirmed` sein
* Condition.code muss mit HDG-Gruppe codiert sein (lt. Profil TBD)
* Condition.subject muss gleich sein wie Encounter.subject (Encounter aus Schritt 1)
* Condition.encounter muss gleich sein wie der Encounter aus Schritt 1

**Weitere Hinweise**

* Hinweis 1: Leistungen melden kann ein Krankenhaus beliebig oft. Eine Status-Änderung erfolgt dadurch nicht. Erst du einem bestimmten Zeitpunkt, sobald sich das Krankenhaus für die Abrechnung ($abrechnen) entschließt, wird im Zuge dieser weiterführenden Operation die Abrechnung und somit eine Status-Änderung angestoßen.

**Annahmen an das BeS**
* Es wurde vorab geprüft, ob das `system` des Parameters `aufnahmezahl` dem GDA entspricht, der die Operation aufruft. Somit ist sichergestellt, dass nur Procedures/Conditions für die eigenen Fälle eingemeldet werden können.

"""

* id = "MOPED.Patient.LeistungMelden"
* base = "http://hl7.org/fhir/OperationDefinition/Patient-leistungMelden"
* name = "MOPED_Patient_LeistungMelden"
* status = #draft
* kind = #operation
* affectsState = true
* resource = #Encounter
* system = false
* type = true
* instance = false
* code = #leistungMelden
* parameter[+]
  * name = #aufnahmezahl
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "Der *aufnahmezahl* Parameter beinhält den eindeutigen Identifizierer für den relevanten Fall."
  * type = #Identifier
* parameter[+]
  * name = #leistung
  * use = #in
  * min = 0
  * max = "*"
  * documentation = "Der *leistung* Parameter beinhält eine erbrachte Leistung in MEL-Codierung."
  * type = #MOPEDProcedure
* parameter[+]
  * name = #diagnose
  * use = #in
  * min = 0
  * max = "*"
  * documentation = "Der *diagnose* Parameter beinhält eine Diagnose in HDG-Codierung."
  * type = #MOPEDCondition
* parameter[+]
  * name = #return
  * use = #out
  * min = 1
  * max = "1"
  * documentation = "Der *return* Parameter gibt Auskunft über den Erfolg der Operation."
  * type = #Resource
  * targetProfile[+] = Canonical(OperationOutcome)