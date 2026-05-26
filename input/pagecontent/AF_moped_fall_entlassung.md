{% include styleheader.md %}

Die folgenden Diagramme veranschaulichen die möglichen Interaktionen mit der Moped-Plattform im Teilprozess "Entlassung". Zunächst werden die allgemeinen Interaktionsmöglichkeiten dargestellt, anschließend werden diese durch Beispiele konkretisiert und im Kontext einer spezifischen Anwendung dargestellt.

### Betroffene Akteure

| Akteur            |  |
|-------------------|--------------:|
| KA (Krankenhaus)  |      ✅   |
| LGF (Landesgesundheitsfonds) |  ❌  |
| SV (Sozialversicherung)      |  ❌  |
| Bund            |  ❌  |

### Ablauf - generisch
#### Entlassung (generisch)
<div>{% include_relative plantuml/moped-fall-entlassung/entlassen-generisch.svg %}</div>

### Ablauf - Beispiele zur Anwendung

#### Entlassung - Hauptdiagnose bereits bekannt
##### Beschreibung
Die Patientenversorgung ist abgeschlossen, der Patient wird entlassen und die Hauptdiagnose ist zu diesem Zeitpunkt bereits bekannt.

| Behandlungsart|  |
|-----------|----:|
| Ambulant  |  ❌ |
| Stationär |  ✅ |


<div>{% include_relative plantuml/moped-fall-entlassung/entlassen-mit-hauptdiagnose.svg %}</div>

#### Entlassung - Patient verlässt Krankenhaus; Hauptdiagnose noch unbekannt
##### Beschreibung
Die Patientenversorgung ist abgeschlossen, der Patient wird entlassen. Es dauert jedoch noch etwas, bis die Hauptdiagnose bekannt ist. 

| Behandlungsart|  |
|-----------|----:|
| Ambulant  |  ❌ |
| Stationär |  ✅ |


<div>{% include_relative plantuml/moped-fall-entlassung/update-aufenthalt-beenden.svg %}</div>
<div>{% include_relative plantuml/moped-fall-entlassung/entlassen-hauptdiagnose-nachmelden.svg %}</div>

#### Entlassung - Durch Transfer in ein anderes Krankenhaus
##### Beschreibung
TBD 

| Behandlungsart|  |
|-----------|----:|
| Ambulant  |  ❌ |
| Stationär |  ✅ |



### Relevante Profile
- [$entlassen Bundle](StructureDefinition-AtMopedBundleEntlassenKA.html)
- [Encounter Stationär](StructureDefinition-at-moped-encounter-aufenthalt-stationaer-basis.html)
- [BewegungsEncounter Stationär](StructureDefinition-AtMopedEncounterBewegungStationaerBasis.html)
- [Diagnose](StructureDefinition-AtMopedConditionBasis.html)

### Technische Hinweise

