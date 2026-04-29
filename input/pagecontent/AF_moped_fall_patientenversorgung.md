{% include styleheader.md %}

Die folgenden Diagramme veranschaulichen die möglichen Interaktionen mit der Moped-Plattform im Teilprozess "Patientenversorgung". Zunächst werden die allgemeinen Interaktionsmöglichkeiten dargestellt, anschließend werden diese durch Beispiele konkretisiert und im Kontext einer spezifischen Anwendung dargestellt.

### Betroffene Akteure

| Akteur            |  |
|-------------------|--------------:|
| KA (Krankenhaus)  |      ✅   |
| LGF (Landesgesundheitsfonds) |  ❌  |
| SV (Sozialversicherung)      |  ❌  |
| Bund            |  ❌  |

### Ablauf - generisch
#### Patientenversorgung (generisch)
<div>{% include_relative plantuml/moped-fall-patientenversorgung/update-generisch.svg %}</div>
<div>{% include_relative plantuml/moped-fall-patientenversorgung/einmelden-generisch.svg %}</div>

### Ablauf - Beispiele zur Anwendung

#### Neue Verlegung (stationär) bzw. Kontakt (ambulant)
##### Beschreibung
Ein Patient wird auf eine Organisationseinheit verlegt bzw. kommt in eine Ambulanz. Ein Patient kann nicht auf mehreren Organisationseinheiten / in mehreren Ambulanzen gleichzeitig behandelt werden.

<div>{% include_relative plantuml/moped-fall-patientenversorgung/update-neue-verlegung.svg %}</div>

| Behandlungsart|  |
|-----------|----:|
| Ambulant  |  ✅ |
| Stationär |  ✅ |

#### Aktualisierte Verlegung (stationär) bzw. Kontakt (ambulant)
##### Beschreibung
Eine zuvor eingebrachte Verlegung / Kontakt wird aktualisiert.

<div>{% include_relative plantuml/moped-fall-patientenversorgung/update-aktualisierte-verlegung.svg %}</div>

| Behandlungsart|  |
|-----------|----:|
| Ambulant  |  ✅ |
| Stationär |  ✅ |


#### Aufnahmediagnose nachreichen
##### Beschreibung
Die Aufnahmediagnose war zum Zeitpunkt der administrativen Aufnahme noch unbekannt und wird nachgereicht. 

<div>{% include_relative plantuml/moped-fall-patientenversorgung/update-neue-aufnahmediagnose.svg %}</div>

| Behandlungsart|  |
|-----------|----:|
| Ambulant  |  ❓ |
| Stationär |  ✅ |

TBD: ist eine Aufnahmediagnose für ambulant relevant?


#### Erbrachte Leistung einbringen
##### Beschreibung
Eine neue Leistung wird erfasst die im Zuge der Patientenversorgung erbracht wurde.

<div>{% include_relative plantuml/moped-fall-patientenversorgung/update-neue-leistung.svg %}</div>


| Behandlungsart|  |
|-----------|----:|
| Ambulant  |  ✅ |
| Stationär |  ✅ |


#### Gestellte Diagnose einbringen
##### Beschreibung
Während der Patientenbehandlung wird eine Diagnose gestellt. Diese kann entweder eine Zusatz- oder Hauptdiagnose sein. In manchen Fällen ist sie auch gleichzeitig die Aufnahmediagnose.

<div>{% include_relative plantuml/moped-fall-patientenversorgung/update-neue-diagnose.svg %}</div>

| Behandlungsart|  |
|-----------|----:|
| Ambulant  |  ✅ |
| Stationär |  ✅ |


#### Veränderung von Falldetails
##### Beschreibung
Manche Details zum Aufenthalt können verwendert werden. Als unveränderbar gelten jedenfalls die Bestandteile der Schlüsselkombination eines Moped-Falls. 

<div>{% include_relative plantuml/moped-fall-patientenversorgung/update-aktualisierter-fall.svg %}</div>

| Behandlungsart|  |
|-----------|----:|
| Ambulant  |  ✅ |
| Stationär |  ✅ |

#### Einbringen der Intensivdokumentation
##### Beschreibung
Der Aufenthalt auf Intensivstationen (identifiziert durch bestimmte Funktionscodes) erfordert eine Einmeldung der Intensivdokumentation. 

<div>{% include_relative plantuml/moped-fall-patientenversorgung/einmelden-intensiv.svg %}</div>

| Behandlungsart|  |
|-----------|----:|
| Ambulant  | ❌ |
| Stationär |  ✅ |



#### Einbringen der Stroke-Unit Registermeldung
##### Beschreibung
TBD: gibt es einen Teil der Registermeldung die bei ambulanter Nachbehandlung eingebracht wird?

<div>{% include_relative plantuml/moped-fall-patientenversorgung/einmelden-strokeunit.svg %}</div>

| Behandlungsart|  |
|-----------|----:|
| Ambulant  | ❓ |
| Stationär |  ✅ |


### Relevante Profile
- [$update Bundle](StructureDefinition-MopedUpdateBundleKA.html)
- [SAPS3 Questionnaire](Questionnaire-LKFSAPS3Questionnaire.html)
- [TISS-A Questionnaire](Questionnaire-LKFTISSAQuestionnaire.html)

### Technische Hinweise

