Profile: MOPEDAufnahmeBundle
Parent: Bundle
Title: "MOPED Aufnahme Bundle"
Description: """
Bundle für die Input-Ressourcen bei Patienten-Aufnahme

* Hinweis 1: Anstelle einer separaten GDA-Organization-Ressource ist angedacht, hier mit einer conditional Reference in der Ressource Encounter mit entsprechendem GDA-identifier zu arbeiten. Somit wird auch vermieden, dass Duplikate einer GDA-Organization-Ressource am Server angelegt/verwendet werden.
* Hinweis 2: Es wird davon ausgegangen, dass der Patient bereits vor der Bundle-Erstellung mit dem ZPI abgeglichen wurde.
* Hinweis 3: Es wird davon ausgegangen, dass vor der Bundle-Erstellung eine VDAS-Abfrage gestellt wurde. Die Coverage-Ressourcen in diesem Transaction-Bundle speichern die Ansprüche aufgrund der VDAS-Abfrage in Moped ein.
* Hinweis 4: In Zukunft wird Moped auch die Datenübermittlung von Selbstzahlern und Privatversicherten unterstützen. Für diese Ansprüche werden separate Coverage-Profile definiert werden und dieses Bundle wird in weiterer Folge unterschiedliche Coverage-Arten unterstützen.
* Hinweis 5: Eine vorangegangene VDAS-Anfrage an die SVC kann mehrere Coverages retournieren. In diesem Fall wählt der Patient/die Patientin direkt bei aufnahme *eine* Versicherung aus, welche im Zuge der Aufnahme gespeichert wird. Das ist der Grund für die Kardinalität 1..1 der Coverage in diesem Bundle.

"""

* implicitRules 0..0

* type = #transaction
* entry 1..*
* entry ^slicing.discriminator[0].type = #type
* entry ^slicing.discriminator[=].path = "resource"
* entry ^slicing.discriminator[+].type = #profile
* entry ^slicing.discriminator[=].path = "resolve()"
* entry ^slicing.rules = #open
* entry ^slicing.ordered = false
* entry contains
  Encounter 1..1
* entry[Encounter].resource only MOPEDEncounterKH
* entry contains
  Coverage 1..1
* entry[Coverage].resource only SVCCoverage
* entry contains
  Patient 1..1
* entry[Patient].resource only HL7ATCorePatient
* entry contains
  Hauptversicherter 0..1
* entry[Hauptversicherter].resource only Hauptversicherter
* entry contains
  UeberweisendeOrganisation 0..1
* entry[UeberweisendeOrganisation].resource only HL7ATCoreOrganization