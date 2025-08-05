## Wer ruft diese Operation in welchem Zusammenhang auf?

Die Operation wird vom Akteur Krankenhaus (KH) aufgerufen. Die $aufnehmen Operation wird aufgerufen, wenn ein(e) Patient*in in das Krankenhaus aufgenommen wird.

## Voraussetzungen für den Aufruf

* Es darf keine andere Composition mit der gleichen Kombination aus KH + Aufnahmezahl + Aufnahmedatum geben sonst schlägt die Operation fehl. 

## Detaillierte Business-Logik

1. Es wird ein neue Composition Ressource angelegt. Darin muss das zuständige KH und der zuständige LGF laut Informationen aus dem *falldaten* Bundle befüllt werden:
  * *Composition.section:zustaendigesKH.entry* wird mit der Encounter.serviceProvider Referenz aus dem Encounter befüllt
   * *Composition.section:zustaendigerLGF.entry* wird über die OrganizationAffiliation des Encounter.serviceProvider ermittelt und befüllt
2. Der Rest der Operation wird an $update delegiert und nach der dort definierten Logik ausgeführt.
3. Berechnung der Datensatz-ID:
  * Die Datensatz-ID wird aus der Aufnahmezahl lt. LKF Dokumentation als SHA-256 Hash berechnet und in das entsprechende Identifier-Slice des MopedEncounter eingefügt.


## Annahmen an das BeS
* Es wurde vorab geprüft, ob das `system` des Parameters *falldaten*.encounter.identifier dem GDA entspricht, der die Operation aufruft. Somit ist sichergestellt, dass nur eigene Fälle aufgenommen werden können.