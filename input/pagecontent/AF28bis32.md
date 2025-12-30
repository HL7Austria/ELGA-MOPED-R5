{% include styleheader.md %}


## Anwendungsfall 28: Positive VAE inkl. Verlängerung

### Betroffene Akteure

| Akteur            |  |
|-------------------|--------------:|
| KH (Krankenhaus)  |      ✅   |
| LGF (Landesgesundheitsfonds) |  ✅  |
| SV (Sozialversicherung)      |  ✅  |
| Bund            |  ✅  |

### Betroffene Behandlungsarten

#### Positive VAE

| Behandlungsart|  |
|-----------|----:|
| Ambulant  |  ✅ |
| Stationär |  ✅ |

#### Verlängerung der VAE

| Behandlungsart|  |
|-----------|----:|
| Ambulant  |  ❌ |
| Stationär |  ✅ |


### Beschreibung
Aufgrund der eingelangten VAE (Versichertenanspruchserklärung) Anfrage erfolgt seitens der SV die positive VAE Rückmeldung. Die positive Entscheidung wird in der Rückmeldung durch "00" (stationär) oder "19" (ambulant) ausgedrückt. 

#### Ambulant
Zukünftig gibt es anstatt einer Quartalszusage pro [Moped Fall](TBD-LINK-BEGRIFFSDEFINITION) eine Anfrage und eine Rückmeldung.

