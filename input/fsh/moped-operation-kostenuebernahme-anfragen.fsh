Instance: VersichertenanspruchserklärungAnfragen
InstanceOf: OperationDefinition
Title: "MOPED Versichertenanspruchserklärung $anfragen (POC)"
Description: "Die Versichertenanspruchserklärung $anfragen Operation wird aufgerufen, um die Versichertenanspruchserklärung-Anfrage an die SV anzustoßen. Diese Operation ist irrelevant für Selbstzahler (das ist wichtig für künftige weiterentwicklung - wenn im Account auf eine Coverage-Ressource für Selbstzahler referenziert wird, darf die Operation $anfragen nicht ausgeführt werden)."
Usage: #definition
* purpose = """

Legende: ~~durchgestrichen~~ heißt, dass es für den IG zwar bedacht wird, für den ersten POC jedoch nicht relevant ist.

**Wer ruft diese Operation in welchem Zusammenhang auf?**

Die Operation wird vom Akteur Krankenhaus (KH) aufgerufen. Die Versichertenanspruchserklärung $anfragen Operation wird aufgerufen, um die Versichertenanspruchserklärung-Anfrage an die SV anzustoßen. ~~Diese Operation ist irrelevant für Selbstzahler (das ist wichtig für künftige weiterentwicklung - wenn im Account auf eine Coverage-Ressource für Selbstzahler referenziert wird, darf die Operation $anfragen nicht ausgeführt werden).~~

**Voraussetzungen für den Aufruf**

* Account-Status: : `Aufnahme freigegeben`

**Detaillierte Business-Logik**

1. Suche des MopedEncounter: Der MopedEncounter mit der jeweiligen *aufnahmezahl* lt. Operation-Parameter wird gesucht
2. Suche aller MopedTransferEncounter die *partOf* den MopedEncounter aus Schritt 1 referenzieren
3. Suchen des MopedAccounts: Die Referenz des *MopedEncounter.account* aus Schritt 1.
4. Erstellung des MopedVAERequest: 
  * a. *MopedVAERequest.status* mit 'active'
  * b. *MopedVAERequest.type* mit 'institutional'
  * c. *MopedVAERequest.use* mit 'preauthorization'
  * d. *MopedVAERequest.Verlaengerungstage* mit *verlaengerungstage* lt. Operation-Parameter befüllen
  * e. *MopedVAERequest.created* mit dem aktuellem Zeitpunkt befüllen
  * f. *MopedVAERequest.Sonderklasse* mit *sonderklasse* lt. Operation-Parameter befüllen
  * g. *MopedVAERequest.patient* mit *MopedAccount.subject* befüllen
  * h. *MopedVAERequest.insurance.coverage* mit *MopedAccount.coverage.coverage* befüllen
  * i. *MopedVAERequest.provider* mit *MopedAccount.owner* befüllen
  * j. *MopedVAERequest.insurer* mit einer Referenz auf jene Organization befüllen, deren *Organization.identifier* dem Identifier *versicherer* lt. Operation-Parameter entspricht
  * k. *MopedVAERequest.encounter* mit allen gefundenen Encountern aus Schritt 1 und 2 befüllen.
  * l. *MopedVAERequest.supportingInfo[VerdachtFremdverschulden]* lt. Operation-Parameter befüllen
  * m. *MopedVAERequest.accident.VerdachtArbeitsSchuelerunfall* lt. Operation-Parameter befüllen
5. POSTen des neu erstellten MopedVAERequest

**Validierung / Fehlerbehandlung**
* *MopedAccount.coverage* darf nur eine Versicherung gelistet haben
* *MopedVAERequest.subject* muss mit *Coverage.beneficiary* aus Schritt 3h übereinstimmen
* *MopedVAERequest.insurer* muss mit *Coverage.insurer* aus Schritt 3h übereinstimmen
* ~~*MopedVAERequest.provider* muss gleichzeitig die gleiche Organisation sein, die lt. Token die Operation aufgerufen hat.~~

**Weitere Hinweise**

* Hinweis 1: Nach dieser Operation findet lt. Soll-Prozess kein Update des Status *MopedAccount.workflowStatus* statt.

**Annahmen an das BeS**
* Es wurde vorab geprüft, ob das `system` des Parameters `aufnahmezahl` dem GDA entspricht, der die Operation aufruft. Somit ist sichergestellt, dass nur Kostenübernahmen für eigene Fälle angefragt werden können.

"""

* id = "MOPED.VAERequest.Anfragen"
* comment = "TBD: Ist hier evtl. eine Transaction die bessere Lösung? Bei dieser Operation findet keine Status-Änderung statt. Lediglich auf die Precondition des Workflow-Status müsste geachtet werden."
* name = "MOPED_VAERequest_Anfragen"
* status = #draft
* kind = #operation 
* affectsState = true
* resource = #Account
* system = false
* type = true
* instance = false
* code = #anfragen
* parameter[+]
  * name = #aufnahmezahl
  * use = #in 
  * min = 1
  * max = "1"
  * documentation = "Der *aufnahmezahl* Parameter beinhält den eindeutigen Identifizierer für den relevanten Fall."
  * type = #Identifier
* parameter[+]
  * name = #versicherer
  * use = #in 
  * min = 1
  * max = "1"
  * documentation = "Der *versicherer* Parameter beinhält den eindeutigen Identifizierer für den Versicherer an dem der VAERequest gerichtet ist."
  * type = #Identifier
* parameter[+]
  * name = #verlaengerungstage
  * use = #in 
  * min = 0
  * max = "1"
  * documentation = "Der *verlaengerungstage* beschreibt, um wie viele Verlängerungstage angefragt wird."
  * type = #unsignedInt
* parameter[+]
  * name = #sonderklasse
  * use = #in 
  * min = 0
  * max = "1"
  * documentation = "Der *sonderklasse* codiert, ob der Aufenthalt in der Allgemeine Gebührenklasse oder Sonderklasse stattfindet, da es bei speziellen Versicherungsträgern dafür Optionen gibt."
  * type = #code
  * binding[+]
    * strength = #required
    * valueSet = Canonical(SonderklasseVS)
* parameter[+]
  * name = #verdachtArbeitsSchuelerunfall
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "Mit Hilfe des *verdachtArbeitsSchuelerunfall* Parameters wird festgehalten, ob es bei der Patienten-Aufnahme einen Verdacht auf einen Schüler- oder Arbeitsunfall gibt. Wird dieser Parameter mitgegeben, ist im Account das entsprechende Feld zu befüllen."
  * type = #code
  * binding[+]
    * strength = #required
    * valueSet = Canonical(VerdachtArbeitsSchuelerunfallVS)
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
  * documentation = "Der *return* Parameter gibt Auskunft über den Erfolg der Operation."
  * type = #Resource
  * targetProfile[+] = Canonical(OperationOutcome)
