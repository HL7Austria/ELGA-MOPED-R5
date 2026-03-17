## Wer ruft diese Operation in welchem Zusammenhang auf?

Die Operation wird vom Akteur Krankenhaus (KH) aufgerufen. Die $einmelden Operation wird aufgerufen, wenn nicht fallspezifische Questionnaires eingemeldet werden sollen.

## Voraussetzungen für den Aufruf

* Keine - Unabhängig von den Fällen in Moped

## Detaillierte Business-Logik

1. Die QuestionnaireResponses werden lt. Profil validiert und eingespielt

## Validierung / Fehlerbehandlung

## Weitere Hinweise

## Annahmen an das BeS

* Es wurde vorab geprüft, ob das `system` des QuestionnaireResponse.author.resolve().identifier dem GDA entspricht, der die Operation aufruft. Somit ist sichergestellt, dass nur eigene QuestionnaireResponses eingemeldet werden können.

