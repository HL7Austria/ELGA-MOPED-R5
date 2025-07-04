## Wer ruft diese Operation in welchem Zusammenhang auf?

Die Operation wird vom Akteur Sozialversicherung (SV) aufgerufen. Die $beantworten Operation wird aufgerufen, wenn der MopedVAERequest eines Krankenhauses beantwortet wird.

## Voraussetzungen für den Aufruf

* Ein aktiver VAERequest an die zuständige SV liegt vor

## Detaillierte Business-Logik

1. Die MopedVAEResponse wird lt. Regeln (siehe unten) validiert und erstellt
2. Die MopedVAEResponse wird in der Composition.section:VAEResponses eingefügt


## Annahmen an das BeS
* Es wurde vorab geprüft, ob *MopedVAEResponse.insurance* auch der SV entspricht, die die Operation aufruft. Somit ist sichergestellt, dass jede SV nur eigene MopedVAERequests beantworten kann.
