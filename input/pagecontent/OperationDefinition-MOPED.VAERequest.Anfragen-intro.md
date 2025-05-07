## Wer ruft diese Operation in welchem Zusammenhang auf?

Die Operation wird vom Akteur Krankenhaus (KH) aufgerufen. Die Versichertenanspruchserklärung $anfragen Operation wird aufgerufen, um die Versichertenanspruchserklärung-Anfrage an die SV anzustoßen. Diese Operation ist irrelevant für Selbstzahler (das ist wichtig für künftige weiterentwicklung - wenn im Account auf eine Coverage-Ressource für Selbstzahler referenziert wird, darf die Operation $anfragen nicht ausgeführt werden).

## Voraussetzungen für den Aufruf

* Account-Status: : `Aufnahme freigegeben`

## Detaillierte Business-Logik

1. Suche des MopedEncounter: Der MopedEncounter mit der jeweiligen *aufnahmezahl* lt. Operation-Parameter wird gesucht
2. Suche aller MopedTransferEncounter die *partOf* den MopedEncounter aus Schritt 1 referenzieren
3. Suchen des MopedAccounts: Die Referenz des *MopedEncounter.account* aus Schritt 1.
4. Erstellung des MopedVAERequest: 
  * a. *MopedVAERequest.status* mit 'active'
  * b. *MopedVAERequest.type* mit 'institutional'
  * c. *MopedVAERequest.use* mit 'preauthorization'
  * d. *MopedVAERequest.Verlaengerungstage* mit *verlaengerungstage* lt. Operation-Parameter befüllen
  * e. *MopedVAERequest.created* mit dem aktuellem Zeitpunkt befüllen
  * f. *MopedVAERequest.Sonderklasse* mit *sonderklasse* lt. Operation-Parameter befüllen
  * g. *MopedVAERequest.patient* mit *MopedAccount.subject* befüllen
  * h. *MopedVAERequest.insurance.coverage* mit *MopedAccount.coverage.coverage* befüllen
  * i. *MopedVAERequest.provider* mit *MopedAccount.owner* befüllen
  * j. *MopedVAERequest.insurer* mit einer Referenz auf jene Organization befüllen, deren *Organization.identifier* dem Identifier *versicherer* lt. Operation-Parameter entspricht
  * k. *MopedVAERequest.encounter* mit allen gefundenen Encountern aus Schritt 1 und 2 befüllen.
  * l. *MopedVAERequest.supportingInfo[VerdachtFremdverschulden].valueBoolean* lt. Operation-Parameter befüllen
  * m. *MopedVAERequest.accident.VerdachtArbeitsSchuelerunfall* lt. Operation-Parameter befüllen
5. POSTen des neu erstellten MopedVAERequest

## Validierung / Fehlerbehandlung
* *Nur POC: MopedAccount.coverage* darf nur eine Versicherung gelistet haben
* *MopedVAERequest.patient* muss mit *Coverage.beneficiary* mit der Coverage aus Schritt 3h übereinstimmen
* *MopedVAERequest.insurer* muss mit *Coverage.insurer* mit der Coverage aus aus Schritt 3h übereinstimmen
* *MopedVAERequest.provider* muss gleichzeitig die gleiche Organisation sein, die lt. Token die Operation aufgerufen hat.

## Weitere Hinweise

* Hinweis 1: Nach dieser Operation findet lt. Soll-Prozess kein Update des Status *MopedAccount.workflowStatus* statt.

## Annahmen an das BeS
* Es wurde vorab geprüft, ob das `system` des Parameters `aufnahmezahl` dem GDA entspricht, der die Operation aufruft. Somit ist sichergestellt, dass nur Kostenübernahmen für eigene Fälle angefragt werden können.
