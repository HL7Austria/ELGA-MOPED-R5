## Wer ruft diese Operation in welchem Zusammenhang auf?

Die Operation wird vom Akteur Landesgesundheitsfonds (LFG) aufgerufen. Die $melden Operation wird aufgerufen, wenn die Abrechnung inklusive Geldbeträge an die SV übermittelt wird.

## Voraussetzungen für den Aufruf

* Es gibt eine aktive LKFResponse

## Detaillierte Business-Logik

1. Der Claim wird lt. Profil validiert und eingespielt
  * *MopedARKRequest.patient* mit Composition.subject befüllen
  * *MopedARKRequest.insurance.coverage* mit *MopedComposition.section:Coverages.entry* befüllen
  * *MopedARKRequest.provider* mit *MopedComposition.section:zustaendigesKH* befüllen
  * *MopedARKRequest.insurer* mit *MopedComposition.section:zustaendigeSV* befüllen
  * *MopedARKRequest.encounter* mit *MopedComposition.encounter* befüllen
  * *MopedARKRequest.related.claim* mit dem aktiven Request aus *MopedComposition.section:LKFRequest* befüllen
2. Falls es in der *Composition.section:ARKRequests* bereits einen Claim mit dem status `active` gibt so wird der status zu `cancelled` geändert.


## Validierung / Fehlerbehandlung
Die Punkte des ARKRequest und des referenzierten *MopedARKRequest.related.claim* (LKFRequest des KH mit den gemeldeten Punkten) müssen übereinstimmen

## Weitere Hinweise


## Annahmen an das BeS
* Es wurde vorab geprüft, ob der Einbringer auch dem LGF entspricht, der zuständig ist lt. Composition.section:zustaendigerLGF.

