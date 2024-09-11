Instance: MOPEDPatientAdmit
InstanceOf: OperationDefinition
Title: "MOPED Patient $admit"
Description: """
Die Patient $admit Operation wird aufgerufen, wenn ein(e) Patient*in in das Krankenhaus aufgenommen wird.

Die Operation wird vom Akteur Krankenhaus (KH) aufgerufen.

Die Werte-Ausprägung des *mode* Parameters haben eine Auswirkung auf das Verhalten der Operation:
* draft: Die Patientenaufnahme ist noch nicht vollständig und wird lediglich zwischengespeichert. Hier findet keine Validierung der Encounter Ressource statt. Eine Account-Ressource wird erstellt, die den *WorkflowStatus* 'Aufnahme in Arbeit' hat und im Encounter referenziert.
* complete: Die Patientenaufnahme ist vollständig und es ist zu erwarten, dass alle nötigen Felder befüllt sind. Schlägt die Validierung des Encounter fehl, kann die Operation nicht erfolgreich durchgeführt werden. Ist die Validierung erfolgreich, wird eine im Encounter referenzierte Account-Ressource erstellt bzw. upgedatet, die den *WorkflowStatus* 'Aufnahme freigegeben' hat. Das Feld 'readmissionCount' in der Ressource Account wird auf '0' gesetzt. TBD: rename Account.Fallzahl zu readmissionCount.
"""
Usage: #definition 

* id = "MOPED.Patient.Admit"
* base = "http://hl7.org/fhir/OperationDefinition/Patient-admit"
* name = "MOPED_Patient_Admit"
* status = #draft
* kind = #operation 
* affectsState = true
* resource = #Patient
* system = false
* type = false
* instance = true
* code = #admit
* parameter[+]
  * name = #encounter
  * use = #in 
  * min = 1
  * max = "1"
  * documentation = "Der *encounter* Parameter beinhält die nötigen Elemente um die Details zum Fall zu beschreiben die bei Patientenaufnahme bekannt sind."
  * type = #Resource
  * targetProfile[+] = Canonical(MOPEDEncounter)
* parameter[+]
  * name = #coverage
  * use = #in 
  * min = 0
  * max = "1"
  * documentation = "Der *coverage* Parameter beinhält die nötigen Elemente um die Details zu den Versicherungsdaten zu beschreiben. Im Falle einer Aufnahme mit dem *mode* 'complete' muss eine Coverage vorliegen, die im zu erstellenden Account verlinkt wird; TBD: invariant auf Account wenn WorkflowStatus 'Aufnahme freigegben' dann coverage 1..*"
  * type = #Resource
  * targetProfile[+] = Canonical(Coverage)
* parameter[+]
  * name = #mode
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "Mit Hilfe des *mode* Parameters wird angegeben, ob es sich bei der Patienten-Aufnahme um vollständige Daten handelt und somit eine Validierung erfolgen soll, oder ob lediglich unvollständige Daten zwischengespeichert werden (draft)."
  * type = #code
  * binding[+]
    * strength = #required
    * valueSet = "hl7.at.test.draft.or.complete"
* parameter[+]
  * name = #suspicionWorkSchoolAccident
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "Mit Hilfe des *suspicionWorkSchoolAccident* Parameters wird festgehalten, ob es bei der Patienten-Aufnahme einen Verdacht auf einen Schüler- oder Arbeitsunfall gibt. Wird dieser Parameter mitgegeben, ist im Account das entsprechende Feld zu befüllen."
  * type = #code
  * binding[+]
    * strength = #required
    * valueSet = "moped-VerdachtArbeitsSchuelerunfall-valueset"
* parameter[+]
  * name = #suspicionThirdPartyNegligence
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "Mit Hilfe des *suspicionThirdPartyNegligence* Parameters wird festgehalten, ob es bei der Patienten-Aufnahme einen Verdacht auf Fremdverschulden gibt. Wird dieser Parameter mitgegeben, ist im Account das entsprechende Feld zu befüllen."
  * type = #boolean
* parameter[+]
  * name = #return
  * use = #out
  * min = 1
  * max = "1"
  * documentation = "Der *return* Parameter gibt Auskunft über den Erfolg der Operation. Wenn der *mode* Parameter auf 'complete' gesetzt war, ist die Operation erfolgreich, wenn die Daten validiert wurden und abgespeichert werden konnten. Wenn der *mode* Parameter auf draft gesetzt war, ist für eine erfolgreiche Durchführung der Operation lediglich ein erfolgreiches Speichern vorausgesetzt. Schlägt die Operation fehl, wird eine entsprechende Meldung ausgegeben."
  * type = #Resource
  * targetProfile[+] = Canonical(OperationOutcome)
