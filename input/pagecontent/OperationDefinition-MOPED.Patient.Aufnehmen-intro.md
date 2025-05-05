## Wer ruft diese Operation in welchem Zusammenhang auf?

Die Operation wird vom Akteur Krankenhaus (KH) aufgerufen. Die $aufnehmen Operation wird aufgerufen, wenn ein(e) Patient*in in das Krankenhaus aufgenommen wird.

## Voraussetzungen für den Aufruf

* Workflow-Status: n/a (die Ressource MasterComposition bzw. AufnahmeComposition wird erst mit dieser Operation erstellt)

## Detaillierte Business-Logik

Alle Referenzen müssen versionsspezifisch sein.

1. Ressourcen der Transaction erstellen: FHIR Transaction ausführen, wie im Operation-Parameter *falldaten* mitgegeben. Dabei soll geprüft werden, ob bereits ein Patient mit dem jeweiligen identifier (bPK bzw. Sozialversicherungsnummer) vorliegt um Duplikate zu vermeiden. Das gleiche gilt für den Hauptversicherten und die anderen Ressourcen im Bundle, und kann technisch mit Hilfe von conditional References im Input-Bundle realisiert werden.
2. MasterComposition anlegen:
   * *MasterComposition.useContext[Workflow]*: lt. Beschreibung der Werte-Ausprägungen des *freigeben* Parameter (siehe Hinweis 1)
   * *MasterComposition.subject* mit der gleichen Referenz befüllen wie *MopedEncounter.subject*
   * *MasterComposition.section[zustaendigesKH].entry* mit der gleichen Referenz befüllen wie *MopedEncounter.serviceProvider*
   * *MasterComposition.extension[AnzahlVerlegungen]* mit Wert '0' befüllen
   * *MasterComposition.extension[AnzahlBeurlaubungen]* mit Wert '0' befüllen
   * *MasterComposition.section[Coverages].entry* mit der Referenz lt. *falldaten*-Parameter befüllen
   * falls es einen Hauptversicherten gibt: *MasterComposition.section[Hauptversicherter].entry* mit der Referenz lt. *falldaten*-Parameter befüllen
   * *MasterComposition.section[zustaendigerLGF].entry* lt MopedEncounter.serviceProvider OrganizationAffiliation befüllen
   * *MasterComposition.section[Diagnosen].section[Aufnahmediagnosen].entry* *falldaten*-Parameter befüllen

TODO Diagnosen ins Aufnahmebundle mit aufnehmen

TODO relevante Teile von $verlegen evtl. direkt hier durchführen.
3. Durchführung der Operation `$verlegen` für Neufaufnahme:
  * *$verlegen#aufnahmezahl* = *$aufnehmen#aufnahmezahl*
  * *$verlegen#zeitpunkt* = Operation-Parameter falldaten mit dem Pfad *Bundle.Encounter.actualPeriod.start*
  * *$verlegen#funktionscode* = *$aufnehmen#funktionscode*
  * *$verlgegen#funktionssubcode* = *$aufnehmen#funktionssubcode*
  * *$verlegen#physischeAnwesenheit* = *$aufnehmen#physischeAnwesenheit*
  * *$verlegen#neuaufnahme* = `true`) -> evtl direkt ohne den anderen Aufruf??? -> sonst bereits 2 subcompositions nach Aufnahme -> evtl. noch nicht alles bereit für Validierung der verlegen composition

4. Berechnung der Datensatz-ID:
  * Die Datensatz-ID wird aus der Aufnahmezahl lt. LKF Dokumentation als SHA-256 Hash berechnet und in das entsprechende Identifier-Slice des MopedEncounter eingefügt.

5. Die fertige MasterComposition wird kopiert und die Kopie in eine AufnahmeComposition umgewandelt. (TODO was bedeutet das? Profil und evtl. type? austauschen?)

6. Die AufnahmeComposition muss in der Validierung erfolgreich sein ansonsten schlägt die Operation fehl.

7. Die MasterComposition wird ebenfalls validiert - schlägt diese fehl so wird der clearing Mechanismus ausgelöst.

## Validierung / Fehlerbehandlung TBD

