Instance: MopedDiagnosenLeistungErfassen
InstanceOf: OperationDefinition
Title: "MOPED Encounter Leistung und Diagnosen $erfassen (POC)"
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
  * name = #löschen
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "Mit Hilfe des *löschen* Parameters wird angegeben, ob es sich bei dieser Operation um 1. (löschen = false) das Erstellen und/oder Updaten von Leistungen und Diagnosen handelt oder um 2. (löschen = true) das löschen von Leistungen und Diagnosen. ACHTUNG: dieser Parameter bezieht sich auf alle Procedures und Conditions die in der Operation als weitere Parameter mitgegeben werden."
  * type = #boolean
* parameter[+]
  * name = #leistung
  * use = #in
  * min = 0
  * max = "*"
  * documentation = "Der *leistung* Parameter beinhaltet eine erbrachte Leistung in MEL-Codierung."
  * type = #Procedure
  * targetProfile = Canonical(MopedProcedure)
* parameter[+]
  * name = #aufnahmediagnose
  * use = #in
  * min = 0
  * max = "*"
  * documentation = "Der *aufnahmediagnose* Parameter beinhaltet eine Diagnose der Kategorie Aufnahmediagnose in ICD-10 Codierung."
  * type = #Condition
  * targetProfile = Canonical(MopedCondition)
* parameter[+]
  * name = #hauptdiagnose
  * use = #in
  * min = 0
  * max = "*"
  * documentation = "Der *hauptdiagnose* Parameter beinhaltet eine Diagnose der Kategorie Hauptdiagnose in ICD-10 Codierung."
  * type = #Condition
  * targetProfile = Canonical(MopedCondition)
* parameter[+]
  * name = #zusatzdiagnose
  * use = #in
  * min = 0
  * max = "*"
  * documentation = "Der *zusatzdiagnose* Parameter beinhaltet eine Diagnose der Kategorie Zusatzdiagnose in ICD-10 Codierung."
  * type = #Condition
  * targetProfile = Canonical(MopedCondition)
* parameter[+]
  * name = #return
  * use = #out
  * min = 1
  * max = "1"
  * documentation = "Der *return* Parameter gibt Auskunft über den Erfolg der Operation."
  * type = #Resource
  * targetProfile[+] = Canonical(OperationOutcome)