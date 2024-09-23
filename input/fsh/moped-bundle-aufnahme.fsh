Profile: MOPEDAufnahmeBundle
Parent: Bundle
Title: "MOPED Aufnahme Bundle"
Description: """
Bundle für die Input-Ressourcen bei Patienten-Aufnahme

* Note 1: Anstelle einer separaten GDA-Organization-Ressource ist angedacht, hier mit einer conditional Reference in der Ressource Encounter mit entsprechendem GDA-identifier zu arbeiten. Somit wird auch vermieden, dass Duplikate einer GDA-Organization-Ressource am Server angelegt/verwendet werden.
* Note 2: Es wird davon ausgegangen, dass der Patient bereits vor der Bundle-Erstellung mit dem ZPI abgeglichen wurde.
* Note 3: Es wird davon ausgegangen, dass vor der Bundle-Erstellung eine VDAS-Abfrage gestellt wurde. Die Coverage-Ressourcen in diesem Transaction-Bundle speichern die Ansprüche aufgrund der VDAS-Abfrage in Moped ein.
* Note 4: In Zukunft wird Moped auch die Datenübermittlung von Selbstzahlern und Privatversicherten unterstützen. Für diese Ansprüche werden separate Coverage-Profile definiert werden und dieses Bundle wird in weiterer Folge unterschiedliche Coverage-Arten unterstützen.


TBD: wenn es mehrere Coverages gibt, kann es auch mehrere Hauptversicherte geben. Diese müssen aber einer Coverage zugewiesen sein. Check, wie diese Zuordnung erfolgen kann.
"""

* implicitRules 0..0

* type = #transaction
* entry 1..*
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.ordered = false
* entry contains
  Encounter 1..1
* entry[Encounter].resource only MOPEDEncounter
* entry contains
  Coverage 1..*
* entry[Coverage].resource only SVCCoverage
* entry contains
  Patient 1..1
* entry[Patient].resource only HL7ATCorePatient
* entry contains
  Hauptversicherter 0..1
* entry[Hauptversicherter].resource only HL7ATCorePatient