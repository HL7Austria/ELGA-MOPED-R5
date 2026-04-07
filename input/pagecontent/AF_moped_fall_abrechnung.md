{% include styleheader.md %}

Die folgenden Diagramme veranschaulichen die möglichen Interaktionen mit der Moped-Plattform im Teilprozess "Abrechnen". Zunächst werden die allgemeinen Interaktionsmöglichkeiten dargestellt, anschließend werden diese durch Beispiele konkretisiert und im Kontext einer spezifischen Anwendung dargestellt.

### Betroffene Akteure

| Akteur            |  |
|-------------------|--------------:|
| KH (Krankenhaus)  |      ✅   |
| LGF (Landesgesundheitsfonds) |   ❌   |
| SV (Sozialversicherung)      |  ❌  |
| Bund            |  ❌  |

### Ablauf - generisch
#### Abrechnung - generisch
<div>{% include abrechnen.svg %}</div>

Folgende Zustände existieren und dienen in weiterer Folge als Vor-/Nachbedingungen:
- es gibt noch keine Abrechnung
- es gibt bereits eine unbeantwortete vorläufige Abrechnung
- es gibt bereits eine genehmigte vorläufige Abrechnung
- es gibt bereits eine abgelehnte vorläufige Abrechnung
- es gibt bereits eine unbeantwortete endgültige Abrechnung
- es gibt bereits eine genehmigte endgültige Abrechnung
- es gibt bereits eine abgelehnte endgültige Abrechnung

zwischen den Zuständen sind folgende Übergänge möglich:
<div>{% include abrechnen-zustaende.svg %}</div>


### Ablauf - Beispiele zur Anwendung

#### Abrechnung - vorläufige Abrechnung
##### Beschreibung
Eine vorläufige Abrechnung wird entweder initial eingebracht oder ersetzt aufgrund von Änderungen in den Moped-Falldaten eine vorherige Abrechnung. Es kann so lange neu abgerechnet werden, bis eine endgueltige Abrechnung eingebracht wird.

| Behandlungsart|  |
|-----------|----:|
| Ambulant  |  ✅ |
| Stationär |  ✅ |

<div>{% include abrechnen-vorlaeufig.svg %}</div>

#### Abrechnung - endgültige Abrechnung
##### Beschreibung
Eine endgültige Abrechnung wird entweder initial eingebracht, folgt auf eine vorläufige Abrechnung oder folgt auf eine Ablehnung einer vorherigen Abrechnung. Nach einer endgültigen Abrechnung kann der Moped-Fall nur mehr im Falle einer Ablehnung des LGF aktualisiert werden.

| Behandlungsart|  |
|-----------|----:|
| Ambulant  |  ✅ |
| Stationär |  ✅ |

<div>{% include abrechnen-endgueltig.svg %}</div>

#### Abrechnung - Leistung ohne Abrechnungsrelevanz
##### Beschreibung
Es werden Kosten für ambulante Besuche /Aufenthalte bzw. einzelne Leistungen durch unterschiedliche Kostenträger übernommen.
##### Beispiele
Vorsorgeuntersuchung Coloskopie, Vorsorgeuntersuchung Brust-Krebs-Früherkennung bzw. Selbstzahlerleistungen (z.B. Tubensterilisation ohne medizinische Indikation im Rahmen einer Geburt) im Rahmen eines fonds-finanzierten Aufenthalts/Besuchs.

| Behandlungsart|  |
|-----------|----:|
| Ambulant  |  ✅ |
| Stationär |  ✅ |

<div>{% include abrechnen-leitsung-ohne-abrechnungsrelevanz.svg %}</div>


#### Abrechnung - Änderung von Leistungen oder Diagnosen für Abrechnung
##### Beschreibung
Leistungen, Diagnosen oder andere abrechnungsrelevante Informationen müssen im Moped-Fall geändert oder hinzugefügt werden. Dadurch wird die vorherige Abrechnung ungültig und muss neu eingebracht werden.
##### Beispiele


| Behandlungsart|  |
|-----------|----:|
| Ambulant  |  ✅ |
| Stationär |  ✅ |

<div>{% include update-aenderung-nach-abrechnung.svg %}</div>
<div>{% include abrechnen-nach-aenderung.svg %}</div>

### Relevante Profile
- [$abrechnen Bundle](StructureDefinition-MopedAbrechnenBundleKH.html)

### Technische Hinweise