#### Stationär
Die SV hat die Möglichkeit die VAE unbefristet oder befristet abzugeben. Gibt es eine Befristung, so wird ein Enddatum angegeben. Falls der stationäre Aufenthalt länger dauert als das angegebene Enddatum so muss das KH um eine Verlängerung ansuchen. In der Verlängerung wird das Enddatum als Verlängerungsdatum angegeben und zusätzlich auf die initiale Anfrage verwiesen. Die positive VAE für den ursprünglichen Zeitraum bleibt weiterhin gültig (außer sie wird aus anderen Gründen nachträglich storniert -> siehe [Anwendungsfall 32:  VAE doch negativ](AF28bis32.html#anwendungsfall-32-vae-doch-negativ-nach-vorheriger-positiver-vae)). Die VAE kann nach Ablauf der Frist der letzten positiven VAE immer wieder verlängert werden solange sich der Patient immer noch in Behandlung befindet. Gibt es kein Fristende so kann die VAE auch nicht verlängert werden.

### Beispiel

#### Beispiel 1: ambulant

#### Beispiel 2: stationär ohne Fristende

#### Beispiel 3: stationär mit Fristende und Verlängerung


### Technische Hinweise
Die initiale VAE und die VAE zur Verlängerung entsprechen unterschiedlichen Profilen mit unterschiedlichen Subtypen. In der Verlängerung muss verpflichtend die initiale VAE verlinkt werden.


### Ablauf 

<div>{% include AF28.svg %}</div>

### Relevante Profile
- [Coverage](StructureDefinition-MopedCoverage.html)
- [VAERequestInitial](StructureDefinition-MopedVAERequestInitial.html)
- [VAERequestVerlaengerung](StructureDefinition-MopedVAERequestVerlaengerung.html)
- [VAEResponse](StructureDefinition-MopedVAEResponse.html)
- [$update Bundle](StructureDefinition-MopedUpdateBundleKH.html)
- [$anfragen Bundle](StructureDefinition-MopedAnfragenBundleKH.html)
- [$antworten Bundle](StructureDefinition-MopedAntwortenBundleSV.html)

### Relevante Invarianten
- Es kann zu keinem Zeitpunkt zwei aktive initiale VAEs an den selben Träger geben.

### Mögliche Notifications

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

## Anwendungsfall 29: Negative VAE

### Betroffene Akteure

| Akteur            |  |
|-------------------|--------------:|
| KH (Krankenhaus)  |      ✅  |
| LGF (Landesgesundheitsfonds) | ❌  |
| SV (Sozialversicherung)      |  ✅ |
| Bund            |  ❌  |

### Betroffene Behandlungsarten

| Behandlungsart|  |
|-----------|----:|
| Ambulant  |  ✅ |
| Stationär |  ✅ |


### Beschreibung
Aufgrund der eingelangten Aufnahme-/Ereignisanzeige erfolgt seitens SV eine negative Versichertenanspruchserklärung. Bei einer negativen Versichertenanspruchserklärung wird der jeweilige Ablehnungsgrund (Code) angeführt.
Das KH prüft regelmäßig, ob es Ablehnungen der VAE seitens der SV gibt. Diese Fälle müssen bearbeitet werden. Im schlimmsten Fall muss der Patient die Rechnung als Selbstzahler selbst bezahlen. 
Ablehnungsgründe gibt es jedoch einige, die durchaus durch die Verwaltung im KH behoben werden können, so dass eine positive VAE durch die SV nach erneuter Anfrage in Folge möglich ist.

### Beispiel
- Patient wurde anstelle von selbstversichert als mitversichert gemeldet und umgekehrt (nach Richtigstellung dann positive VAE möglich) 
- Versicherung nicht festgestellt, weil nicht versichert 
- Versicherung falsch, da andere SV—Träger zuständig ist (positive VAE nach Anfrage bei anderem Träger möglich)  

### Technische Hinweise
- VAERequest und Response werden in FHIR durch Profile der Claim Ressource abgebildet.
- Kommentare zum jeweiligen VAE Ablehnungsgrund können in ClaimResponse.processNote.text festgehalten werden.

### Ablauf 

<div>{% include AF29.svg %}</div>

### Relevante Profile
- [Coverage](StructureDefinition-MopedCoverage.html) oder [Selbstzahler Coverage](StructureDefinition-MopedCoverageSelbstzahler.html)
- [VAERequest](StructureDefinition-MopedVAERequest.html)
- [VAEResponse](StructureDefinition-MopedVAEResponse.html)
- [$update Bundle](StructureDefinition-MopedUpdateBundleKH.html)
- [$anfragen Bundle](StructureDefinition-MopedAnfragenBundleKH.html)
- [$antworten Bundle](StructureDefinition-MopedAntwortenBundleSV.html)
### Relevante Invarianten

### Mögliche Notifications

#### SubscriptionTopic: neue VAE wurde angefragt
Die SV möchte benachrichtigt werden, wenn ein neuer VAERequest für sie bereitgestellt wurde. Das zugehörige SubscriptionTopic wurde in [diesem Beispiel](SubscriptionTopic-neueVAE.html) definiert.

#### SubscriptionTopic: VAE wurde abgelehnt
Das KH möchte benachrichtigt werden, wenn ein VAERequest abgelehnt wurde. Das zugehörige SubscriptionTopic wurde in [diesem Beispiel](SubscriptionTopic-VAEabgelehnt.json.html) definiert.

#### Tabellarische Übersicht

<table class="notification-table">
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
    <td>neue VAE wurde angefragt</td>
    <td>Die SV möchte benachrichtigt werden, wenn ein neuer VAERequest für sie bereitgestellt wurde.</td>
    <td>VAERequest</td>
    <td>create</td>
    <td>SV</td>
    <td>KH</td>
    <td>/</td>
    <td>/</td>
    <td>/</td>
  </tr>
   <tr>
    <td>VAE wurde abgelehnt</td>
    <td>Das KH möchte benachrichtigt werden, wenn ein VAERequest abgelehnt wurde.</td>
    <td>VAEResponse</td>
    <td>create</td>
    <td>KH</td>
    <td>SV</td>
    <td>Negative VAE</td>
    <td>VAEResponse.decision</td>
    <td>!= #00 AND != #19</td>
  </tr>
</table>

## Anwendungsfall 30: VAE mit Status in Bearbeitung
In Arbeit :)

### Betroffene Akteure

| Akteur            |  |
|-------------------|--------------:|
| KH (Krankenhaus)  |      ✅   |
| LGF (Landesgesundheitsfonds) |  ❌ |
| SV (Sozialversicherung)      |  ✅ |
| Bund            |  ❌  |

### Betroffene Behandlungsarten

| Behandlungsart|  |
|-----------|----:|
| Ambulant  |  ✅ |
| Stationär |  ✅ |


### Beschreibung

### Beispiel

### Technische Hinweise


### Ablauf 
<pre class="mermaid">
    ---
    config:
      theme: 'base'
      themeVariables:
        primaryColor: '#dbdbdb'         
        actorBorder: '#666'
        noteBkgColor: '#f4f4f4'
        noteBorderColor: '#555'
    ---
    sequenceDiagram
    autonumber
    box rgb(245, 229, 153)
    actor KH as KH (Herz Jesu Krankenhaus)
    end
    box rgb(197, 247, 186)
    participant MP as Moped
    end
    box rgb(186, 196, 247)
    actor SV as SV (ÖGK Wien)
    end
    box rgb(247, 208, 186)
    actor LGF as LGF (Landesgesundheitsfonds Wien)
    end
    box rgb(252, 179, 179) 
    actor Bund as Bund 
    end

</pre>

### Relevante Profile

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


## Anwendungsfall 31: VAE doch positiv (nach vorheriger negativer VAE)

### Betroffene Akteure

| Akteur            |  |
|-------------------|--------------:|
| KH (Krankenhaus)  |      ✅    |
| LGF (Landesgesundheitsfonds) |  ❌  |
| SV (Sozialversicherung)      |  ✅  |
| Bund            |  ❌  |

### Betroffene Behandlungsarten

| Behandlungsart|  |
|-----------|----:|
| Ambulant  |  ✅ |
| Stationär |  ✅ |


### Beschreibung
Aufgrund einer Verwaltungsentscheidung wird eine bereits übermittelte, negative Versichertenanspruchserklärung widerrufen und es erfolgt eine positive Versichertenanspruchserklärung an die jeweilige Krankenanstalt. Die Entscheidung kann seitens SV jederzeit getroffen werden.

### Beispiel
SV gibt zuerst eine VAEResponse mit *03 - nicht leistungszuständig* ab. Nach einer Verwaltungsentscheidung wird eine VAEResponse mit *00 - genehmigt* abgegeben.

### Technische Hinweise
Moped cancelt automatisch die alten VAEResponse beim Einbringen der neuen VAEREsponse.

### Ablauf 

<div>{% include AF31.svg %}</div>

### Relevante Profile
- [VAERequest](StructureDefinition-MopedVAERequest.html)
- [VAEResponse](StructureDefinition-MopedVAEResponse.html)
- [$update Bundle](StructureDefinition-MopedUpdateBundleKH.html)
- [$anfragen Bundle](StructureDefinition-MopedAnfragenBundleKH.html)

### Relevante Invarianten

### Mögliche Notifications

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


## Anwendungsfall 32: VAE doch negativ (nach vorheriger positiver VAE)

### Betroffene Akteure

| Akteur            |  |
|-------------------|--------------:|
| KH (Krankenhaus)  |      ✅ |
| LGF (Landesgesundheitsfonds) |  ✅ |
| SV (Sozialversicherung)      |  ✅ |
| Bund            |  ✅   |

### Betroffene Behandlungsarten

| Behandlungsart|  |
|-----------|----:|
| Ambulant  |  ✅ |
| Stationär |  ✅ |


### Beschreibung
Aufgrund einer Verwaltungsentscheidung wird eine bereits übermittelte, positive Versichertenanspruchserklärung widerrufen und es erfolgt eine negative Versichertenanspruchserklärung an die jeweilige Krankenanstalt. In der VAE wird im Datenfeld “VAEST” der jeweilige Ablehnungsgrund angeführt. Die Entscheidung kann seitens SV jederzeit getroffen werden.

### Beispiel

### Technische Hinweise
- Der Ablauf gleicht nach der Abgabe der negativen VAE dem aus [Anwendungsfall 29](#anwendungsfall-29-negative-vae).
- Die negative VAEResponse cancelt automatisch die vorherige positive.

### Ablauf 
<div>{% include AF32.svg %}</div>

### Relevante Profile
- [VAERequest](StructureDefinition-MopedVAERequest.html)
- [VAEResponse](StructureDefinition-MopedVAEResponse.html)
- [$update Bundle](StructureDefinition-MopedUpdateBundleKH.html)
- [$anfragen Bundle](StructureDefinition-MopedAnfragenBundleKH.html)
- [$antworten Bundle](StructureDefinition-MopedAntwortenBundleSV.html)
### Relevante Invarianten

### Mögliche Notifications

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