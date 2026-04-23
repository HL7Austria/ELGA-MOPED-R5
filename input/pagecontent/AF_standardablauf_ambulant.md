{% include styleheader.md %}

### Standardablauf Moped-Fall ambulant

#### Betroffene Akteure

| Akteur            |  |
|-------------------|--------------:|
| KH (Krankenhaus)  |      ✅ |
| LGF (Landesgesundheitsfonds) |  ✅  |
| SV (Sozialversicherung)      |  ✅  |
| Bund            |  ✅  |

#### Betroffene Behandlungsarten

| Behandlungsart| |
|-----------|----:|
| Ambulant  |  ✅  |
| Stationär |  ❌  |


#### Beschreibung
Ein Patient kommt in die Ambulanz und wird behandelt. Ambulanter Besuch (LKF Behandlungsart Ambulant) wird analog der stationären Aufnahme administriert. Es wird aber keine Entlassung erstellt. Da es die Möglichkeit einer Mehrfachversicherung gibt, kann es im ambulanten Bereich zu einem Versicherungsträgerwechsel kommen. Die Vergabe der Aufnahmezahl im ambulanten Bereich dient der Administration im KH und beschreibt nicht zwingend einen medizinischen Fall. Ein medizinischer Fall kann daher mehrere Aufnahmezahlen beinhalten und umgekehrt.

#### Beispiel
Ein Patient kommt mit einem gebrochenen Arm in das KH, wird dort behandelt (Röntgen, Gips, etc.) und kann nach ein paar Stunden wieder nach Hause gehen.

#### Vorbedingung
Es existiert kein Fall mit der selben Schlüsselkombination.

#### Ablauf 
<div class="diagram">{% include_relative plantuml/moped-fall-standardablauf/standardablauf-ambulant.svg %}</div>
<div>{% include AF_standardablauf_ambulant_requests.md %}</div>

#### Technische Hinweise
##### Tagesklammer vs. Aufteilung:
Ob die Tagesklammer verwendet wird oder nicht liegt im Ermessen des jeweiligen KH und muss auf Seite des KIS geregelt werden. In Moped werden dann entweder ein Datensatz mit allen Leistungen und Diagnosen des jeweiligen Tages oder mehrere Datensätze mit den aufgeteilten Leistungen und Diagnosen eingemeldet. Dabei ist zu beachten:
- Bei der Nutzung der Tagesklammer gibt es in den meisten Fällen in Moped pro Tag nur eine Composition und eine zugehörige VAE -> $aufnehmen wird nur ein mal ausgeführt.
- Wird die Tagesklammer nicht genutzt so ist es möglich mehrere gültige Compositions für den gleichen Tag und Patienten in Moped zu haben. Hierbei wird $aufnehmen mehrmals ausgeführt (Für jede X01 ein mal). Pro Composition gibt es dann jeweils eine VAE.
- Pro Composition gibt es zukünftig eine VAE. Bei Nutzung der Tagesklammer muss das KIS intern die VAE auf mehrere Aufnahmezahlen aufteilen.  
- Die Tagesklammer impliziert immer mehrere Aufnahmezahlen pro Patient, Tag und KA.
- Die Anzahl der Ausführungen von $aufnehmen entspricht der Anzahl der Anzahl der erstellten Compositions (und soll mit der Anzahl der X01 Datensätze übereinstimmen). Unterschiedliche Compositions müssen sich in zumindest einem der folgenden Datenfelder unterscheiden: 
    - Aufnahmezahl
    - Aufnahme-/Kontaktdatum
    - KA-Nummer

##### Transferencounter Stationär vs. Ambulant
Der Transferencounter entspricht nicht wie beim stationären Fall der Verlegung/Aufnahme auf eine andere Station sondern einem Kontakt oder einer Bewegung (entspricht einer Behandlungen auf unterschiedlichen Funktionscodes).

#### Relevante Profile
- [$aufnehmen Bundle](StructureDefinition-MopedAufnehmenBundleKH.html)
- [$update Bundle](StructureDefinition-MopedUpdateBundleKH.html)
- [$anfragen Bundle](StructureDefinition-MopedAnfragenBundleKH.html)
- [$antworten Bundle](StructureDefinition-MopedAntwortenBundleSV.html)
- [$abrechnen Bundle](StructureDefinition-MopedAbrechnenBundleKH.html)
- [$entscheiden Bundle](StructureDefinition-MopedEntscheidenLGFBundle.html)
- [Ambulanter Encounter](StructureDefinition-MopedEncounterA.html)
- [Ambulanter Transferencounter](StructureDefinition-MopedTransferEncounterA.html)

#### Relevante Invarianten

#### Mögliche Notifications

##### SubscriptionTopic: X 

##### Tabellarische Übersicht

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