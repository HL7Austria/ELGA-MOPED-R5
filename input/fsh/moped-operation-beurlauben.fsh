Instance: MOPEDPatientBeurlauben
InstanceOf: OperationDefinition
Title: "MOPED Patient $beurlauben"
Description: """
Die Patient $beurlauben Operation wird aufgerufen, wenn ein(e) Patient*in in das Krankenhaus aufgenommen wurde und während eines laufenden Falles beurlaubt wird. Die Operation $verlegen wird aufgerufen mit dem Funktionscode XXX als Parameter, der Abgangsart YYY und ohne physische Anwesenheit. TBD: finde heraus, welcher Funktionscode und welche Abgangsart konkret für Urlaub stehen.

Die Operation wird vom Akteur Krankenhaus (KH) aufgerufen.
"""
Usage: #definition 

* id = "MOPED.Patient.Beurlauben"
* base = "http://hl7.org/fhir/OperationDefinition/Patient-beurlauben"
* name = "MOPED_Patient_Beurlauben"
* status = #draft
* comment = "TBD: Klären, auf welchem Endpunkt die Operation aufgerufen werden soll (Encounter, Patient oder Server-Base)"
* kind = #operation 
* affectsState = true
* resource = #Encounter
* system = false
* type = true
* instance = false
* code = #beurlauben
* parameter[+]
  * name = #aufnahmezahl
  * use = #in 
  * min = 1
  * max = "1"
  * documentation = "Der *aufnahmezahl* Parameter beinhält den eindeutigen Identifizierer für den relevanten Fall."
  * type = #identifier
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
