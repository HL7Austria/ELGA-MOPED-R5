<script type="module">
  import mermaid from 'https://cdn.jsdelivr.net/npm/mermaid@11/dist/mermaid.esm.min.mjs';
</script>

### Überblick der Statusänderungen der unterschiedlichen Ressourcen während des Prozesses

#### Status-Änderungen der Moped Composition
<pre class="mermaid">
    stateDiagram-v2
    [*] --> partial : $aufnehmen (initiale Composition)
    partial --> partial : $update, $anfragen, $antworten, $abrechnen, $entscheiden, etc.
    partial --> final : Freigabe durch LGF
    
    partial --> entered_in_error : $stornieren
</pre>

#### Status-Änderungen des Moped Encounters
<pre class="mermaid">
    stateDiagram-v2
    [*] --> in_progress : $aufnehmen
    in_progress --> on_hold : Beurlaubung / temporäre Unterbrechung
    on_hold --> in_progress : Rückkehr aus Beurlaubung

    in_progress --> discharged : $entlassen 
    discharged --> completed : Hauptdiagnose dokumentiert

    in_progress --> entered_in_error : $stornieren
    on_hold --> entered_in_error : $stornieren
    discharged --> entered_in_error : $stornieren
</pre>

#### Status-Änderungen der Financial Ressourcen (Claim, ClaimResponse)
Diese Status-Änderungen folgen den Definitionen des <a href="https://build.fhir.org/financial-module.html#resource-status"> Resource Status Life-cycle</a> wie im FHIR Financial Modul dokumentiert. 

<pre class="mermaid">
    stateDiagram-v2
    [*] --> active : Ressource wird eingebracht

    active --> cancelled : Stornierung durch KH
    active --> entered_in_error : Fehler erkannt
    active --> [*] : Verarbeitet
</pre>

### Anwendungsszenarien
In diesem Abschnitt werden typische und exemplarische Abläufe im Rahmen des MOPED-Prozesses beschrieben. Die Anwendungsszenarien dienen der Veranschaulichung konkreter Anwendungsfälle auf Basis der in diesem Leitfaden definierten Rollen, Profilen und Operationen. Die Szenarien zeigen sowohl durchgängige End-to-End-Prozesse als auch fokussierte Teilprozesse. Jedes Beispiel illustriert, wie die in MOPED definierten Schnittstellen in realen Fällen eingesetzt werden können. Dabei wird besonderer Wert auf die fachliche Nachvollziehbarkeit sowie die technische Umsetzung (Ressourcen, Statusübergänge, Operations) gelegt.

Ziel dieser Szenarien ist es ein gemeinsames Verständnis über typische Abläufe und deren Abbildung im FHIR-Moped-Kontext zu vermitteln.

#### Szenario: Susi Sonnenschein
Die Patientin Susi Sonnenschein wird stationär aufgenommen. Im Verlauf ihres Aufenthalts wird sie verlegt, der zuständige Versicherer wird festgelegt und angefragt und Diagnosen sowie Leistungen werden dokumentiert. Nach Entlassung erfolgt die Abrechnung und Freigabe der Fallakte zur Einsicht durch den Bund sowie die Meldung der Kosteninformation an die SV.