* Nur POC: Der Operation-Parameter 'freigeben' muss `true` sein (siehe Hinweis 5)
* Wenn der *freigeben*-Parameter auf *true* ist, muss eine Validierung aller Ressourcen im *falldaten*-Bundle erfolgreich sein, oder die Operation schlägt fehl.
* Es kann nie mehrere MopedEnconuter-Instanzen mit der gleichen Aufnahmezahl geben. Es muss vorab überprüft werden, ob bereits ein Encounter mit dieser Aufnahmezahl vorliegt und die Operation muss in dem Fall fehlschlagen (siehe Hinweis 5).
* Der Status *MopedEncounter.status* muss den Wert 'in-progress' haben
* Der Hauptversicherte lt. MopedAufnahmeBundle[Hauptversicherter] muss, falls er existiert, gleich sein wie MopedAufnahmeBundle[Coverage].subscriber
* Der Patient lt. *MopedAufnahmeBundle[Patient]* muss gleich sein wie *MopedAufnahmeBundle[Coverage].beneficiary* und ggf. auch *MopedAufnahmeBundle[Coverage].subscriber*, falls es keinen Hauptversicherten gibt.
* In MopedAccount.coverage darf nur eine Coverage gelistet sein, ansonsten wird (derzeit) ein Fehler geworfen. Dieser Zustand wäre vor allem möglich, wenn $aufnehmen mehrmals aufgerufen wird, mit unterschiedlichen Coverages. Siehe Hinweis 4.
* Es muss eine MopedOrganizationAbteilung existieren mit dem *funktionscode* lt. Operation Parameter, mit *MopedOrganizationAbteilung.partOf* als Referenz auf die einbringende HL7ATCoreOrganization. Ansonsten schlägt die Operation fehl.

## Weitere Hinweise TBD

* Hinweis 1: Die Werte-Ausprägung des *freigeben* Parameters haben eine Auswirkung auf das Verhalten der Operation:
  * *false*: Die Patientenaufnahme ist noch nicht vollständig und wird lediglich zwischengespeichert. Hier findet keine Validierung der Encounter Ressource statt. Eine Account-Ressource wird erstellt, die den *WorkflowStatus* 'Aufnahme in Arbeit' hat und im Encounter referenziert.
  * *true*: Die Patientenaufnahme ist vollständig und es ist zu erwarten, dass alle nötigen Felder befüllt sind. Schlägt die Validierung der *falldaten* fehl, kann die Operation nicht erfolgreich durchgeführt werden. Ist die Validierung erfolgreich, wird eine im Encounter referenzierte Account-Ressource erstellt bzw. upgedatet, die den *WorkflowStatus* 'Aufnahme freigegeben' hat. 
* Hinweis 2: Es ist nicht nötig, bei dieser Operation den GDA-Identifier als Kontext mitzugeben. Auf den GDA wird im *falldaten*-Bundle als conditional Reference mittels entsprechendem Identifier im MopedEncounter verwiesen. Somit wird auch vermieden, dass Duplikate einer GDA-Organization-Ressource am Server angelegt/verwendet werden.
* Hinweis 3: Im Parameter *falldaten* wird unter Anderem eine Coverage Ressource mitgegeben. Diese Ressource stammt in der Regel aus einer erfolgreichen VDAS-Abfrage. In Zukunft wird Moped auch andere Optionen unterstützen, wie die Verarbeitung von Daten von Selbstzahlern (wofür ein separates Coverage-Profil angelegt wird), oder die Verarbeitung von Fällen mit privater Krankenversicherung (auch hierfür wird ein separates Coverage-Profil angelegt). Im Ersten Schritt liegt der Fokus auf den Standard-Fall, der als Ausgangsbasis eine erfolgreich abgeschlossene VDAS-Abfrage voraussetzt. 
* Hinweis 4: Das Wechseln von Versicherungen, insbesondere durch inkonsistente Coverages bei mehrfachem Ausführen von $aufnehmen wird derzeit nicht unterstützt. Hierfür müssen erst die Prozesse für den Sonderfall des Versicherungswechselns definiert werden.
* Hinweis 5: In einer erweiterten Version wird es möglich sein, diese Operation mehrmals aufzurufen. Das wird konkret zumindest der Fall sein, wenn die Aufnahme 1x in Arbeit ist und 1x freigegeben wird. Im POC soll die Operation nur einmal ausgeführt werden können, direkt mit der Freigabe.

## Annahmen an das BeS
* Es wurde vorab geprüft, ob das `system` des Parameters `falldaten`.encounter.identifier dem GDA entspricht, der die Operation aufruft. Somit ist sichergestellt, dass nur eigene Fälle aufgenommen werden können.

