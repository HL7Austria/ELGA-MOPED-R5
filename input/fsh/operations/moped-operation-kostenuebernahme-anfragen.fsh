Instance: VersichertenanspruchserklärungAnfragen
InstanceOf: OperationDefinition
Title: "MOPED Versichertenanspruchserklärung $anfragen (POC)"
Description: "Die Versichertenanspruchserklärung $anfragen Operation wird aufgerufen, um die Versichertenanspruchserklärung-Anfrage an die SV anzustoßen. Diese Operation ist irrelevant für Selbstzahler (das ist wichtig für künftige weiterentwicklung - wenn im Account auf eine Coverage-Ressource für Selbstzahler referenziert wird, darf die Operation $anfragen nicht ausgeführt werden)."
Usage: #definition 

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
  * documentation = "Der *aufnahmezahl* Parameter beinhaltet den eindeutigen Identifizierer für den relevanten Fall."
  * type = #Identifier
* parameter[+]
  * name = #versicherer
  * use = #in 
  * min = 1
  * max = "1"
  * documentation = "Der *versicherer* Parameter beinhaltet den eindeutigen Identifizierer für den Versicherer an dem der VAERequest gerichtet ist."
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
