Instance: MOPEDPatientEntlassen
InstanceOf: OperationDefinition
Title: "MOPED Patient $entlassen (POC)"
Description: """
Die Patient $entlassen Operation wird aufgerufen, wenn ein(e) Patient*in aus dem Krankenhaus entlassen wurde.

Die Operation wird vom Akteur Krankenhaus (KH) aufgerufen.

"""
Usage: #definition 

* id = "MOPED.Patient.Entlassen"
* base = "http://hl7.org/fhir/OperationDefinition/Patient-entlassen"
* name = "MOPED_Patient_Entlassen"
* status = #draft
* comment = """
1. Der Encounter erhält ein End-Datum, status wird auch discharged gesetzt
2. Es werden zahlreiche Felder, die hier als Parameter vorliegen, in die jeweiligen Extensions gepackt.
3. Ein Draft-Claim wird erstellt
4. Alles war wir für die SV-Entlassungsanzeige brauchen wird erstellt
5. Änderungen am Account?
"""
* kind = #operation 
* affectsState = true
* resource = #Patient
* system = false
* type = false
* instance = true
* code = #beurlauben
* parameter[+]
  * name = #aufnahmezahl
  * use = #in 
  * min = 1
  * max = "1"
  * documentation = "Der *aufnahmezahl* Parameter beinhält den eindeutigen Identifizierer für den relevanten Fall."
  * type = #string
* parameter[+]
  * name = #zeitpunkt
  * use = #in 
  * min = 1
  * max = "1"
  * documentation = "Der *zeitpunkt* Parameter definiert zu welchem Zeitpunkt die Beurlaubung startet."
  * type = #dateTime
* parameter[+]
  * name = #return
  * use = #out
  * min = 1
  * max = "1"
  * documentation = "Der *return* Parameter gibt Auskunft über den Erfolg der Operation."
  * type = #Resource
  * targetProfile[+] = Canonical(OperationOutcome)
