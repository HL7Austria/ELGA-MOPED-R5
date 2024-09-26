Instance: MOPEDPatientVerlegen
InstanceOf: OperationDefinition
Title: "MOPED Patient $verlegen"
Description: """
Die Operation wird vom Akteur Krankenhaus (KH) aufgerufen.

Die Patient $verlegen Operation wird aufgerufen, wenn ein(e) Patient*in auf eine andere Station verlegt wird. 

1. Neuer Transfer Encounter: Der MOPEDEncounter mit der jeweiligen Aufnahmezahl wird gesucht, und ein neuer MOPEDTransferEncounter der mit partOf den MOPEDEncounter referenziert wird erstellt. Beim neu erstellten MOPEDTransferEncounter wird der *zeitpunkt* als *MOPEDTransferEncounter.actualPeriod.start* eingefügt und als *MOPEDTransferEncounter.serviceProvider* die Abteilung MOPEDOrganizationAbteilung mit dem jeweiligen *funktionscode* referenziert. Die Extension *MOPEDTransferEncounter.Neugeborenes* wird lt. LKF-Regeln berechnet (siehe Note 2).
2. Alter Transfer Encounter: Der alte MOPEDTransferEncounter der partOf des MOPEDEncounters mit der jeweiligen Aufnahmezahl war und noch den Status *in-progress* hat, wird gesucht. Der Status wird auf *completed* gesetzt und die MOPEDTransferEncounter.actualPeriod.end mit dem *zeitpunkt* der Verlegung versehen. Ebenso wird beim alten Encounter die *abgangsart* von diesem Funktionscode dokumentiert. 
3. AnzahlBeurlaubungen: Dieser Counter gibt die Wiederaufnahmen nach Urlaub an. Wenn es sich beim alten MOPEDTransferEncounter der gerade auf *completed* gesetzt wurde um eine Beurlaubung gehandelt hat (i.e. Funktionscode XXX-TBD), dann wird der Counter Account.extension.AnzahlBeurlaubungen um 1 erhöht. 
4. AnzahlVerlegungen: Die Extension Account.extension.AnzahlVerlegungen im zur Aufnahmezahl gehöhrenden Account wird um 1 erhöht.
5. Validierung: Es kann immer nur einen MOPEDTransferEncounter für den jeweiligen Fall geben der partOf eines MOPEDEncounters mit der *aufnahmezahl* ist und den Status *in-progress* hat. 

Note 1: Der Counter für AnzahlVerlegungen wird auch im Falle einer Beurlaubung erhöht, bei der eine reguläre Verlegung-Operation aufgerufen wird.
Note 2: LKF 4.2.16 Neugeborenes
* Ja (Alter zum Zugangszeitpunkt auf die Abteilung <28 Tage)
* Nein (Alter zum Zugangszeitpunkt auf die Abteilung >=28 Tage)
"""
Usage: #definition 

* id = "MOPED.Patient.Verlegen"
* base = "http://hl7.org/fhir/OperationDefinition/Patient-verlegen"
* name = "MOPED_Patient_Verlegen"
* status = #draft
* kind = #operation 
* affectsState = true
* resource = #Encounter
* system = false
* type = true
* instance = false
* code = #verlegen
* parameter[+]
  * name = #aufnahmezahl
  * use = #in 
  * min = 1
  * max = "1"
  * documentation = "Der *aufnahmezahl* Parameter beinhält den eindeutigen Identifizierer für den relevanten Fall."
  * type = #Identifier
* parameter[+]
  * name = #zeitpunkt
  * use = #in 
  * min = 1
  * max = "1"
  * documentation = "Der *zeitpunkt* Parameter definiert zu welchem Zeitpunkt die Verlegung stattfindet."
  * type = #dateTime
* parameter[+]
  * name = #funktionscode
  * use = #in 
  * min = 1
  * max = "1"
  * documentation = "Der *funktionscode* Parameter definiert auf welchen Funktionscode die Verlegung stattfindet."
  * type = #string
* parameter[+]
  * name = #pysischeAnwesenheit
  * use = #in 
  * min = 0
  * max = "1"
  * documentation = "Der *pysischeAnwesenheit* Parameter definiert ob der Patient physisch anwesend ist oder nicht."
  * type = #boolean
* parameter[+]
  * name = #abgangsart
  * use = #in 
  * min = 0
  * max = "1"
  * documentation = "Der *abgangsart* Parameter definiert die Abgangsart des Patienten vom bisher aktuellen MOPEDTransferEncounter."
  * type = #code
  * binding[+]
    * strength = #required
    * valueSet = "moped-abgangsart-valueset"
* parameter[+]
  * name = #return
  * use = #out
  * min = 1
  * max = "1"
  * documentation = "Der *return* Parameter gibt Auskunft über den Erfolg der Operation."
  * type = #Resource
  * targetProfile[+] = Canonical(OperationOutcome)

