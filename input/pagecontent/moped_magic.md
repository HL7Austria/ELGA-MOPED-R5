<script type="module">
  import mermaid from 'https://cdn.jsdelivr.net/npm/mermaid@11/dist/mermaid.esm.min.mjs';
</script>
<div xmlns="http://www.w3.org/1999/xhtml" class="container"> 

### Der Composition Ansatz: Fall-Kontext, Struktur, Integrität
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

#### Optimistische Versionskontrolle der Composition
In MOPED gilt bei allen fallbezogenen Operationen, die eine `Composition` referenzieren, das Prinzip der Optimistische Versionskontrolle. Jede Operation, die neue Informationen zum Fall ergänzt (z. B. `$update`, `$anfragen`, `$abrechnen`), erfordert die explizite Angabe der zugehörigen versionierten `Composition.id`. Dabei muss immer die vollständige, versionsspezifische ID der Composition mitgegeben werden, z. B.: `Composition/12345/_history/4`. Dies dient der Sicherstellung, dass der aufrufende Client mit dem aktuellsten Stand der Composition arbeitet. So wird verhindert, dass Daten auf veralteter Basis eingefügt oder verändert werden, wie es in verteilten Prozessen (z. B. SV, KH, LGF, Bund) passieren kann. Ist die angegebene Version nicht mehr die aktuellste, wird die Operation mit einem entsprechenden Fehler abgewiesen (i.e. `409 Conflict`). Der Client muss sich in diesem Fall die aktuelle Version der `Composition` abrufen, den Kontext prüfen und die Operation ggf. erneut durchführen. Damit ist der Moped-Datensatz robust gegenüber parallelen Zugriffen und gewährleistet die Konsistenz fallbezogener Informationen. Dieses Prinzip entspricht der gängigen Praxis in REST-Systemen (z. B. `PUT` mit `If-Match` in HTTP), bei der ebenfalls geprüft wird, ob der Client die aktuelle Version kennt, bevor Änderungen übernommen werden. Beispielablauf:

1. Client SV lädt `Composition/12345/_history/4`
2. Währenddessen wird Version 5 durch ein anderes System (Client KH) erzeugt (Hinweis: Dies löst in der Regel eine Notification aus, die den folgenden Konflikt bereits clientseitig vermeiden soll.)
3. Der Client SV sendet eine VAE mit Bezug auf `Composition/12345/_history/4`
4. ➜ Server lehnt ab: Version ist nicht mehr aktuell

> Hinweis: Der Server prüft anhand der `Composition`-Referenz der Operation, ob es sich um die aktuellste Version handelt. Ist dies nicht der Fall, wird die Operation mit einem Fehler abgewiesen.

### Provenance in MOPED: Herkunft, Nachvollziehbarkeit, Transparenz
Die Provenance-Ressource dient der dokumentierten Nachvollziehbarkeit von Änderungen an FHIR-Ressourcen. Sie beschreibt, wer eine Ressource wann, warum und in welchem Kontext erstellt oder verändert hat.

Im Kontext von MOPED wird für jede Version einer `Composition`-Ressource eine eigene `Provenance`-Instanz gespeichert. Dies ermöglicht eine vollständige, versionierte Rückverfolgbarkeit aller Fallinformationen.

#### Provenance bei Composition-Versionen

Zu jeder Version einer `Composition` wird eine entsprechende `Provenance`-Instanz erstellt. Die `Provenance.target` verweist dabei auf die spezifische Version der `Composition`.
<pre class="mermaid">
graph TD
  CompV1[Composition/123/_history/1]
  CompV2[Composition/123/_history/2]
  CompV3[Composition/123/_history/3]

  Prov1[Provenance A]
  Prov2[Provenance B]
  Prov3[Provenance C]

  Prov1 --> CompV1
  Prov2 --> CompV2
  Prov3 --> CompV3
  </pre>

Die Provenance enthält Informationen zu:


| Element            | Beschreibung                                      | Beispiel                           |
|--------------------|--------------------------------------------------|------------------------------------|
| `Provenance.target`           | Referenz zur konkreten Composition-Version       | `Composition/123/_history/2`      |
| `Provenance.recorded`         | Zeitpunkt der Erstellung                         | `2025-07-26T10:43:00+02:00`        |
| `Provenance.activity`         | Operation die die Änderung hervorgerufen hat                      | `$update`        |
| `Provenance.agent.who`        | Auslösendes System oder Person                   | `Device/XDokV5`                |
| `Provenance.agent.onBehalfOf` | Institution im Auftrag                           | `Organization/HJKH` (Krankenhaus)  |#

Ziel ist eine lückenlose und nachvollziehbare Fallhistorie im Zusammenspiel mit den Operationen (`$aufnehmen`, `$entlassen`, `$freigeben`, etc.).

### Referenzmanagement durch MOPED: Konsistenz, Kontext, Kontrolle
MOPED verfolgt ein klares Prinzip bei der Verarbeitung von FHIR-Referenzen:  
- Was aus dem Fallkontext bekannt ist, wird serverseitig ergänzt. 
- Was nur der Client wissen kann, muss explizit angegeben werden.

#### Serverseitige Referenzen
FHIR-Ressourcen enthalten häufig Referenzen auf andere Entitäten – z. B. Patient:in oder die behandelnde Organisation. Sobald eine `Composition` vorliegt (i.e. nach `$aufnehmen`), sind viele dieser Referenzen kontextuell eindeutig bestimmbar. MOPED nutzt diesen Zusammenhang systematisch: Bekannte Referenzen aus der `Composition` (z. B. `subject`, `author`) oder aus dem aufrufenden System (Authentifizierungskontext) werden bei allen nachfolgenden Operationen automatisch ergänzt. Der Client muss diese Felder nicht befüllen – im Gegenteil:
  - Wenn der Client Werte einträgt, werden sie ignoriert oder überschrieben.
  - Um dies explizit zu machen, kann das Feld mit einem [`DataAbsentReason`](https://hl7.org/fhir/extensions/StructureDefinition-data-absent-reason.html) mit dem Code `"unsupported"`.

Die Vorteile dieses Ansatzes:
- Redundanz wird vermieden
- Inkonsistente Datenquellen werden ausgeschlossen
- Die fachliche Verantwortung für Kontextinformationen bleibt bei MOPED

> 🔒 Hinweis: Referenzielle Konsistenz
>
> Um Widersprüche in sensiblen Referenzen (z. B. Patient, Author, Custodian) zu vermeiden, ergänzt MOPED diese kontextsensitiven Informationen ausschließlich serverseitig.
> Angaben vom Client werden ignoriert oder durch bekannte Referenzwerte ersetzt.
> Dies schützt vor unabsichtlicher Manipulation und sichert die Datenintegrität im gesamten Fallkontext.

#### Clientseitige Referenzen
Einige Referenzen sind nicht aus dem Fallkontext ableitbar, da sie entweder eine fachliche Auswahlentscheidung darstellen (z. B. bestimmte Leistungen für die Abrechnung) oder über logische Verknüpfungen referenziert werden (z. B. Ziel-Abteilung über den Funktionscode via `Organization.identifier`)

| Beispiel                          | Typ                                  | Erklärung                                |
|-----------------------------------|---------------------------------------|------------------------------------------|
| `Claim.item.detail.service`       | gezielte Auswahl                     | Nur bestimmte Leistungen werden abgerechnet |
| `MopedTransferEncounter.serviceProvider` | Zielorganisation bei Verlegung     | Referenz via `Organization.identifier`   |

MOPED prüft ggf. ihre Gültigkeit, übernimmt sie aber nicht selbst.