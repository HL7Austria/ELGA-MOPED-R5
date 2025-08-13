## Wer ruft diese Operation in welchem Zusammenhang auf?

Die Operation wird vom Akteur Sozialversicherung (SV) aufgerufen. Die $antworten Operation wird aufgerufen, wenn der MopedVAERequest eines Krankenhauses oder der MopedARKRequest eines LGF beantwortet wird. Die Operation kann außerdem verwendet werden, um generische Kommunikation zu einem Fall einzubringen. 

## Voraussetzungen für den Aufruf

* TBD

## Detaillierte Business-Logik

1. Die Ressourcen werden lt. *Antwort*-Bundle erstellt und gegen die Profile validiert.
2. Alte Requests canceln
- Beim Einbringen einer VAEREsponse:
  - Falls es eine aktive VAEResponse in der Composition.section:VAEResponses gibt so wird der status auf *cancelled* gesetzt. Die neue VAEResponse wird in die Section eingefügt und ist ab jetzt die gültige VAEResponse.
- Beim Einbringen einer ARKResponse:
  - Falls es eine aktive ARKResponse in der Composition.section:ARKResponses gibt so wird der status auf *cancelled* gesetzt. Die neue ARKResponse wird in die Section eingefügt und ist ab jetzt die gültige ARKResponse.
- ARKStatusUpdates, Communications und CommunicationResponses werden in die jeweiligen Sections eingefügt.


## Annahmen an das BeS
* Es wurde vorab geprüft, ob *MopedVAEResponse.insurance* oder *MopedARKResponse.insurance* auch der SV entspricht, die die Operation aufruft. Somit ist sichergestellt, dass jede SV nur eigene MopedARK/VAERequests beantworten kann.
