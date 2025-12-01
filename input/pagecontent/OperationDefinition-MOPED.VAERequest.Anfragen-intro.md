## Wer ruft diese Operation in welchem Zusammenhang auf?

Die Operation wird vom Akteur Krankenhaus (KH) aufgerufen. Die Versichertenanspruchserklärung $anfragen Operation wird aufgerufen, um die Versichertenanspruchserklärung-Anfrage an die SV anzustoßen. Diese Operation ist irrelevant für Selbstzahler (-> wenn es keine zuständige SV gibt darf die Operation $anfragen nicht ausgeführt werden). Diese Operation dient außerdem dazu, eine Verlängerung für eine bereits positiv von der SV bestätigte Versichertenanspruchserklärung zu beantragen.

## Voraussetzungen für den Aufruf

* TBD

## Detaillierte Business-Logik

1. Der MopedVAERequest wird lt. Regeln validiert und erstellt
  * *MopedVAERequest.patient* mit Composition.subject befüllen
  * *MopedVAERequest.insurance.coverage* mit *MopedComposition.section:Coverages.entry* befüllen
  * *MopedVAERequest.provider* mit *MopedComposition.section:zustaendigesKH* befüllen
  * *MopedVAERequest.encounter* mit *MopedComposition.encounter* befüllen
2. Der MopedVAERequest wird in der Composition.section:VAERequests eingefügt
3. Falls es bereits einen aktiven VAERequest gibt, und dieser nicht in Claim.related.claim referenziert wird (dies muss rekursiv für alle related claims überprüft werden) so muss dieser auf den status cancelled gesetzt werden.

## Annahmen an das BeS
* Es wurde vorab geprüft, ob das `system` des identifiers in Composition.encounter.identifer dem GDA entspricht, der die Operation aufruft. Somit ist sichergestellt, dass nur Kostenübernahmen für eigene Fälle angefragt werden können.
* *MopedVAERequest.provider* muss gleichzeitig die gleiche Organisation sein, die lt. Token die Operation aufgerufen hat.
