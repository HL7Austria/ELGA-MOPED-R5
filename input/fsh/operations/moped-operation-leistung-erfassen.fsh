Instance: MopedDiagnosenLeistungErfassen
InstanceOf: OperationDefinition
Title: "MOPED Encounter Leistung und Diagnosen $erfassen"
Description: "Die $erfassen Operation wird aufgerufen, wenn eine erbrachte Leistungen oder Diagnosen eingemeldet wird."
Usage: #definition

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
  * name = #leistungenDiagnosen
  * use = #in
  * min = 0
  * max = "*"
  * documentation = "Der *leistungenDiagnosen* Parameter beinhaltet ein Bundle mit sämtlichen zu ändernden, hinzuzufügenden oder zu löschenden Diagnosen und Leistungen"
  * type = #Bundle
  * targetProfile = Canonical(MopedErfassenBundle)
* parameter[+]
  * name = #return
  * use = #out
  * min = 1
  * max = "1"
  * documentation = "Der *return* Parameter gibt Auskunft über den Erfolg der Operation."
  * type = #Resource
  * targetProfile[+] = Canonical(OperationOutcome)