{% include styleheader.md %}

## Anwendungsfall 2: stationäre Aufnahme

### Betroffene Akteure

| Akteur            |  |
|-------------------|--------------:|
| KH (Krankenhaus)  |      ✅ |
| LGF (Landesgesundheitsfonds) |  ✅ |
| SV (Sozialversicherung)      |  ✅ |
| Bund            |  ✅ |

### Betroffene Behandlungsarten

| Behandlungsart|  |
|-----------|----:|
| Ambulant  |  ❌ |
| Stationär |  ✅ |


### Beschreibung
Der Patient wird stationär aufgenommen und die Aufnahme wird so früh wie möglich in Moped bereitgestellt.

### Beispiel

### Technische Hinweise
Der Patient wird stationär in das KH aufgenommen und ein Aufenthalt (Encounter) wird angelegt. In diesem Zuge wird auch gleich die Station auf die er aufgenommen wird (TransferEncounter) und die Aufnahmediagnose mit übermittelt. Die zuständige Versicherung kann in Form einer Coverage direkt zur Verfügung gestellt werden, sofern diese bereits bekannt ist. Dies ist aber bei der Aufnahme nicht verpflichtend und kann später durch $update eingebracht werden.

### Ablauf 

<div>{% include AF2.svg %}</div>

### Relevante Profile
- [$aufnahme Bundle](StructureDefinition-MopedUpdateBundleKH.html)
- [Patientenressource](TBD)
- [Encounter Stationär](StructureDefinition-MopedEncounterS.html)
- [TransferEncounter Stationär](StructureDefinition-MopedTransferEncounterS.html)
- [Aufnahmediagnose](StructureDefinition-MopedCondition.html)
- optional: [Coverage](StructureDefinition-MopedCoverage.html) oder [Selbstzahler Coverage](TBD)

### Relevante Invarianten

### Mögliche Notifications

#### SubscriptionTopic: X 

#### Tabellarische Übersicht

<table class="table-responsive">
  <tr>
    <th>Titel</th>
    <th>Beschreibung</th>
    <th>Trigger Ressource</th>
    <th>Interaktion</th>
    <th>Auslöser</th>
    <th>Empfänger</th>
    <th>Beschreibung zusätzlicher Bedingungen</th>
    <th>Relevantes Feld</th>
    <th>Bedingung</th>
  </tr>
  <tr>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
</table>