Instance: MOPEDLeistungEinmelden
InstanceOf: OperationDefinition
Title: "MOPED Encounter Leistung und Diagnosen $erfassen (POC)"
Description: "Die $erfassen Operation wird aufgerufen, wenn eine erbrachte Leistungen und Diagnosen eingemeldet wird."
Usage: #definition
* purpose = """

**Wer ruft diese Operation in welchem Zusammenhang auf?**

Die Operation wird vom Akteur Krankenhaus (KH) aufgerufen. Die $erfassen Operation wird aufgerufen, wenn ein(e) im Zuge des Falles erbrachte Leistung und Diagnosen eingemeldet wird.

**Voraussetzungen für den Aufruf**

* Account-Status: `Entlassung vollständig` 

**Detaillierte Business-Logik**

1. Suche des MOPEDEncounter: Der MOPEDEncounter mit der jeweiligen *aufnahmezahl* lt. Operation-Parameter wird gesucht
2. Falls bisher Conditions oder Procedures eingemeldet wurden, die zum Encounter aus Schritt 1 gehören (also diesen Encounter in Procedure.encounter bzw. Condition.encounter referenzieren), dann werden diese auf den verificationStatus `entered-in-error` gesetzt bzw. mit der neuen Ressource upgedatet, falls der gefundene Identifier mit dem neu-übermittelten übereinstimmt. Die neuen Conditions und Procedures werden lt. Ressourcen in den Operation-Parametern eingespielt (bzw. upgedatet), sofern die Validierung (siehe unten) erfolgreich war.


**Validierung / Fehlerbehandlung**

* Mindestens ein leistungs- oder ein diagnose-Parameter müssen befüllt sein
* Procedure.status muss `completed` sein
* Procedure.subject muss gleich sein wie Encounter.subject (Encounter aus Schritt 1)
* Procedure.encounter muss gleich sein wie der Encounter aus Schritt 1
* Procedure.performer.onBehalfOf muss gleich sein wie Encounter.serviceProvider aus Schritt 1
* Procedure.occurence muss innerhalb der Zeit erfolgt sein, wie Encounter.actualPeriod aus Schritt 1
* Condition.verificationStatus muss `confirmed` oder `unconfirmed` sein
* Condition.subject muss gleich sein wie Encounter.subject (Encounter aus Schritt 1)
* Condition.encounter muss gleich sein wie der Encounter aus Schritt 1

**Weitere Hinweise**

* Hinweis 1: Leistungen melden kann ein Krankenhaus beliebig oft. Eine Status-Änderung erfolgt dadurch nicht. Erst du einem bestimmten Zeitpunkt, sobald sich das Krankenhaus für die Abrechnung ($abrechnen) entschließt, wird im Zuge dieser weiterführenden Operation die Abrechnung und somit eine Status-Änderung angestoßen.

**Annahmen an das BeS**
* Es wurde vorab geprüft, ob das `system` des Parameters `aufnahmezahl` dem GDA entspricht, der die Operation aufruft. Somit ist sichergestellt, dass nur Procedures/Conditions für die eigenen Fälle eingemeldet werden können.

"""

* id = "MOPED.Encounter.erfassen"
* name = "MOPED_Encounter_erfassen"
* status = #draft
* kind = #operation
* affectsState = true
* resource = #Encounter
* system = false
* type = true
* instance = false
* code = #erfassen
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
  * type = #Procedure
  * targetProfile = Canonical(MOPEDProcedure)
* parameter[+]
  * name = #diagnose
  * use = #in
  * min = 0
  * max = "*"
  * documentation = "Der *diagnose* Parameter beinhält eine Diagnose in HDG-Codierung."
  * type = #Condition
  * targetProfile = Canonical(MOPEDCondition)
* parameter[+]
  * name = #return
  * use = #out
  * min = 1
  * max = "1"
  * documentation = "Der *return* Parameter gibt Auskunft über den Erfolg der Operation."
  * type = #Resource
  * targetProfile[+] = Canonical(OperationOutcome)