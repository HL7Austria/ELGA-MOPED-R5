<style>
  .no-number {
    --heading-prefix: none;
  }
</style>
Dieser Abschnitt gibt einen Überblick über die Struktur des Implementation Guides und dient als Orientierungshilfe zum schnellen Auffinden relevanter Informationen.  

### Aufbau des IG
Im Folgenden wird beschrieben, welche Bereiche im Menü des IG zu finden sind und welchen Zweck sie jeweils erfüllen.

#### Einleitung
Der Menüpunkt *Einleitung* besteht aus den folgenden Unterabschnitten:
- **Umfang und Inhalt:** Ist der aktuell geöffnete Abschnitt, welcher einen Überblick über die Struktur des Implementation Guides gibt
- **Hintergrund:** Erläutert kurz die Motivation und Rahmenbedingungen des MOPED-Projekts
- **Herausforderungen:** Thematisiert die Herausforderungen im Projektkontext

#### Funktionales
Besteht aus den Unterpunkten:
- **Designentscheidungen**
- **Akteure**
- **Workflowmanagement**
- **Obligations**

<h4 class="no-number">Designentscheidungen</h4>
Unter *Designentscheidungen* werden grundlegende technische und architektonische Designentscheidungen erläutert, die als Basis einer Implementierung von MOPED dienen.  
Behandelt werden unter anderem:
- der **Composition-Ansatz** zur Abbildung des Fallkontexts,  
- **Invarianten** zur automatisierten Validierung,  
- **Referenzmanagement**,  
- **Protokollierungskonzept**, 
- ...

<h4 class="no-number">Akteure</h4>

Der Menüpunkt *Akteure* beschreibt die beteiligten Stakeholder und deren übergeordnete Interaktionen innerhalb von MOPED.  
Dies umfasst Krankenanstalten, Sozialversicherungsträger, den Landesgesundheitsfonds sowie Bund und medizinische Register.  
Dargestellt wird, **welche Akteure Daten einbringen, empfangen oder verarbeiten** und auf welchen Kommunikationswegen (FHIR-Operations, GET, etc.) dies geschieht.  
Diese Übersicht dient vor allem der Orientierung zum Zusammenspiel der Systeme und Prozesse im Gesamtkontext.

<h4 class="no-number">Workflowmanagement</h4>

Jede Ressource im MOPED-Kontext besitzt einen **eigenen Lebenszyklus**, der während des Fallprozesses beeinflusst wird.  
Das Workflowmanagement beschreibt, wie sich der Status bestimmter Schlüsselressourcen (z. B. *Encounter*, *Claim*, *Composition*) im Laufe des Prozesses verändert und welche Operationen diese Zustandsänderungen auslösen.  

<h4 class="no-number">Obligations</h4>
Der Abschnitt *Obligations* beschreibt die Verwendung von FHIR Obligation Extensions zum Ausdruck von Anforderungen einzelner Element an bestimmte Akteure.

#### Anwendungsfälle

In diesem Abschnitt werden die fachlichen Abläufe beschrieben, die über MOPED umgesetzt werden.  
Dazu zählen **stationäre und ambulante Fälle**, aber auch **spezielle Szenarien**, wie z. B. Korrekturen, Versicherungs- bzw. Fallartwechsel oder der Behandlungsabbruch.  
Jeder Anwendungsfall zeigt den standardisierten Ablauf, die beteiligten Ressourcen und Operations sowie das erwartete Verhalten der Systeme.
Eine detaillierte Erklärung des Aufbaus der Anwendungsfälle befindet sich auf der Startseite der Anwendungsfälle. 

#### Questionnaires

Meldungen, welche einen strukturierten Aufbau besitzen aber nicht der typischen feingranularen Struktur von FHIR Ressourcen entsprechen, können effizient mit strukturierten FHIR Questionnaires abgebildet werden. In diesem Abschnitt befinden sich Links zu den bereits definierten FHIR Questionnaires. In MOPED werden mithilfe von Questionnaires u. a. folgende Inhalte umgesetzt:
- LKF-Jahresmeldungen,  
- Registermeldungen,  
- Intensivdokumentation.

#### Mappings

Da in den beteiligten Systemen bislang unterschiedliche Datenformate verwendet wurden, stellt der Abschnitt *Mappings* die Verbindung zwischen bisherigen Datenmodellen (z. B. MBDS, KaOrg) und der neuen FHIR-Datenstruktur her. Mappings erleichtern das Verständnis, **welches Feld in MOPED welchem FHIR-Ressourcenelement entspricht**.

