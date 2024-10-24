Instance: MOPEDFallAbrechnen
InstanceOf: OperationDefinition
Title: "MOPED Encounter $abrechnen (POC)"
Description: "Die $abrechnen Operation wird aufgerufen, wenn ein Fall abgerechnet werden sollte."
Usage: #definition
* purpose = """

**Wer ruft diese Operation in welchem Zusammenhang auf?**

Die Operation wird vom Akteur Krankenhaus (KH) aufgerufen. Die $abrechnen Operation wird aufgerufen, wenn ein(e) im Zuge des Falles erbrachte Leistung abgerechnet werden soll.

**Voraussetzungen für den Aufruf**

* Account-Status: `Entlassung vollständig` oder `Vorläufige Meldung`

**Detaillierte Business-Logik**

1. Suche des MOPEDEncounter: Der MOPEDEncounter mit der jeweiligen *aufnahmezahl* lt. Operation-Parameter wird gesucht
2. Der Claim wird lt. Regeln (siehe unten) validiert und eingespielt
3. Falls Schritt 2 erfolgreich war, wird der Encounter.account.workflowStatus (Encounter aus Schritt 1) wird auf 
   * `Vorläufige Meldung` gesetzt, falls der `abschliessen`-Parameter `false` ist
   * `Endgültige Meldung` gesetzt, falls der `abschliessen`-Parameter `true` ist


**Validierung / Fehlerbehandlung**

* Alle Procedures und Conditions aus Schritt 2 müssen im Claim vorkommen (referenziert unter `Claim.diagnosis` oder `Claim.procedure`)
* Claim.status soll `draft` sein, falls der `abschließen`-Parameter = `false` ist. 
* Claim.status soll `active` sein, falls der `abschließen`-Parameter = `true` ist. 
* Claim.patient muss gleich wie Encounter.subject sein (Encounter aus Schritt 1).
* Claim.billablePeriod muss innerhalb des Encounter.actualPeriod sein (Encounter aus Schritt 1).
* Claim.insurer muss gleich sein wie Encounter.account.coverage.insurer (falls dieser befüllt ist; Encounter aus Schritt 1).
* Claim.provider muss gleich sein wie Encounter.serviceProvider (Encounter aus Schritt 1).
* Claim.insurance.coverage muss gleich sein wie Encounter.account.coverage (falls diese beüllt ist; Encounter aus Schritt 1)
* Claim.accident muss befüllt sein, falls Encounter.account.VerdachtArbeitsSchuelerunfall	!= `0` ist


**Weitere Hinweise**

* Hinweis 1: Die Referenzen zu Diagnosis und Claims die bereits nach $leistungMelden am Server liegen werden mit Hilfe der logischen Identifier hergestellt

**Annahmen an das BeS**
* Es wurde vorab geprüft, ob das `system` des Parameters `aufnahmezahl` dem GDA entspricht, der die Operation aufruft. Somit ist sichergestellt, dass nur eigene Fälle abgerechnet werden können.

"""

* id = "MOPED.Encounter.Abrechnen"
* base = "http://hl7.org/fhir/OperationDefinition/Patient-leistungMelden"
* name = "MOPED_Encounter_Abrechnen"
* status = #draft
* kind = #operation
* affectsState = true
* resource = #Encounter
* system = false
* type = true
* instance = false
* code = #abrechnen
* parameter[+]
  * name = #aufnahmezahl
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "Der *aufnahmezahl* Parameter beinhält den eindeutigen Identifizierer für den relevanten Fall."
  * type = #Identifier
* parameter[+]
  * name = #abschliessen
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "Mit Hilfe des *abschliessen* Parameters wird angegeben, ob es sich bei der Fall-Abrechnung um die endgültige Meldung handeln soll."
  * type = #boolean
* parameter[+]
  * name = #claim
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "Der *claim* Parameter beinhält sämtliche Details zur Abrechnung lt. MOPEDClaim Profil."
  * type = #Claim
  * targetProfile = "MOPEDClaim"
* parameter[+]
  * name = #return
  * use = #out
  * min = 1
  * max = "1"
  * documentation = "Der *return* Parameter gibt Auskunft über den Erfolg der Operation."
  * type = #Resource
  * targetProfile[+] = Canonical(OperationOutcome)