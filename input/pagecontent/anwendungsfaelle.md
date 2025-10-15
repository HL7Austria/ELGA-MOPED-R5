{% include styleheader.md %}
## Anwendungsfälle
In diesem Abschnitt werden typische und exemplarische Abläufe im Rahmen des MOPED-Prozesses beschrieben. Die Anwendungsszenarien dienen der Veranschaulichung konkreter Anwendungsfälle auf Basis der in diesem Leitfaden definierten Rollen, Profile und Operationen. Die Szenarien zeigen sowohl durchgängige End-to-End-Prozesse als auch fokussierte Teilprozesse. Jedes Beispiel illustriert, wie die in MOPED definierten Schnittstellen in realen Fällen eingesetzt werden können. Dabei wird besonderer Wert auf die fachliche Nachvollziehbarkeit sowie die technische Umsetzung (Ressourcen, Statusübergänge, Operations) gelegt.

Ziel dieser Szenarien ist es ein gemeinsames Verständnis über typische Abläufe und deren Abbildung im FHIR-Moped-Kontext zu vermitteln.

### Liste der Anwendungsfälle

Die folgenden Anwendungsfälle werden beschrieben:

- [Überblick & Sunshine Case ✅](anwendungsfaelle.html)
- [ANWF 1 - Planaufnahme 🔄](AF1.html)
- [ANWF 2 - Stationäre Aufnahme ✅](AF2.html) 
- [ANWF 3 - Ambulante Aufnahme ✅](AF3.html)
- [ANWF 4,5 - Fallartwechsel 🔄](AF4u5.html)
- [ANWF 6 - Mehrmalige Aufnahme an einem Tag 🔄](AF6.html)
- [ANWF 7 - Behandlungsabbruch 🔄](AF7.html)
- [ANWF 8,9,47 - Stammdatenabgleich 🔄](AF8u9u47.html)
- [ANWF 10 - Klassenwechsel 🔄](AF10.html)
- [ANWF 11 - Versicherungswechsel 🔄](AF11.html)
- [ANWF 12,13,15,35-37 - Ausländerverrechnung und Regress 🔄](AF12.html)
- [ANWF 14 - Selbstzahler ✅](AF14.html)
- [ANWF 17 - Zwischenbetriebliche Leistungserbringung ✅](AF17.html)
- [ANWF 18 - Transfer 🔄](AF18.html)
- [ANWF 19 - Interne Verlegung ✅](AF19.html)
- [ANWF 20 - Urlaub ✅](AF20.html)
- [ANWF 21,22 - Neugeborene 🔄](AF21u22.html)
- [ANWF 23-25 - Entlassung & Hauptdiagnose ✅](AF23bis25.html)
- [ANWF 26 - Überlieger 🔄](AF26.html)
- [ANWF 27 - Leistungen ohne Abrechnungsrelevanz ✅](AF27.html)
- [ANWF 28-32 - SV Kostenübernahmevariationen 🔄](AF28bis32.html)
- [ANWF 33-34 - Kostenmeldungen? 🔄](AF33u34.html)
- [ANWF 38-44 - LKF Daten 🔄](AF38bis44.html)
- [ANWF 45 - Jahresmeldung 🔄](AF45.html)
- [ANWF 46 - VDAS Rückmeldung (Patient verstorben) 🔄](AF46.html)
- [ANWF 48 - Mehrere aktive Fälle in MOPED 🔄](AF48.html)
- [ANWF 49 - Aufrollung nach Speicherfrist 🔄](AF49.html)
- [ANWF 50 - Urgenz 🔄](AF50.html)
- [ANWF 51-52 - Asylierung 🔄](AF51u52.html)
- [ANWF 53 - Intensivaufenthalt 🔄](AF53.html)
- [ANWF 54 - Stammdatenänderung 🔄](AF54.html)



## Anwendungsfall: Standardablauf im Sunshine Case

### Betroffene Akteure

| Akteur            | | 
|-------------------|--------------:|
| KH (Krankenhaus)  |      ✅   |
| LGF (Landesgesundheitsfonds) |  ✅  |
| SV (Sozialversicherung)      |  ✅  |
| Bund         |  ✅  |

### Betroffene Behandlungsarten

| Behandlungsart|  |
|-----------|----:|
| Ambulant  |  ✅ |
| Stationär |  ✅ |


### Beschreibung: Susi Sonnenschein
Die Patientin Susi Sonnenschein wird stationär aufgenommen. Im Verlauf ihres Aufenthalts wird sie verlegt, der zuständige Versicherer wird festgelegt und angefragt und Diagnosen sowie Leistungen werden dokumentiert. Nach Entlassung erfolgt die Abrechnung und Freigabe der Fallakte zur Einsicht durch den Bund sowie die Meldung der Kosteninformation an die SV.

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
    
    KH->> MP: $aufnehmen
    Note over KH: Susi Sonnenschein wird aufgenommen

    KH->>MP: $update
    Note over KH: ÖGK Wien als zuständige Versicherung gesetzt

    KH->>MP: $anfragen
    Note over KH: Anfrage auf Versicherungsanspruchserklärung 

    SV->>MP: $antworten (Status 00)
    Note over SV: Fallübernahme bestätigt (Status 00) 

    KH->>MP: $update
    Note over KH: Verlegung auf Abteilung Innere Medizin 

    KH->>MP: $update
    Note over KH: Diagnose „Herzinsuffizienz“ und Leistung „EKG“ erfasst 

    KH->>MP: $entlassen
    Note over KH: Susi Sonnenschein wird entlassen 
    loop $abrechnen / $entscheiden (vorläufig)
        KH->>MP:$abrechnen 
        Note over KH: Abrechnung aller Leistungen eingereicht
        LGF-->>MP: $entscheiden 
        Note over LGF: Alle Posten genehmigt (keine Änderungen)
    end

    %% Finale Abrechnung und Entscheidung
    KH->>MP: final $abrechnen 
    Note over KH: Finale Abrechnung nach Entlassung

    LGF->>MP: final $entscheiden
    Note over LGF: Endgültige Entscheidung zur Abrechnung 
    Note over LGF: Kosteninformation wird übermittelt 

    Bund->>MP: GET Composition?status=final
    Note over Bund: Zugriff auf finale Composition 

    SV->>MP: $antworten
    Note over SV: Rückmeldung zur Kosteninformation

    Note over MP: Fall für Moped abgeschlossen
    
</pre>


### Relevante Profile
- [$aufnahme Bundle](StructureDefinition-MopedUpdateBundleKH.html)
- [$update Bundle](StructureDefinition-MopedUpdateBundleKH.html)
- TBD

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