<pre class="mermaid">
    sequenceDiagram
    participant KH as KH (Herz Jesu Krankenhaus)
    participant SV as SV (ÖGK Wien)
    participant LGF as LGF (Landesgesundheitsfonds Wien)
    participant Bund as Bund

    Note over KH: $aufnehmen
    KH->>KH: Susi Sonnenschein wird aufgenommen

    Note over KH: $update
    KH->>KH: ÖGK Wien als zuständige Versicherung gesetzt

    Note over KH,SV: $anfragen
    KH->>SV: Anfrage auf Versicherungsanspruchserklärung

    Note over KH: $update
    KH->>KH: Verlegung auf Abteilung Innere Medizin

    Note over KH: $update
    KH->>KH: Diagnose „Herzinsuffizienz“ und Leistung „EKG“ erfasst

    Note over SV: $antworten (Status 00)
    SV-->>KH: Fallübernahme bestätigt (Status 00)

    Note over KH: $entlassen
    KH->>KH: Susi Sonnenschein wird entlassen

    loop $abrechnen / $entscheiden (vorläufig)
        Note over KH,LGF: $abrechnen
        KH->>LGF: Abrechnung aller Leistungen eingereicht

        Note over LGF: $entscheiden
        LGF-->>KH: Alle Posten genehmigt (keine Änderungen)
    end

    %% Finale Abrechnung und Entscheidung
    Note over KH,LGF: final $abrechnen
    KH->>LGF: Finale Abrechnung

    Note over LGF: final $entscheiden
    LGF-->>KH: Endgültige Entscheidung zur Abrechnung

    Note over Bund: GET Composition?status=final
    Bund->>KH: Zugriff auf finale Composition

    Note over LGF,SV: $melden
    LGF->>SV: Kosteninformation wird übermittelt

    SV-->>LGF: Empfangsbestätigung – Fall für Moped abgeschlossen
</pre>

#### Anwendungsfall 14: Selbstzahler
Vorgehensweise für Patienten, die nicht über die Sozialversicherungsschiene gemeldet werden, da sie Selbstzahler sind, jedoch im LKF aufscheinen.  
 
Beispiele: Nicht-EU Ausländer (z.B. US -Bürger), Patienten die über die Sozialhilfe oder Justizanstalten abgerechnet werden  




<pre class="mermaid">
sequenceDiagram
    participant KH as KH (Herz Jesu Krankenhaus)
    participant LGF as LGF (Landesgesundheitsfonds Wien)
    participant Bund as Bund

    Note over KH: $aufnehmen
    KH->>KH: Patient wird aufgenommen (mit einer Selbstzahler-Coverage)

    Note over KH: $update
    KH->>KH: Verlegung auf Abteilung Innere Medizin

    Note over KH: $update
    KH->>KH: Diagnose „Herzinsuffizienz“ und Leistung „EKG“ erfasst

    Note over KH: $entlassen
    KH->>KH: Patient wird entlassen

    loop $abrechnen / $entscheiden (vorläufig)
        Note over KH,LGF: $abrechnen
        KH->>LGF: Abrechnung aller Leistungen eingereicht

        Note over LGF: $entscheiden
        LGF-->>KH: Alle Posten genehmigt (keine Änderungen)
    end

    %% Finale Abrechnung und Entscheidung
    Note over KH,LGF: final $abrechnen
    KH->>LGF: Finale Abrechnung

    Note over LGF: final $entscheiden
    LGF-->>KH: Endgültige Entscheidung zur Abrechnung

    Note over Bund: GET Composition?status=final
    Bund->>KH: Zugriff auf finale Composition

</pre>

#### Anwendungsfall 19: Interne Verlegung (Station -> Station)

Patient wird innerhalb einer Krankenanstalt verlegt: 

- Patient wird von Bett/Zimmer zu Bett/Zimmer verlegt, gleiche Station --> keine MOPED Relevanz 
- Patient wird von Station zu Station verlegt, ein Primariat (Subcode gleich) ---> keine MOPED Relevanz 
- Bei Verlegung mit Änderung des Funktions(sub)codes muss eine Änderung in MOPED erfolgen 
 
Conclusio: Sobald sich der Funktions(sub)code, egal an welcher Stelle, ändert, kommt es zu einer Änderung in MOPED. Bei jeder Verlegung muss alles übermittelt werden, was in einer X02 enthalten wäre (Interne Verlegung in einer Krankenanstalt ist auch ein Wechsel).


