{% include styleheader.md %}


## Anwendungsfall 28: Positive VAE inkl. Verlängerung
In Arbeit :)
### Betroffene Akteure

| Akteur            |  |
|-------------------|--------------:|
| KH (Krankenhaus)  |      ✅   |
| LGF (Landesgesundheitsfonds) |  ✅  |
| SV (Sozialversicherung)      |  ✅  |
| Bund            |  ✅  |

### Betroffene Behandlungsarten

| Behandlungsart|  |
|-----------|----:|
| Ambulant  |  ❌ |
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
    KH->>MP: Anfrage VAE <br/>POST VAERequest 1
    Note over SV: Negative VAE
    SV->>MP: VAEResponse 1<br/>(Status 03 'nicht leistungszuständig')
    Note over MP: durch negative Response wird der <br/>VAERequest 1 automatisch gecancelled
    alt Erneute Anfrage bei gleichem<br/> Träger mit anderen Daten
      Note over KH: KH stellt modifizierte Anfrage an ÖGK
      KH->>MP: Anfrage VAE <br/>POST VAERequest 2
    else Patient hat noch einen Anspruch bei <br/>einem anderen SV Träger (z.B. SVS)
      Note over KH: KH setzt die SVS als zuständige Versicherung
      KH->>MP: $update mit SVS referenziert in der neuen Coverage
      Note over KH: KH stellt neue Anfrage an SVS
      KH->>MP: Anfrage VAE <br/>POST VAERequest 2
    else  Patient wird zum Selbstzahler
      Note over KH: KH meldet Patienten als Selbstzahler
      KH->>MP: $update mit Selbstzahler Coverage 
    end
</pre>

### Relevante Profile
- [Coverage](StructureDefinition-MopedCoverage.html) oder [Selbstzahler Coverage](StructureDefinition-MopedCoverageSelbstzahler.html)
- [VAERequest](StructureDefinition-MopedVAERequest.html)
- [VAEResponse](StructureDefinition-MopedVAEResponse.html)
- [$update Bundle](StructureDefinition-MopedUpdateBundleKH.html)
- [$anfragen Bundle](StructureDefinition-MopedAnfragenBundleKH.html)

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
In Arbeit :)

### Betroffene Akteure

| Akteur            |  |
|-------------------|--------------:|
| KH (Krankenhaus)  |      ✅    |
| LGF (Landesgesundheitsfonds) |  ✅  |
| SV (Sozialversicherung)      |  ✅  |
| Bund            |  ✅  |

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
    participant MP as MP
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


## Anwendungsfall 32: VAE doch negativ (nach vorheriger positiver VAE)
In Arbeit :)

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