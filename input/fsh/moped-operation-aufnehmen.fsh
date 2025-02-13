Instance: MopedPatientAufnehmen
InstanceOf: OperationDefinition
Title: "MOPED Patient $aufnehmen (POC)"
Description: "Die $aufnehmen Operation wird aufgerufen, wenn ein(e) Patient*in in das Krankenhaus aufgenommen wird."
Usage: #definition 
* purpose = """

**Wer ruft diese Operation in welchem Zusammenhang auf?**

Die Operation wird vom Akteur Krankenhaus (KH) aufgerufen. Die $aufnehmen Operation wird aufgerufen, wenn ein(e) Patient*in in das Krankenhaus aufgenommen wird.

**Voraussetzungen für den Aufruf**

* Account-Status: n/a (die Ressource Account wird erst mit dieser Operation erstellt)

**Detaillierte Business-Logik**

1. Ressourcen der Transaction erstellen: FHIR Transaction ausführen, wie im Operation-Parameter *falldaten* mitgegeben. Dabei soll geprüft werden, ob bereits ein Patient mit dem jeweiligen identifier (bPK bzw. Sozialversicherungsnummer) vorliegt um Duplikate zu vermeiden. Das gleiche gilt für den Hauptversicherten und die anderen Ressourcen im Bundle, und kann technisch mit Hilfe von conditional References im Input-Bundle realisiert werden.
2. Account anlegen:
   * *MopedAccount.WorkflowStatus*: lt. Beschreibung der Werte-Ausprägungen des *freigeben* Parameter (siehe Hinweis 1)
   * *MopedAccount.subject* mit der gleichen Referenz befüllen wie *MopedEncounter.subject*
   * *MopedAccount.owner* mit der gleichen Referenz befüllen wie *MopedEncounter.serviceProvider*
   * *MopedAccount.AnzahlVerlegungen* mit Wert '0' befüllen
   * *MopedAccount.AnzahlBeurlaubungen* mit Wert '0' befüllen
   * *MopedAccount.coverage.coverage* mit der Referenz lt. *falldaten*-Parameter befüllen und ggf. Hauptversicherten anlegen, falls noch nicht am Server. 
3. Account im Encounter referenzieren: Den neuen MopedAccount im *MopedEncounter.account* referenzieren
4. Durchführung der Operation `$verlegen` für Neufaufnahme:
  * *$verlegen#aufnahmezahl* = *$aufnehmen#aufnahmezahl*
  * *$verlegen#zeitpunkt* = Operation-Parameter falldaten mit dem Pfad *Bundle.Encounter.actualPeriod.start*
  * *$verlegen#funktionscode* = *$aufnehmen#funktionscode*
  * *$verlgegen#funktionssubcode* = *$aufnehmen#funktionssubcode*
  * *$verlegen#physischeAnwesenheit* = *$aufnehmen#physischeAnwesenheit*
  * *$verlegen#neuaufnahme* = `true`
5. Berechnung der Datensatz-ID:
  * Die Datensatz-ID wird aus der Aufnahmezahl lt. LKF Dokumentation als SHA-256 Hash berechnet und in das entsprechende Identifier-Slice des MopedEncounter eingefügt.

**Validierung / Fehlerbehandlung**

* Nur POC: Der Operation-Parameter 'freigeben' muss `true` sein (siehe Hinweis 5)
* Wenn der *freigeben*-Parameter auf *true* ist, muss eine Validierung aller Ressourcen im *falldaten*-Bundle erfolgreich sein, oder die Operation schlägt fehl.
* Es kann nie mehrere MopedEnconuter-Instanzen mit der gleichen Aufnahmezahl geben. Es muss vorab überprüft werden, ob bereits ein Encounter mit dieser Aufnahmezahl vorliegt und die Operation muss in dem Fall fehlschlagen (siehe Hinweis 5).
* Der Status *MopedEncounter.status* muss den Wert 'in-progress' haben
* Wenn im MopedAufnahmeBundle[Hauptversicherter] muss gleich sein wie MopedAufnahmeBundle[Coverage].policyHolder
* In MopedAccount.coverage darf nur eine Coverage gelistet sein, ansonsten wird (derzeit) ein Fehler geworfen. Dieser Zustand wäre vor allem möglich, wenn $aufnehmen mehrmals aufgerufen wird, mit unterschiedlichen Coverages. Siehe Hinweis 4.

**Weitere Hinweise**

* Hinweis 1: Die Werte-Ausprägung des *freigeben* Parameters haben eine Auswirkung auf das Verhalten der Operation:
  * *false*: Die Patientenaufnahme ist noch nicht vollständig und wird lediglich zwischengespeichert. Hier findet keine Validierung der Encounter Ressource statt. Eine Account-Ressource wird erstellt, die den *WorkflowStatus* 'Aufnahme in Arbeit' hat und im Encounter referenziert.
  * *true*: Die Patientenaufnahme ist vollständig und es ist zu erwarten, dass alle nötigen Felder befüllt sind. Schlägt die Validierung der *falldaten* fehl, kann die Operation nicht erfolgreich durchgeführt werden. Ist die Validierung erfolgreich, wird eine im Encounter referenzierte Account-Ressource erstellt bzw. upgedatet, die den *WorkflowStatus* 'Aufnahme freigegeben' hat. 
* Hinweis 2: Es ist nicht nötig, bei dieser Operation den GDA-Identifier als Kontext mitzugeben. Auf den GDA wird im *falldaten*-Bundle als conditional Reference mittels entsprechendem Identifier im MopedEncounter verwiesen. Somit wird auch vermieden, dass Duplikate einer GDA-Organization-Ressource am Server angelegt/verwendet werden.
* Hinweis 3: Im Parameter *falldaten* wird unter Anderem eine Coverage Ressource mitgegeben. Diese Ressource stammt in der Regel aus einer erfolgreichen VDAS-Abfrage. In Zukunft wird Moped auch andere Optionen unterstützen, wie die Verarbeitung von Daten von Selbstzahlern (wofür ein separates Coverage-Profil angelegt wird), oder die Verarbeitung von Fällen mit privater Krankenversicherung (auch hierfür wird ein separates Coverage-Profil angelegt). Im Ersten Schritt liegt der Fokus auf den Standard-Fall, der als Ausgangsbasis eine erfolgreich abgeschlossene VDAS-Abfrage voraussetzt. 
* Hinweis 4: Das Wecheln von Versicherungen, insbesondere durch inkonsistente Coverages bei mehrfachem Ausführen von $aufnehmen wird derzeit nicht unterstützt. Hierfür müssen erst die Prozesse für den Sonderfall des Versicherungswechselns definiert werden.
* Hinweis 5: In einer erweiterten Version wird es möglich sein, diese Operation mehrmals aufzurufen. Das wird konkret zumindest der Fall sein, wenn die Aufnahme 1x in Arbeit ist und 1x freigegeben wird. Im POC soll die Operation nur einmal ausgeführt werden können, direkt mit der Freigabe.

**Annahmen an das BeS**
* Es wurde vorab geprüft, ob das `system` des Parameters `falldaten`.encounter.identifier dem GDA entspricht, der die Operation aufruft. Somit ist sichergestellt, dass nur eigene Fälle aufgenommen werden können.

"""

