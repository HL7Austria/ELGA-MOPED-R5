## Wer ruft diese Operation in welchem Zusammenhang auf?

Die Operation wird vom Akteur Krankenhaus (KH) aufgerufen. Die $entlassen Operation wird aufgerufen, wenn ein(e) Patient*in aus dem Krankenhaus entlassen wurde.

## Voraussetzungen für den Aufruf

* MopedEncounter existiert und besitzt den Status *in-progress* oder *discharged* (wenn es bereits eine Entlassung Aviso gibt)

## Detaillierte Business-Logik

1. Die Operation wird an $update delegiert und nach der dort definierten Logik ausgeführt.

## Annahmen an das BeS
* Es wurde vorab geprüft, ob das `system` des identifiers in Composition.encounter.identifer dem GDA entspricht, der die Operation aufruft. Somit ist sichergestellt, dass nur eigene Fälle verändert werden können.