<pre class="mermaid">
sequenceDiagram
    participant KH as KH (Herz-Jesu KH)
    participant MOPED as MOPED

    %% Aufnahme
    Note over KH: $aufnehmen
    KH->>MOPED: POST Patient, Encounter, ... TransferEncounter mit Referenz auf Aufnahmeabteilung

    %% Interne Verlegung
    Note over KH: $update – interne Verlegung
    KH->>MOPED: PUT alter TransferEncounter (finished, Enddatum) + POST neuer TransferEncounter (neue Abteilung)
</pre>

#### Anwendungsfall 20: Beurlaubung
Eine PatientIn unterbricht ihren stationären Aufenthalt und kommt an einem späteren Tag wieder. Bezeichnung: Urlaub bzw. Abwesenheit 

<pre class="mermaid">
sequenceDiagram
    participant KH as KH (Herz Jesu Krankenhaus)

    Note over KH: $aufnehmen
    KH->>KH: Patient:in wird am 2025-07-20 auf Abteilung „Innere Medizin“ aufgenommen (Encounter status: in-progress)

    loop Beurlaubungs-Zyklus
        Note over KH: $update
        KH->>KH: Patient:in am 2025-07-22 auf Urlaub → Encounter status: on-hold, Verlegung Funktionscode 100000

        Note over KH: $update
        KH->>KH: Patient:in kehrt am 2025-07-24 zurück → Encounter status: in-progress (Abteilung: „Innere Medizin“)
    end
    </pre>


#### Anwendungsfall 24 und 25: Entlassung ohne Hauptdiagnose
Patient wird aus stationärem Aufenthalt entlassen, jedoch wird die ICD-10-Hauptdiagnose noch nicht dokumentiert, da die medizinische Dokumentation noch nicht abgeschlossen ist.  
Die Dokumentation der codierten Hauptdiagnose erfolgt Tage/Wochen nach der Entlassung des Patienten.   
 
Beispiele: 
Pathologischer Befund bzw. Laborergebnisse liegen erst einige Zeit nach der Entlassung des Patienten vor 
(Gewebeprobe wird analysiert und entscheidet über die endgültige Diagnose) 

Abgerechnet kann erst werden, wenn die Hauptdiagnose vorhanden ist, und somit der Encounter.status auf "completed" gesetzt wurde.

<pre class="mermaid">
sequenceDiagram
    participant KH as KH (Herz Jesu Krankenhaus)

    Note over KH: $aufnehmen
    KH->>KH: Patient:in wird aufgenommen (Encounter status: in-progress)

    Note over KH: $update
    KH->>KH: Encounter-Status auf "discharged" gesetzt (noch ohne Hauptdiagnose aka "Entlassungs-Aviso")

    Note over KH: $update
    KH->>KH: Hauptdiagnose „Herzinsuffizienz“ ergänzt

    Note over KH: $entlassen
    KH->>KH: Encounter-Status final auf "completed" gesetzt
</pre>

#### Anwendungsfall 27: Leistungsabrechnugn über SV
Zusammenfassung: Es werden Kosten für ambulante Besuche /Aufenthalte bzw. einzelne Leistungen durch unterschiedliche Kostenträger übernommen. Beispiele: Vorsorgeuntersuchung Coloskopie, Vorsorgeuntersuchung Brust-Krebs-Früherkennung bzw. Selbstzahlerleistungen (z.B. Tubensterilisation ohne medizinische Indikation im Rahmen einer Geburt) im Rahmen eines fonds-finanzierten Aufenthalts 

Umsetzung: Die Abrechnung mit der SV ist out of scope von Moped. Ansonsten ist der Anwendungsfall gleich wie Susi Sonnenschein. Es wird für jede Leistung / Diagnose festgehalten, ob diese für den LGF abrechnungsrelevant ist oder nicht.

<h4>Szenario: Versicherungswechsel</h4>
TBD

<h4>Szenario: VAE Ablehnung</h4>
TBD

<h4>Szenario: Korrekturaufforderung</h4>
TBD

<h4>Szenario: Ausländerverrechnung</h4>
TBD

<h4>Szenario: Regress</h4>
TBD
