## Wer ruft diese Operation in welchem Zusammenhang auf?

Die Operation wird vom Akteur Krankenhaus (KH) aufgerufen. Die $entlassen Operation wird aufgerufen, wenn ein(e) Patient*in aus dem Krankenhaus entlassen wurde.

## Voraussetzungen für den Aufruf

* Account-Status: `SV verarbeitet`

## Detaillierte Business-Logik

1. Suche des MopedEncounter: Der MopedEncounter mit der jeweiligen *aufnahmezahl* lt. Operation-Parameter wird gesucht
2. Update des MopedEncounters:
  * *MopedEncounter.actualPeriod.end* mit dem *zeitpunkt* lt. Operation-Parameter befüllen
  * *MopedEncounter.status* mit `discharged`  befüllen
  * *MopedEncounter.admission.dischargeDisposition* mit *entlassungsart* lt. Operation-Parameter befüllen
3. Suche des letzten MopedTransferEncounter: Mit *MopedTransferEncounter.partOf* einer Referenz auf den MopedEncounter aus Schritt 1 und den Status *in-progress*
4. Update des letzten MopedTransferEncounter:
  * *MopedTransferEncounter.status* mit `completed` befüllen gesetzt
  * *MopedTransferEncounter.actualPeriod.end* mit *zeitpunkt* lt. Operation-Parameter befüllen
4. Erstellung eines leeren *MopedLKFRequest*:
  * *MopedLKFRequest.status* mit `draft` befüllen
  * *MopedLKFRequest.patient* mit MopedAccount.subject befüllen
5. Änderungen im Account:
  * *MopedAccount.ClaimRef* mit der Referenz aus Schritt 4 befüllen
  * *MopedAccount.WorkflowStatus* mit `Entlassungs Aviso` befüllen, oder, falls der *freigeben*-Operation-Parameter auf `true` gesetzt war und die Validierung erfolgreich war, wird *MopedAccount.WorkflowStatus* mit `Entlassung vollständig` befüllt.
  * *MopedAccount.TageOhneKostenbeitrag* lt. gleichnamigen Opeartion-Parameter befüllen

## Validierung / Fehlerbehandlung

* Wenn der *freigeben*-Parameter auf *true* ist, muss eine Validierung aller Ressourcen (MopedEncounter, Account) erfolgreich sein, oder die Operation schlägt fehl.
* Wenn der *freigeben*-Parameter auf *true* ist, muss Information zu den Tagen ohne Kostenbeitrag vorliegen (i.e. der Operation-Parameter *TageOhneKostenbeitrag* muss befüllt sein)
* Wurden bei der Suche in Schritt 4 mehrere MopedTransferEncounter gefunden, liegen inkonsistente Daten vor und die Operation schlägt fehl.

## Weitere Hinweise

* Hinweis 1: Wurde der Patient direkt aus der Intensivstation entlassen, so müsste auch eine Abgangsart im MopedTransferEncounter gesetzt werden. Dieser Spezialfall wurde noch nicht berücksichtigt.

## Annahmen an das BeS
* Es wurde vorab geprüft, ob das `system` des Parameters `aufnahmezahl` dem GDA entspricht, der die Operation aufruft. Somit ist sichergestellt, dass nur eigene Fälle entlassen werden können.
