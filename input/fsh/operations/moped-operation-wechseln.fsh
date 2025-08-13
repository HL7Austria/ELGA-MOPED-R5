Instance: MopedVersicherungWechseln
InstanceOf: OperationDefinition
Title: "MOPED Versicherung $wechseln"
Description: "Die $wechseln Operation wird aufgerufen, wenn die zuständige Versicherung gewechselt werden soll."
Usage: #definition

* id = "MOPED.Versicherung.Wechseln"
* comment = ""
* name = "MOPED_Versicherung_Wechseln"
* status = #draft
* kind = #operation
* affectsState = true
* resource = #Coverage
* system = false
* type = true
* instance = false
* code = #wechseln
* parameter[+]
  * name = #compositionID
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "Der *compositionID* Parameter beinhaltet die technische ID (inklusive Version) der Composition des relevanten Falls"
  * type = #Identifier
* parameter[+]
  * name = #aufnahmezahl
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "Der *aufnahmezahl* Parameter beinhaltet den eindeutigen Identifizierer für den relevanten Fall."
  * type = #Identifier
* parameter[+]
  * name = #coverage
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "Der *coverage* Parameter beinhaltet die neue Coverage Ressoure"
  * type = #Coverage
  * targetProfile[+] = Canonical(MopedCoverage)
* parameter[+]
  * name = #return
  * use = #out
  * min = 1
  * max = "1"
  * documentation = "Der *return* Parameter gibt Auskunft über den Erfolg der Operation."
  * type = #Resource
  * targetProfile[+] = Canonical(OperationOutcome)