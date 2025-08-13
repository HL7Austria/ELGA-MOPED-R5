## Wer ruft diese Operation in welchem Zusammenhang auf?

Die Operation wird vom Akteur Krankenhaus (KH) aufgerufen. Die $update Operation wird aufgerufen, wenn Informationen zum Fall aktualisiert,neu eingebracht oder gelöscht werden sollen.

## Voraussetzungen für den Aufruf
* Die Composition laut *compositionID* Parameter existiert

## Detaillierte Business-Logik

1. Suche der Composition: Die Composition mit der jeweiligen *compositionID* lt. Operation-Parameter wird gesucht
2. Die Ressourcen werden laut Parameter *Update* Bundle eingespielt/gelöscht/aktualisiert. Für alle Änderungen muss sichergestellt werden, dass keine Felder aktualisiert werden die explizit als immutable deklariert wurden. Wird versucht so ein Feld zu ändern dann muss die Operation fehlschlagen (z.b. die SVNR ändern). -> TBD Verweis auf die Liste der immutable-Felder
4. Je nach HTTP-Methode muss unterschiedlich mit den Referenzen in der Composition umgegangen werden. Neu eingebrachte Ressourcen müssen in die dem Profil entsprechende Section der Composition eingefügt werden. Gelöschte Ressourcen müssen aus der jeweiligen Composition Section entfernt werden. Bei Ressourcen die nur aktualisiert werden, muss in der Composition nichts verändert werden. Zusätzlich müssen je nach Bundle entry folgende Dinge beachtet werden:
    * Aufenthalt, Patient: Encounter und Patient werden nicht in eine Section sondern in Composition.encounter und Composition.subject eingefügt
    * Leistungen, Observations, Fragebögen, Communication, CommunicationRequest: keine Besonderheiten
    * Verlegungen: Bei einem insert/update/delete von Verlegungen müssen folgende Anzahlen neu berechnet werden:
        - Anzahl Verlegungen: Composition.extension:AnzahlVerlegungen wird ermittelt durch die Gesamtanzahl der TransferEncounter
        - AnzahlBeurlaubungen: Wird ermittelt durch die Anzahl der TransferEncounter mit dem Funktionscode `10000000`
    * Diagnosen: 
        - Existiert nach dem Ausführen des Transaction Bundles keine Hauptdiagnose mehr dann muss Composition.encounter auf den status = discharged gesetzt werden. Wird die Hauptdiagnose aktualisiert und existiert weiterhin so ist dies nicht notwendig.
        - Wird eine Haupt-, oder Nebendiagnose aktualisiert so muss falls ein aktiver LKFRequest existiert dessen Status auf cancelled gesetzt werden, da sich dadurch die LKF Punkte ändern und der alte Claim nicht mehr valide ist. Das KH muss daraufhin erneut $abrechnen.
    * Coverage + Hauptversicherter: Beim Einbringen einer neuen Coverage muss die alte Coverage gelöscht und aus der Composition entfernt werden. Zusätzlich muss der Hauptversicherte (falls vorhanden) gelöscht und aus der Composition entfernt und ggf. durch den neuen Hauptversicherten ersetzt werden. Die Referenz auf die zuständige SV muss ebenfalls entfernt werden und durch den Coverage.insurer der neuen Coverage ersetzt werden sofern es sich nicht um eine Selbstzahlercoverage handelt. Falls ein aktiver VAERequest existiert, muss dessen Status auf cancelled gesetzt werden.
    * Überweisende Organization: 
    Die Referenz auf die Überweisende Organisation wird als einzige nicht direkt auf oberster Ebene in die Composition eingefügt. Dies dient nur dem Anlegen von Überweisenden Organisationen aus dem Ausland, sodass diese im Encounter als Encounter.admission.origin referenziert werden können.


## Annahmen an das BeS
* Es wurde vorab geprüft, ob das `system` des identifiers in Composition.encounter.identifer dem GDA entspricht, der die Operation aufruft. Somit ist sichergestellt, dass nur eigene Fälle verändert werden können.
