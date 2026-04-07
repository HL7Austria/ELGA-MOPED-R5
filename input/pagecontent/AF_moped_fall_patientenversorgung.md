{% include styleheader.md %}

Die folgenden Diagramme veranschaulichen die möglichen Interaktionen mit der Moped-Plattform im Teilprozess "Patientenversorgung". Zunächst werden die allgemeinen Interaktionsmöglichkeiten dargestellt, anschließend werden diese durch Beispiele konkretisiert und im Kontext einer spezifischen Anwendung dargestellt.

### Betroffene Akteure

| Akteur            |  |
|-------------------|--------------:|
| KH (Krankenhaus)  |      ✅   |
| LGF (Landesgesundheitsfonds) |  ❌  |
| SV (Sozialversicherung)      |  ❌  |
| Bund            |  ❌  |

### Ablauf - generisch
#### Patientenversorgung (generisch)
<div>{% include Patientenversorgung-update-generisch.svg %}</div>
<div>{% include Patientenversorgung-einmelden-generisch.svg %}</div>

### Ablauf - Beispiele zur Anwendung

#### Neue Verlegung (stationär) bzw. Kontakt (ambulant)
##### Beschreibung
Ein Patient wird auf eine Organisationseinheit verlegt bzw. kommt in eine Ambulanz. Ein Patient kann nicht auf mehreren Organisationseinheiten / in mehreren Ambulanzen gleichzeitig behandelt werden.

<div>{% include Patientenversorgung-update-neue-verlegung.svg %}</div>

| Behandlungsart|  |
|-----------|----:|
| Ambulant  |  ✅ |
| Stationär |  ✅ |

### Ablauf - Beispiele zur Anwendung

#### Aktualisierte Verlegung (stationär) bzw. Kontakt (ambulant)
##### Beschreibung
Eine zuvor eingebrachte Verlegung / Kontakt wird aktualisiert.

<div>{% include Patientenversorgung-update-aktualisierte-verlegung.svg %}</div>

| Behandlungsart|  |
|-----------|----:|
| Ambulant  |  ✅ |
| Stationär |  ✅ |


#### Aufnahmediagnose nachreichen
##### Beschreibung
Die Aufnahmediagnose war zum Zeitpunkt der administrativen Aufnahme noch unbekannt und wird nachgereicht. 

<div>{% include Patientenversorgung-update-neue-aufnahmediagnose.svg %}</div>

| Behandlungsart|  |
|-----------|----:|
| Ambulant  |  ❓ |
| Stationär |  ✅ |

TBD: ist eine Aufnahmediagnose für ambulant relevant?


#### Erbrachte Leistung senden
##### Beschreibung
Eine neue Leistung wird erfasst die im Zuge der Patientenversorgung erbracht wurde.

<div>{% include Patientenversorgung-update-neue-leistung.svg %}</div>


| Behandlungsart|  |
|-----------|----:|
| Ambulant  |  ✅ |
| Stationär |  ✅ |


#### Gestellte Diagnose senden
##### Beschreibung
Während der Patientenbehandlung wird eine Diagnose gestellt. Diese kann entweder eine Zusatz- oder Hauptdiagnose sein. In manchen Fällen ist sie auch gleichzeitig die Aufnahmediagnose.

<div>{% include Patientenversorgung-update-neue-diagnose.svg %}</div>

| Behandlungsart|  |
|-----------|----:|
| Ambulant  |  ✅ |
| Stationär |  ✅ |


#### Veränderung von Falldetails
##### Beschreibung
Manche Details zum Aufenthalt können verwendert werden. Als unveränderbar gelten jedenfalls die Bestandteile der Schlüsselkombination eines Moped-Falls. 

<div>{% include Patientenversorgung-update-aktualisierter-fall.svg %}</div>


| Behandlungsart|  |
|-----------|----:|
| Ambulant  |  ✅ |
| Stationär |  ✅ |


#### Veränderung von Patientendetails
##### Beschreibung
TBD

| Behandlungsart|  |
|-----------|----:|
| Ambulant  |  ✅ |
| Stationär |  ✅ |

#### Einbringen der Intensivdokumentation
##### Beschreibung
TBD

| Behandlungsart|  |
|-----------|----:|
| Ambulant  | ❓ |
| Stationär |  ✅ |



#### Einbringen der Stroke-Unit Registermeldung
##### Beschreibung
TBD:

| Behandlungsart|  |
|-----------|----:|
| Ambulant  | ❌ |
| Stationär |  ✅ |


### Relevante Profile
TBD

### Technische Hinweise

