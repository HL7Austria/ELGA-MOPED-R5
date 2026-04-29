{% include styleheader.md %}

### Standardablauf Moped-Fall Selbstzahler

#### Betroffene Akteure

| Akteur            |  |
|-------------------|--------------:|
| KA (Krankenhaus)  |      ✅ |
| LGF (Landesgesundheitsfonds) |  ✅ |
| SV (Sozialversicherung)      |  ❌  |
| Bund            |  ✅  |

#### Betroffene Behandlungsarten

| Behandlungsart|  |
|-----------|----:|
| Ambulant  |  ✅ |
| Stationär |  ✅ |



#### Beschreibung: Selbstzahler
Vorgehensweise für Patienten, die nicht über die Sozialversicherungsschiene gemeldet werden, da sie Selbstzahler sind, jedoch im LKF aufscheinen.  
 
#### Beispiel
Nicht-EU Ausländer (z.B. US -Bürger), Patienten die über die Sozialhilfe oder Justizanstalten abgerechnet werden  

#### Vorbedingung
Es existiert kein Fall mit der selben Schlüsselkombination.

#### Ablauf

<div class="diagram">{% include_relative plantuml/moped-fall-standardablauf/standardablauf-selbstzahler.svg %}</div>
<div>{% include AF_standardablauf_selbstzahler_requests.md %}</div>

#### Technische Hinweise
Die Composition Section zustaendigeSV bleibt in diesem Fall leer, was Auswirkungen auf die Berechtigungen und den weiteren Ablauf hat. Die Operation $melden ist z.B. in diesem Fall nicht erlaubt und würde fehlschlagen.

#### Relevante Profile
- Selbstzahler Coverage (TBD Link)


