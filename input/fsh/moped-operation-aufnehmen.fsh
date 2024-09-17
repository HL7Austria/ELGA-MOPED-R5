Instance: MOPEDPatientAufnehmen
InstanceOf: OperationDefinition
Title: "MOPED Patient $aufnehmen (POC)"
Description: """
Die Patient $aufnehmen Operation wird aufgerufen, wenn ein(e) Patient*in in das Krankenhaus aufgenommen wird.
Die Operation wird vom Akteur Krankenhaus (KH) aufgerufen.

1. Encounter erstellen: MOPEDEncounter erstellen, wie im Operation-Parameter *fall* mitgegeben
2. Account erstellen: MOPEDAccount anlegen:
   a. das Feld *MOPEDAccount.WorkflowStatus*: lt. Beschreibung der Werte-Ausprägungen des *modus* Parameter (siehe unten)
   b. das Feld *MOPEDAccount.VerdachtArbeitsSchuelerunfall* lt. Operation Parameter
   c. das Feld *MOPEDAccount.VerdachtFremdverschulden* lt. Operation Parameter
   d. das Feld *MOPEDAccount.subject* mit der gleichen Referenz befüllen wie *MOPEDEncounter.subjec*
   e. das Feld *MOPEDAccount.owner* mit der gleichen Organization befüllen wie *MOPEDEncounter.serviceProvider*
   f. das Feld *MOPEDAccount.VDASID* lt. Operation Parameter befüllen (TBD: brauchen wir die VDAS ID oder können wir sie mit Absprache SVC als Identifier in die Coverage geben?)
   g. das Feld *MOPEDAccount.coverage.coverage* mit der Referenz lt. Parameter befüllen (TBD: soll hier wirklich eine Coverage Ressource mitgegeben werden oder ist diese bereits am Server aufgrund von Schritten davor vorhanden und wenn ja, mit welchem Wert/identifier kann sie wiedergefunden werden?)
3. Account im Encounter referenzieren: Den neuen MOPEDAccount im MOPEDEncounter referenzieren

Die Werte-Ausprägung des *modus* Parameters haben eine Auswirkung auf das Verhalten der Operation:
* *zwischenspeichern*: Die Patientenaufnahme ist noch nicht vollständig und wird lediglich zwischengespeichert. Hier findet keine Validierung der Encounter Ressource statt. Eine Account-Ressource wird erstellt, die den *WorkflowStatus* 'Aufnahme in Arbeit' hat und im Encounter referenziert.
* *freigeben*: Die Patientenaufnahme ist vollständig und es ist zu erwarten, dass alle nötigen Felder befüllt sind. Schlägt die Validierung des Encounter fehl, kann die Operation nicht erfolgreich durchgeführt werden. Ist die Validierung erfolgreich, wird eine im Encounter referenzierte Account-Ressource erstellt bzw. upgedatet, die den *WorkflowStatus* 'Aufnahme freigegeben' hat. 

"""
Usage: #definition 

* id = "MOPED.Patient.Aufnehmen"
* base = "http://hl7.org/fhir/OperationDefinition/Patient-aufnehmen"
* name = "MOPED_Patient_Aufnehmen"
* status = #draft
* comment = "TBD: Input eig. Bundle mit Patient, Encounter, ggf. ServiceProvider oder GDA-OID, und ggf. Coverage oder CoverageID"
* kind = #operation 
* affectsState = true
* resource = #Patient
* system = false
* type = false
* instance = true
* code = #aufnehmen
* parameter[+]
  * name = #fall
  * use = #in 
  * min = 1
  * max = "1"
  * documentation = "Der *fall* Parameter beinhält die nötigen Elemente um die Details zum Fall zu beschreiben die bei Patientenaufnahme bekannt sind."
  * type = #Resource
  * targetProfile[+] = Canonical(MOPEDEncounter)
* parameter[+]
  * name = #versicherungsanspruch
  * use = #in 
  * min = 0
  * max = "1"
  * documentation = "Der *versicherungsanspruch* Parameter beinhält die nötigen Elemente um die Details zu den Versicherungsdaten zu beschreiben. Im Falle einer Aufnahme mit dem *modus* 'freigeben' muss eine Coverage vorliegen, die im zu erstellenden Account verlinkt wird; TBD: invariant auf Account wenn WorkflowStatus 'Aufnahme freigegben' dann coverage 1..*"
  * type = #Resource
  * targetProfile[+] = Canonical(Coverage)
* parameter[+]
  * name = #modus
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "Mit Hilfe des *modus* Parameters wird angegeben, ob es sich bei der Patienten-Aufnahme um vollständige Daten handelt und somit eine Validierung erfolgen soll, oder ob lediglich unvollständige Daten zwischengespeichert werden (*zwischenspeichern*)."
  * type = #code
  * binding[+]
    * strength = #required
    * valueSet = "hl7.at.test.freigeben.oder.zwischenspeichern"
* parameter[+]
  * name = #verdachtArbeitsSchuelerunfall
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "Mit Hilfe des *verdachtArbeitsSchuelerunfall* Parameters wird festgehalten, ob es bei der Patienten-Aufnahme einen Verdacht auf einen Schüler- oder Arbeitsunfall gibt. Wird dieser Parameter mitgegeben, ist im Account das entsprechende Feld zu befüllen."
  * type = #code
  * binding[+]
    * strength = #required
    * valueSet = "moped-VerdachtArbeitsSchuelerunfall-valueset"
* parameter[+]
  * name = #verdachtFremdverschulden
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "Mit Hilfe des *verdachtFremdverschulden* Parameters wird festgehalten, ob es bei der Patienten-Aufnahme einen Verdacht auf Fremdverschulden gibt. Wird dieser Parameter mitgegeben, ist im Account das entsprechende Feld zu befüllen."
  * type = #boolean
* parameter[+]
  * name = #return
  * use = #out
  * min = 1
  * max = "1"
  * documentation = "Der *return* Parameter gibt Auskunft über den Erfolg der Operation. Wenn der *modus* Parameter auf 'freigeben' gesetzt war, ist die Operation erfolgreich, wenn die Daten validiert wurden und abgespeichert werden konnten. Wenn der *modus* Parameter auf *zwischenspeichern* gesetzt war, ist für eine erfolgreiche Durchführung der Operation lediglich ein erfolgreiches Speichern vorausgesetzt. Schlägt die Operation fehl, wird eine entsprechende Meldung ausgegeben."
  * type = #Resource
  * targetProfile[+] = Canonical(OperationOutcome)
