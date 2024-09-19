Instance: MOPEDPatientAufnehmen
InstanceOf: OperationDefinition
Title: "MOPED Patient $aufnehmen (POC)"
Description: """
Die Patient $aufnehmen Operation wird aufgerufen, wenn ein(e) Patient*in in das Krankenhaus aufgenommen wird.
Die Operation wird vom Akteur Krankenhaus (KH) aufgerufen.

1. Encounter erstellen: FHIR Transaction ausführen, wie im Operation-Parameter *falldaten* mitgegeben. Dabei soll geprüft werden, ob bereits ein Patient mit dem jeweiligen identifier (bPK bzw. Sozialversicherungsnummer) vorliegt um Duplikate zu vermeiden.
2. Account anlegen:
   * *MOPEDAccount.WorkflowStatus*: lt. Beschreibung der Werte-Ausprägungen des *modus* Parameter (siehe unten)
   * *MOPEDAccount.VerdachtArbeitsSchuelerunfall* lt. Operation Parameter
   * *MOPEDAccount.VerdachtFremdverschulden* lt. Operation Parameter
   * *MOPEDAccount.subject* mit der gleichen Referenz befüllen wie *MOPEDEncounter.subjec*
   * *MOPEDAccount.owner* mit der gleichen Organization befüllen wie *MOPEDEncounter.serviceProvider*
   * *MOPEDAccount.VDASID* lt. Operation Parameter befüllen (TBD: brauchen wir die VDAS ID oder können wir sie mit Absprache SVC als Identifier in die Coverage geben?)
   * *MOPEDAccount.coverage.coverage* mit der Referenz lt. Parameter befüllen und ggf. Hauptversicherter (Patient) anlegen, falls noch nicht am Server.
3. Account im Encounter referenzieren: Den neuen MOPEDAccount im *MOPEDEncounter.account* referenzieren

Die Werte-Ausprägung des *modus* Parameters haben eine Auswirkung auf das Verhalten der Operation:
* *zwischenspeichern*: Die Patientenaufnahme ist noch nicht vollständig und wird lediglich zwischengespeichert. Hier findet keine Validierung der Encounter Ressource statt. Eine Account-Ressource wird erstellt, die den *WorkflowStatus* 'Aufnahme in Arbeit' hat und im Encounter referenziert.
* *freigeben*: Die Patientenaufnahme ist vollständig und es ist zu erwarten, dass alle nötigen Felder befüllt sind. Schlägt die Validierung der *falldaten* fehl, kann die Operation nicht erfolgreich durchgeführt werden. Ist die Validierung erfolgreich, wird eine im Encounter referenzierte Account-Ressource erstellt bzw. upgedatet, die den *WorkflowStatus* 'Aufnahme freigegeben' hat. 

"""
Usage: #definition 

* id = "MOPED.Patient.Aufnehmen"
* base = "http://hl7.org/fhir/OperationDefinition/Patient-aufnehmen"
* name = "MOPED_Patient_Aufnehmen"
* status = #draft
* comment = "TBD: Klären, auf welchem Endpunkt die Operation aufgerufen werden soll (Encounter, Patient oder Server-Base); Input ggf. ServiceProvider Organization bzw. GDA-OID, und ggf. CoverageID/VDAS ID falls im Prozess schon zuvor die Coverage angelegt wurde; mit welchem Wert/identifier kann die Coverage wiedergefunden werden?"
* kind = #operation 
* affectsState = true
* resource = #Patient
* system = false
* type = false
* instance = true
* code = #aufnehmen
* parameter[+]
  * name = #falldaten
  * use = #in 
  * min = 1
  * max = "1"
  * documentation = "Der *falldaten* Parameter beinhält die nötigen Elemente um die Details zum Fall zu beschreiben die bei Patientenaufnahme bekannt sind, inklusive Patient, Encounter und Coverage."
  * type = #Resource
  * targetProfile[+] = Canonical(MOPEDAufnahmeBundle)
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
