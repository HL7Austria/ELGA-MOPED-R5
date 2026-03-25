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

#### Aufnahme - bPK des Patienten nicht bekannt

#### Aufnahme - Versicherungsdetails bekannt

#### Aufnahme - Versicherungsdetails noch nicht bekannt

#### Aufnahme - Neugeborenes

#### Aufnahme - Durch Überweisung

#### Aufnahme - Durch Transfer