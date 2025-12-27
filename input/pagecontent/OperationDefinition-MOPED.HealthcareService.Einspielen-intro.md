## Wer ruft diese Operation in welchem Zusammenhang auf?

Die Operation wird vom Akteur Krankenhaus (KH) aufgerufen. Die $einspielen Operation wird aufgerufen, wenn HealthCareServices (=Organisationseinheiten) eingemeldet/aktualisiert werden sollen.

## Voraussetzungen für den Aufruf

* Keine - Unabhängig von den Fällen in Moped

## Detaillierte Business-Logik

1. Die HealthcareServices werden lt. Profil validiert und eingespielt

## Validierung / Fehlerbehandlung

## Weitere Hinweise
Organisationseinheiten können nicht vom KH gelöscht werden. Wird eine Organisationseinheit nicht mehr verwendet so soll HealthcareService.active auf *false* gestzt werden.

## Annahmen an das BeS

* Es wurde vorab geprüft, ob das `system` des HealthcareService.providedBy.resolve().identifier dem GDA entspricht, der die Operation aufruft. Somit ist sichergestellt, dass nur eigene HealthcareServices eingemeldet werden können.

