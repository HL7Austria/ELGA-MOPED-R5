{% include styleheader.md %}

## Anwendungsfall 23: Entlassung mit Hauptdiagnose

### Betroffene Akteure

| Akteur            |  |
|-------------------|--------------:|
| KH (Krankenhaus)  |      ✅  |
| LGF (Landesgesundheitsfonds) |  ✅  |
| SV (Sozialversicherung)      |  ✅   |
| Bund            |  ✅  |

### Betroffene Behandlungsarten

| Behandlungsart|  |
|-----------|----:|
| Ambulant  |  ❌ |
| Stationär |  ✅ |



### Beschreibung:
Der Patient wird entlassen und es ist bereits die codierte ICD-10 Hauptdiagnose bekannt. In diesem Fall wird wie bei Susi Sonnenschein in [Anwendungsfall 1](AF1.html) der Patient entlassen und die Diagnose direkt bei $entlassen mit eingefügt. 

### Beispiel
- Der Patient war zur Entbindung im KH und die Hauptdiagnose ist somit bereits bei der Entlassung vorhanden.
 
### Technische Hinweise
Der Encounter.status wird sofort auf "completed" gesetzt (ohne Zwischenschritt mit discharged).


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
    box rgb(245, 245, 188)
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

    KH->>MP: $entlassen
    Note over KH: Patient wird entlassen und im gleichen Aufruf<br/> die Hauptdiagnose mitgeliefert
</pre>

### Relevante Profile
- [$entlassen Bundle](StructureDefinition-MopedEntlassenBundle.html)

### Relevante Invarianten
- $entlassen kann nur erfolgreich ausgeführt werden, wenn es eine Hauptdiagnose gibt

### Mögliche Notifications


## Anwendungsfall 24 und 25: Entlassung ohne Hauptdiagnose

### Betroffene Akteure

| Akteur            |  |
|-------------------|--------------:|
| KH (Krankenhaus)  |      ✅   |
| LGF (Landesgesundheitsfonds) |  ✅  |
| SV (Sozialversicherung)      |  ✅   |
| Bund            |  ✅   |

### Betroffene Behandlungsarten

| Behandlungsart|  |
|-----------|----:|
| Ambulant  |  ❌ |
| Stationär |  ✅ |


### Beschreibung
Patient wird aus stationärem Aufenthalt entlassen, jedoch wird die ICD-10-Hauptdiagnose noch nicht dokumentiert, da die medizinische Dokumentation noch nicht abgeschlossen ist.  
Die Dokumentation der codierten Hauptdiagnose erfolgt Tage/Wochen nach der Entlassung des Patienten.   

### Beispiel
Pathologischer Befund bzw. Laborergebnisse liegen erst einige Zeit nach der Entlassung des Patienten vor 
(Gewebeprobe wird analysiert und entscheidet über die endgültige Diagnose) 

### Technische Hinweise
Abgerechnet kann erst werden, wenn die Hauptdiagnose vorhanden ist, und somit der Encounter.status auf "completed" gesetzt wurde.

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
    box rgb(245, 245, 188)
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

    KH->>MP: $aufnehmen
    Note over KH: Patient:in wird aufgenommen<br/>(Encounter status: in-progress)

    KH->>MP: $update
    Note over KH: Encounter-Status auf "discharged" gesetzt<br/>(noch ohne Hauptdiagnose aka "Entlassungs-Aviso")

    KH->>MP: $update 
    Note over KH: Hauptdiagnose „Herzinsuffizienz“ ergänzt

    KH->>MP: $entlassen
    Note over KH: Encounter-Status final auf "completed" gesetzt
</pre>

### Relevante Profile
- Entlassung aviso: [$update Bundle](StructureDefinition-MopedUpdateBundleKH.html)
- Entlassung vollständig: [$entlassen Bundle](StructureDefinition-MopedEntlassenBundle.html)

### Relevante Invarianten

### Mögliche Notifications

