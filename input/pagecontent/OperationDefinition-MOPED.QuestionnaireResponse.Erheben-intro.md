## Wer ruft diese Operation in welchem Zusammenhang auf?

Die Operation wird vom Akteur Krankenhaus (KH) aufgerufen. Die $erheben Operation wird aufgerufen, wenn ein Fragebogen für einen bestimmten Fall eingemeldet wird.

## Voraussetzungen für den Aufruf
* Die Composition laut *compositionID* Parameter existiert

## Detaillierte Business-Logik

1. Suche der Composition: Die Composition mit der jeweiligen *compositionID* lt. Operation-Parameter wird gesucht
2. Die QuestionnaireResponse aus dem Parameter *fragebogen* wird eingespielt und gegen den darin verlinkten Questionnaire validiert.
3. Die QuestionnaireResponse wird auf Basis der QuestionnaireResponse.extension:GrundfuerFragebogen in die jeweils zugehörige Composition.section eingefügt (siehe Hinweis 1)

## Validierung
* Es muss überprüft werden, ob der Parameter *aufnahmezahl* mit dem Encounter.identifier:Aufnahmezahl der Composition aus Schritt 1 übereinstimmt.

## Weitere Hinweise
* Hinweis 1: Mapping vom GrundfuerFragebogen zu den Composition sections
    - #IntensivAufnahme -> Composition.section:SAPS-3
    - #IntensivTaeglich -> Composition.section:TISS-A
    - alle anderen Gründe -> Composition.section:weitereFrageboegen

## Annahmen an das BeS
* Es wurde vorab geprüft, ob das `system` des Parameters `aufnahmezahl` dem GDA entspricht, der die Operation aufruft. Somit ist sichergestellt, dass nur eigene Fälle verändert werden können.
