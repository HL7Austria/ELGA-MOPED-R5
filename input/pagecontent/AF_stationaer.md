
### Standardablauf stationärer Fall

#### Betroffene Akteure

| Akteur            | | 
|-------------------|--------------:|
| KH (Krankenhaus)  |      ✅   |
| LGF (Landesgesundheitsfonds) |  ✅  |
| SV (Sozialversicherung)      |  ✅  |
| Bund         |  ✅  |

#### Betroffene Behandlungsarten

| Behandlungsart|  |
|-----------|----:|
| Ambulant  |  ✅ |
| Stationär |  ✅ |


#### Beschreibung: Susi Sonnenschein
Die Patientin Susi Sonnenschein wird stationär aufgenommen. Im Verlauf ihres Aufenthalts wird sie verlegt, der zuständige Versicherer wird festgelegt und angefragt und Diagnosen sowie Leistungen werden dokumentiert. Nach Entlassung erfolgt die Abrechnung und Freigabe der Fallakte zur Einsicht durch den Bund sowie die Meldung der Kosteninformation an die SV.

#### Beispiel

#### Technische Hinweise

#### Vorbedingung


#### Ablauf 
<div>{% include AFStationaer.svg %}</div>


#### Relevante Profile
- [$aufnahme Bundle](StructureDefinition-MopedUpdateBundleKH.html)
- [$update Bundle](StructureDefinition-MopedUpdateBundleKH.html)
- TBD

#### Relevante Invarianten

#### Mögliche Notifications

##### SubscriptionTopic: neue VAE wurde angefragt
Die SV möchte benachrichtigt werden, wenn ein neuer VAERequest für sie bereitgestellt wurde. Das zugehörige SubscriptionTopic wurde in [diesem Beispiel](SubscriptionTopic-neueVAE.html) definiert.

##### SubscriptionTopic: VAE wurde abgelehnt
Das KH möchte benachrichtigt werden, wenn ein VAERequest abgelehnt wurde. Das zugehörige SubscriptionTopic wurde in [diesem Beispiel](SubscriptionTopic-VAEabgelehnt.json.html) definiert.

##### Tabellarische Übersicht

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
    <td>KH</td>
    <td>SV</td>
    <td>/</td>
    <td>/</td>
    <td>/</td>
  </tr>
   <tr>
    <td>VAE wurde abgelehnt</td>
    <td>Das KH möchte benachrichtigt werden, wenn ein VAERequest abgelehnt wurde.</td>
    <td>VAEResponse</td>
    <td>create</td>
    <td>SV</td>
    <td>KH</td>
    <td>Negative VAE</td>
    <td>VAEResponse.decision</td>
    <td>!= #00 AND != #19</td>
  </tr>
</table>
