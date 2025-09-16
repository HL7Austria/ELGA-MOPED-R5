{% include styleheader.md %}

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

    in_progress --> discharged : $update 
    discharged --> completed : Hauptdiagnose dokumentiert und $entlassen

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
