{% include styleheader.md %}


## Moped Fall - Aufnahme
Die folgenden Diagramme veranschaulichen die möglichen Interaktionen mit der Moped-Plattform im Teilprozess "Aufnahme". Zunächst werden die allgemeinen Interaktionsmöglichkeiten dargestellt, anschließend werden diese durch Beispiele konkretisiert und im Kontext einer spezifischen Anwendung dargestellt.

### Betroffene Akteure

| Akteur            |  |
|-------------------|--------------:|
| KH (Krankenhaus)  |      ✅   |
| LGF (Landesgesundheitsfonds) |  ❌  |
| SV (Sozialversicherung)      |  ❌  |
| Bund            |  ❌  |

### Ablauf 
#### Aufnahme (generisch)
<div>{% include aufnehmen.svg %}</div>

### Relevante Profile
- [$aufnahme Bundle](StructureDefinition-MopedUpdateBundleKH.html)
- [Patientenressource](TBD)
- [Encounter Stationär](StructureDefinition-MopedEncounterS.html)
- [Encounter Ambulant](TBD)
- [TransferEncounter Stationär](StructureDefinition-MopedTransferEncounterS.html)
- [TransferEncounter Ambulant](TBD)
- [TransferEncounter Intensiv](TBD)
- [Aufnahmediagnose](StructureDefinition-MopedCondition.html)
- optional: [Coverage](StructureDefinition-MopedCoverage.html) oder [Selbstzahler Coverage](TBD)
- optional: [RelatedPerson Hauptversicherter](TBD)
- optional: [Überweisende Organization](TBD)


### Ablauf - Beispiele und mit Kontext

#### Aufnahme - bPK des Patienten bekannt
##### Beschreibung
Wenn das bPK bekannt ist, dann ist eine datenminimierte Version der Patienten-Ressource im Zuge der Aufnahme einzumelden.  

| Behandlungsart|  |
|-----------|----:|
| Ambulant  |  ✅ |
| Stationär |  ✅ |

<div>{% include aufnehmen-bpk.svg %}</div>

#### Aufnahme - bPK des Patienten nicht bekannt
##### Beschreibung
Wenn das bPK des Patienten nicht bekannt ist bzw. nicht exisiert, dann ist eine Klarnamen-Version Patienten-Ressource im Zuge der Aufnahme einzumelden.  

| Behandlungsart|  |
|-----------|----:|
| Ambulant  |  ✅ |
| Stationär |  ✅ |

<div>{% include aufnehmen-kein-bpk.svg %}</div>

#### Aufnahme - Versicherungsdetails bekannt
##### Beschreibung
Sind die Versicherungsdetails bereits bei der Aufnahme bekannt, können diese direkt in $aufnehmen eingebracht werden. Hinweis: auch die Markierung eines Falls als "Selbstzahler" wird in diesem Sinn als Versicherungsdetails verstanden.

| Behandlungsart|  |
|-----------|----:|
| Ambulant  |  ✅ |
| Stationär |  ✅ |

<div>{% include aufnehmen-versicherungsdetails.svg %}</div>

#### Aufnahme - Selbstzahler
##### Beschreibung
Ist bereits bei der Aufnahme bekannt, dass der Patient ein Selbstzahler ist, kann diese Information direkt in $aufnehmen eingebracht werden. Hinweis: auch die Markierung eines Falls als "Selbstzahler" wird in diesem Sinn als Versicherungsdetails verstanden.

| Behandlungsart|  |
|-----------|----:|
| Ambulant  |  ✅ |
| Stationär |  ✅ |

<div>{% include aufnehmen-selbstzahler.svg %}</div>

#### Aufnahme - Versicherungsdetails noch nicht bekannt
##### Beschreibung
Die Versicherungsdetails sind bei der Aufnahme optional. Wenn sie erst nach Ausführen von $aufnehmen bekannt sind, können sie mit Hilfe von einem anschließenden $update nachgereicht werden. Hinweis: auch die Markierung eines Falls als "Selbstzahler" wird in diesem Sinn als Versicherungsdetails verstanden.

| Behandlungsart|  |
|-----------|----:|
| Ambulant  |  ✅ |
| Stationär |  ✅ |

<div>{% include aufnehmen-keine-versicherungsdetails.svg %}</div>
<div>{% include update-versicherungsdetails-nachmelden.svg %}</div>

#### Aufnahme - Neugeborenes
##### Beschreibung
TBD - ein Neugeborenes hat oft noch kein bPK und keine Versicherungsdaten. Hat es bereits einen fixen Vornamen (ich denke, da hat man mehrere Tage Zeit)

| Behandlungsart|  |
|-----------|----:|
| Ambulant  |  ✅ |
| Stationär |  ✅ |


#### Aufnahme - Durch Überweisung
##### Beschreibung
Kommt ein Patient durch eine Überweisung in das Krankenhaus, so muss der Überweiser als mit angegeben werden. GDAs aus Österreich sind in Moped als Stammdaten hinterlegt und können referenziert werden. Für ausländische GDAs muss eine neue Organization-Ressource mit den Details angelegt werden.

| Behandlungsart|  |
|-----------|----:|
| Ambulant  | ❓ |
| Stationär |  ✅ |

TBD: wird die überweisende Organization auch für ambulante Fälle mitgegeben?

<div>{% include aufnehmen-ueberweisung.svg %}</div>


#### Aufnahme - Durch Transfer
##### Beschreibung
TBD: bei Transfer muss ein bestimmtes Flag gesetzt werden

| Behandlungsart|  |
|-----------|----:|
| Ambulant  | ❓ |
| Stationär |  ✅ |

TBD: ist Transfer auch für ambulante Fälle relevant?