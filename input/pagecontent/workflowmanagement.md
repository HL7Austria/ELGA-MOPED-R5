<script type="module">
  import mermaid from 'https://cdn.jsdelivr.net/npm/mermaid@11/dist/mermaid.esm.min.mjs';
</script>
<div xmlns="http://www.w3.org/1999/xhtml" class="container"> 
   
   <h3> Account-/Prozessstatus </h3>
    <div>
        <a style="border:none;" href="Account_Status.png" target="_blank">
            <img src="Account_Status.png" width ="50%" />
        </a>
    </div>
    <table>
        <tr>
            <td>Prozess Status</td>
            <td>auslösender Stakeholder</td>
            <td>Bedingung</td>
            <td>Konsequenz</td>
            <td>Benachrichtigung über Status</td>
            <td></td>
        </tr>
        <tr>
            <td>Aufnahme in Arbeit</td>
            <td>KH</td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td>Aufnahme freigeben</td>
            <td>KH</td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td>SV verarbeitet</td>
            <td>SV</td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td>Entlassung Aviso</td>
            <td>KH</td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td>Entlassung vollständig</td>
            <td>KH</td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td>Vorläufige Meldung</td>
            <td>KH</td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td>LGF Korrekturaufforderung</td>
            <td>LGF</td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td>Vorläufige Freigabe</td>
            <td>LGF</td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td>Endgültige Meldung</td>
            <td>KH</td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td>Endgültige Freigabe</td>
            <td>LGF</td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
    </table>
    <h3>Überblick der Statusänderungen der unterschiedlichen Ressourcen während des Prozesses</h3>
    <h4>Status-Änderungen der Moped Composition</h4>
    <pre class="mermaid">
    stateDiagram-v2
    [*] --> partial : $aufnehmen (initiale Composition)
    partial --> partial : $update, $anfragen, $antworten, $abrechnen, $entscheiden, etc.
    partial --> final : Freigabe durch LGF
    
    partial --> entered_in_error : $stornieren
</pre>
<h4>Status-Änderungen des Moped Encounters</h4>
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
    <h4>Status-Änderungen der Financial Ressourcen (Claim, ClaimResponse)</h4>
    Diese Status-Änderungen folgen den Definitionen des <a href="https://build.fhir.org/financial-module.html#resource-status"> Resource Status Life-cycle</a> wie im FHIR Financial Modul dokumentiert. 

<pre class="mermaid">
    stateDiagram-v2
    [*] --> draft : Ressource wird neu erstellt
    draft --> active : Ressource ist bereit für anderen Akteur
    draft --> cancelled : Erstellung abgebrochen
    draft --> entered_in_error : Fehler erkannt

    active --> cancelled : Stornierung durch KH
    active --> entered_in_error : Fehler erkannt
    active --> [*] : Verarbeitet
</pre>
    <h3>Anwendungsszenarien</h3>
    In diesem Abschnitt werden typische und exemplarische Abläufe im Rahmen des MOPED-Prozesses beschrieben. Die Anwendungsszenarien dienen der Veranschaulichung konkreter Nutzungsfälle auf Basis der in diesem Leitfaden definierten Rollen, Profilen und Operationen. Die Szenarien zeigen sowohl durchgängige End-to-End-Prozesse als auch fokussierte Teilprozesse. Jedes Beispiel illustriert, wie die in MOPED definierten Schnittstellen in realen Fällen eingesetzt werden können. Dabei wird besonderer Wert auf die fachliche Nachvollziehbarkeit sowie die technische Umsetzung (Ressourcen, Statusübergänge, Operations) gelegt.
    
    Ziel dieser Szenarien ist es ein gemeinsames Verständnis über typische Abläufe und deren Abbildung im FHIR-Moped-Kontext zu vermitteln.
<h4>Szenario: Susi Sonnenschein</h4>
Die Patientin Susi Sonnenschein wird stationär aufgenommen. Im Verlauf ihres Aufenthalts wird sie verlegt, der zuständige Verischerer wird festgelegt und angefragt und Diagnosen sowie Leistungen werden dokumentiert. Nach Entlassung erfolgt die Abrechnung und Freigabe der Fallakte zur Einsicht durch den Bund sowie die Meldung der Kosteninformation an die SV.
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
    KH->>LGF: Finale Abrechnung nach Entlassung

    Note over LGF: final $entscheiden
    LGF-->>KH: Endgültige Entscheidung zur Abrechnung

    Note over Bund: GET Composition?status=final
    Bund->>KH: Zugriff auf finale Composition

    Note over LGF,SV: $melden
    LGF->>SV: Kosteninformation wird übermittelt

    SV-->>LGF: Empfangsbestätigung – Fall für Moped abgeschlossen
</pre>

<h4>Anwendungsfall 19: Interne Verlegung (Station -> Station)</h4>

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

<h4>Anwendungsfall 20: Beurlaubung</h4>
Eine PatientIn unterbricht ihren stationären Aufenthalt und kommt an einem späteren Tag wieder. Bezeichnung: Urlaub bzw. Abwesenheit 

<pre class="mermaid">
sequenceDiagram
    participant KH as KH (Herz Jesu Krankenhaus)

    Note over KH: $aufnehmen
    KH->>KH: Patient:in wird am 2025-07-20 auf Abteilung „Innere Medizin“ aufgenommen (Encounter status: active)

    loop Beurlaubungs-Zyklus
        Note over KH: $update
        KH->>KH: Patient:in am 2025-07-22 auf Urlaub → Encounter status: on-hold, Funktionscode 100000

        Note over KH: $update
        KH->>KH: Patient:in kehrt am 2025-07-24 zurück → Encounter status: active (Abteilung: „Innere Medizin“)
    end
    </pre>


<h4>Anwendungsfall 24: Interne Verlegung (Station -> Station)</h4>
Patient wird aus stationärem Aufenthalt entlassen, jedoch wird die ICD-10-Hauptdiagnose noch nicht dokumentiert, da die medizinische Dokumentation noch nicht abgeschlossen ist.  
Die Dokumentation der codierten Hauptdiagnose erfolgt Tage/Wochen nach der Entlassung des Patienten.   
 
Beispiele: 
Pathologischer Befund bzw. Laborergebnisse liegen erst einige Zeit nach der Entlassung des Patienten vor 
(Gewebeprobe wird analysiert und entscheidet über die endgültige Diagnose)  

<pre class="mermaid">
sequenceDiagram
    participant KH as KH (Herz Jesu Krankenhaus)

    Note over KH: $aufnehmen
    KH->>KH: Patient:in wird aufgenommen (Encounter status: active)

    Note over KH: $update
    KH->>KH: Encounter-Status auf "discharged" gesetzt (noch ohne Hauptdiagnose aka "Entlassungs-Aviso")

    Note over KH: $update
    KH->>KH: Hauptdiagnose „Herzinsuffizienz“ ergänzt

    Note over KH: $entlassen
    KH->>KH: Encounter-Status final auf "completed" gesetzt
</pre>


<h4>Szenario: Versicherungswechsel</h4>
TBD

<h4>Szenario: Selbstzahler</h4>
TBD

<h4>Szenario: VAE Ablehnung</h4>
TBD

<h4>Szenario: Korrekturaufforderung</h4>
TBD

<h4>Szenario: Ausländerverrechnung</h4>
TBD

<h4>Szenario: Regress</h4>
TBD
</div>