Das Mapping Menü enthält vier Hauptbereiche:
- **MBDS Mapping:** Mapping aller im MBDS enthaltenen Datensätze zu FHIR Ressourcen
- **LKF Jahresmeldung:** Links zu Questionnaires der Jahresmeldungsdatensätze
- **KaOrg Mapping:** Mapping der KaOrg-Datensätze zu FHIR-Ressourcen
- **Stammdaten:** Beschreibung zentraler Stammdaten in Moped

<h4 class="no-number">Aufbau des Mappings und Suche konkreter Felder</h4>
Das MBDS und KaOrg Mapping enthalten zu jedem Feld folgende Informationen:
- Feld: Ursprüngliche Feldbezichnung aus KaOrg oder MBDS 
- Profile: Name der relevanten Moped-Profile
- FHIR Ressource: Ressource, auf der das Profil basiert
- Pfad von der Ressource aus: Konkreter Elementpfad innerhalb der Zielressource (z.B. Encounter.actualPeriod.start)
- Pfad von der Composition aus: Im Moped Kontext wird meistens von der Composition Ebene ausgehend gearbeitet - Position der Ressource innerhalb des Fallkontexts 
- Anmerkung: zusätzliche Informationen zum jeweiligen Feld


Für MBDS und KaOrg Felder ist außerdem der Feldname in der jeweiligen Beschreibung des Elements im Profil hinterlegt. Hierbei muss aber auf die Verwendung der richtigen Ansicht geachtet werden (Key Elements, Snapshot,...). Weitere Informationen dazu gibt es im Abschnitt *Wie liest man ein Moped Profil*

#### Artifacts

Unter *Artifacts* sind alle FHIR-basierten Bausteine des Implementation Guides zusammengefasst.  
Hier finden sich:
- **Definitionen der MOPED-Profile** ([Structures: Resource Profiles](https://fhir.hl7.at/r5-ELGA-MOPED-637-IG-Home-erweitern/artifacts.html#structures-resource-profiles))
- **Operations** ([Behavior: Operation Definitions](https://fhir.hl7.at/r5-ELGA-MOPED-637-IG-Home-erweitern/artifacts.html#behavior-operation-definitions))
- **Extensions** ([Structures: Extension Definitions](https://fhir.hl7.at/r5-ELGA-MOPED-637-IG-Home-erweitern/artifacts.html#structures-extension-definitions))
- **Terminologien** ([Code Systems](https://fhir.hl7.at/r5-ELGA-MOPED-637-IG-Home-erweitern/artifacts.html#terminology-code-systems), [Value Sets](https://fhir.hl7.at/r5-ELGA-MOPED-637-IG-Home-erweitern/artifacts.html#terminology-value-sets))
- **Beispielinstanzen** ([Example: Example Instances](https://fhir.hl7.at/r5-ELGA-MOPED-637-IG-Home-erweitern/artifacts.html#example-example-instances))
- **Akteurdefinitionen für die Obligations** ([Requirements: Actor Definitions](https://fhir.hl7.at/r5-ELGA-MOPED-637-IG-Home-erweitern/artifacts.html#requirements-actor-definitions))


Jedes Artefakt kann direkt im Browser betrachtet und bei Bedarf als FHIR-konforme JSON- oder XML-Datei heruntergeladen werden.  
Für Implementierer:innen ist dieser Abschnitt der zentrale Einstiegspunkt, wenn konkrete Strukturen, Felder oder Logiken nachvollzogen werden sollen.  
Hinweise zur optimalen Ansicht (z. B. *Snapshot* vs. *Differential* oder *Key Elements*) finden sich im Kapitel *Wie liest man ein Moped Profil*.

#### About
Besteht aus den Unterpunkten:
- **Mitwirkende**: Listet Personen und Organisationen, die an der Entwicklung des IG beteiligt sind
- **Downloads**: Enthält wichtige Dateien und Ressourcen zum IG
- **Dependencies**: fasst alle externen Abhängigkeiten des Implementation Guides zusammen. Hier wird beschrieben, welche technischen Komponenten, Standards oder Profilversionen vorausgesetzt werden.
- **Known Issues**: Liste bekannter Einschränkungen im aktuellen Entwicklungsstatus des IG