* id = "MOPED.Patient.Aufnehmen"
* name = "MOPED_Patient_Aufnehmen"
* status = #draft
* comment = "TBD: Check, wo version-specific References nötig sind - ggf. relevant für Account.subject, Account.owner und Account.coverage sobald Modus auf *freigeben*. Überlegen, für was der Status Aufnahme in Arbeit tatsächlich nützlich ist und wenn dieser wirklich nötig ist, was passiert, wenn diese Operation mehrfach aufgerufen wird (speziell mit dem Einbringen von Hauptversicherten im Zuge der Speicherung von Coverages, das Anlegen von MopedTransfer Encounters via $verlgen ect.)"
* kind = #operation 
* affectsState = true
* resource = #Encounter
* system = false
* type = true
* instance = false
* code = #aufnehmen
* parameter[+]
  * name = #falldaten
  * use = #in 
  * min = 1
  * max = "1"
  * documentation = "Der *falldaten* Parameter beinhält die nötigen Elemente um die Details zum Fall zu beschreiben die bei Patientenaufnahme bekannt sind, inklusive Patient, Encounter und Coverage."
  * type = #Resource
  * targetProfile[+] = Canonical(MopedAufnahmeBundle)
* parameter[+]
  * name = #freigeben
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "Mit Hilfe des *freigeben* Parameters wird angegeben, ob es sich bei der Patienten-Aufnahme um vollständige Daten handelt und somit eine Validierung erfolgen soll (*freigeben* = *true*), oder ob lediglich unvollständige Daten zwischengespeichert werden (*freigeben* = *false*)."
  * type = #boolean
* parameter[+]
  * name = #physischeAnwesenheit
  * use = #in 
  * min = 0
  * max = "1"
  * documentation = "Der *physischeAnwesenheit* Parameter definiert ob der Patient physisch anwesend ist oder nicht."
  * type = #code
  * binding[+]
    * strength = #required
    * valueSet = Canonical(Anwesenheitsart)
* parameter[+]
  * name = #funktionscode
  * use = #in 
  * min = 1
  * max = "1"
  * documentation = "Der *funktionscode* Parameter definiert auf welchen Funktionscode die Neuaufnahme stattfindet."
  * type = #string
* parameter[+]
  * name = #funktionssubcode
  * use = #in 
  * min = 1
  * max = "1"
  * documentation = "Der *funktionssubcode* Parameter definiert auf welchen Funktionssubcode die Neuaufnahme stattfindet."
  * type = #string
* parameter[+]
  * name = #return
  * use = #out
  * min = 1
  * max = "1"
  * documentation = "Der *return* Parameter gibt Auskunft über den Erfolg der Operation. Wenn der *modus* Parameter auf 'freigeben' gesetzt war, ist die Operation erfolgreich, wenn die Daten validiert wurden und abgespeichert werden konnten. Wenn der *modus* Parameter auf *zwischenspeichern* gesetzt war, ist für eine erfolgreiche Durchführung der Operation lediglich ein erfolgreiches Speichern vorausgesetzt. Schlägt die Operation fehl, wird eine entsprechende Meldung ausgegeben."
  * type = #Resource
  * targetProfile[+] = Canonical(OperationOutcome)
