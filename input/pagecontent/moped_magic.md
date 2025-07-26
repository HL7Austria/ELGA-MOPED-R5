<script type="module">
  import mermaid from 'https://cdn.jsdelivr.net/npm/mermaid@11/dist/mermaid.esm.min.mjs';
</script>
<div xmlns="http://www.w3.org/1999/xhtml" class="container"> 
   
   <h3> Moped Magic </h3>
<h4>Der Composition Ansatz: Fall-Kontext, Struktur, Integrität</h4>
Moped basiert auf einer zentralen MasterComposition, die den strukturellen Rahmen (Aufbau, Kardinalitäten, Profile) für den gesamten Fall bildet.

Je nach Fortschritt oder Teilprozess werden zusätzliche spezialisierte Compositions erzeugt. Diese enthalten spezifische Inhalte oder Validierungen, die nur in bestimmten Situationen erforderlich sind (z. B. Bei Entlassung muss das Entlassungsdatum befüllt sein, oder beim Abrechnen muss der Patient zumindest eine Abteilung besucht haben, und kann nie gleichzeitig auf mehreren Abteilungen gewesen sein).

Es können mehrere Composition-Ausprägungen gleichzeitig gültig sein, etwa wenn Versicherungsprüfung und Entlassung parallel laufen. Die MasterComposition bleibt dabei immer gültig und dient als Referenz für alle Ableitungen.

<pre class="mermaid">
    graph TD
    Master[MasterComposition]

    subgraph Spezialisierungen
        Aufnahme[AufnahmeComposition<br/><sub><i>Patient & Encounter vorhanden</i></sub>]
        Anfrage[AnfrageComposition<br/><sub><i>Versicherer vorhanden</i></sub>]
        Antwort[AntwortComposition<br/><sub><i></i></sub>]
        Entlassung[EntlassungsComposition<br/><sub><i>Entlassungsdatum und Hauptdiagnose vorhanden</i></sub>]
        Abrechnung[AbrechnungsComposition<br/><sub><i>Patient Entlassen, Diagnosen und Leistungen erfasst</i></sub>]
        Entscheiden[EntscheidenComposition<br/><sub><i></i></sub>]
        Siegel[SiegelComposition<br/><sub><i>Composition.status=final</i></sub>]
    end

    Master --> Aufnahme
    Master --> Anfrage
    Master --> Antwort
    Master --> Entlassung
    Master --> Abrechnung
    Master --> Entscheiden
    Master --> Siegel
</pre>
</div>