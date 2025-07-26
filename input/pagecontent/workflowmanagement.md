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

    Note over KH,LGF: $abrechnen
    KH->>LGF: Abrechnung aller Leistungen eingereicht

    Note over LGF: $entscheiden
    LGF-->>KH: Alle Posten genehmigt (keine Änderungen)

    Note over Bund: GET Composition?status=final
    Bund->>KH: Zugriff auf finale Composition

    Note over LGF,SV: $melden
    LGF->>SV: Kosteninformation wird übermittelt

    SV-->>LGF: Empfangsbestätigung – Fall für Moped abgeschlossen

</pre>

<h4>Szenario: Versicherungswechsel</h4>
TBD

<h4>Szenario: Sebstzahler</h4>
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