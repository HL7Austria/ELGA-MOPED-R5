Profile: MopedMasterComposition
Parent: MopedComposition
Description: "MOPED Profil der Composition Ressource für die Composition in der sich der gesamte Moped Datensatz aufbaut. Diese unterstütz durch ihre Invarianten eine konsistente Datenhaltung."
Title: "MOPED Master Composition"
* ^experimental = true

* obeys moped-master-entlassungdatum-liegt-nach-aufnahmedatum
* obeys moped-master-patient-auf-genau-einer-station
* obeys moped-master-VAEResponse-nur-wenn-VAERequest
* obeys moped-master-lkfresponse-nur-wenn-lkfrequest
* obeys moped-master-author-ist-gleich-haupt-KH
* obeys moped-master-alle-KH-referenzen-gleich
* obeys moped-master-observations-innerhalb-aufenthaltszeitraum
* obeys moped-master-transferencounter-innerhalb-aufenthaltszeitraum
* obeys moped-master-procedures-innerhalb-aufenthaltszeitraum
* obeys moped-master-conditions-innerhalb-aufenthaltszeitraum
* obeys moped-zustaendige-SV-in-Coverage
* obeys moped-master-hauptversicherter-nur-wenn-versicherung
* obeys moped-master-nur-ein-hauptversicherter
* obeys moped-master-stationszeitraueme-decken-aufenthalt-ab
* obeys moped-master-alle-referenzierten-patienten-identisch
* obeys moped-master-alle-referenzierten-lgfs-identisch
* obeys moped-master-alle-transferencounter-sind-teil-des-hauptencounter
* obeys moped-master-erstes-stationsdatum-gleich-aufnahmedatum
* obeys moped-master-letztes-stationsdatum-gleich-entlassungsdatum
* obeys moped-master-nur-ein-aktiver-transferencounter


Invariant: moped-master-entlassungdatum-liegt-nach-aufnahmedatum
Severity: #error
Description: "Falls es ein Entlassungsdatum gibt, dann muss dieses nach dem Aufnahmedatum liegen"
Expression: ""

Invariant: moped-master-patient-auf-genau-einer-station
Severity: #error
Description: "Der Patient darf zu jedem Zeitpunkt nur auf genau einer Station liegen => Die Zeiträume der Transferencounters dürfen sich nicht überschneiden."
Expression: ""

Invariant: moped-master-VAEResponse-nur-wenn-VAERequest
Severity: #error
Description: "Eine VAE-Response darf nur existieren, wenn auch ein dazugehöriger VAE-Request existiert"
Expression: ""

Invariant: moped-master-lkfresponse-nur-wenn-lkfrequest
Severity: #error
Description: "Eine LKF-Response darf nur existieren, wenn auch ein dazugehöriger LKF-Request existiert"
Expression: ""

Invariant: moped-master-author-ist-gleich-haupt-KH
Severity: #error
Description: "Der Author muss dieselbe Organisation sein wie das zustaendige KH"
Expression: ""

Invariant: moped-master-alle-KH-referenzen-gleich
Severity: #error
Description: "Alle referenzierten Krankenanstalten müssen identisch sein"
Expression: ""

Invariant: moped-master-observations-innerhalb-aufenthaltszeitraum
Severity: #error
Description: "Alle Observations müssen innerhalb des Aufenthaltszeitraums liegen"
Expression: ""

Invariant: moped-master-transferencounter-innerhalb-aufenthaltszeitraum
Severity: #error
Description: "Alle Transfer-Encounters müssen innerhalb des Aufenthaltszeitraums liegen"
Expression: ""

Invariant: moped-master-procedures-innerhalb-aufenthaltszeitraum
Severity: #error
Description: "Alle Procedures müssen innerhalb des Aufenthaltszeitraums liegen"
Expression: ""

Invariant: moped-master-conditions-innerhalb-aufenthaltszeitraum
Severity: #error
Description: "Alle Conditions müssen innerhalb des Aufenthaltszeitraums liegen"
Expression: ""

Invariant: moped-zustaendige-SV-in-Coverage
Severity: #error
Description: "Wenn es eine zuständige Sozialversicherung gibt, muss diese in der Coverage referenziert werden"
Expression: ""

Invariant: moped-master-hauptversicherter-nur-wenn-versicherung
Severity: #error
Description: "Ein Hauptversicherter darf nur angegeben sein, wenn es eine Coverage gibt, die keine Selbstzahlercoverage ist."
Expression: ""

Invariant: moped-master-nur-ein-hauptversicherter
Severity: #error
Description: "Es darf zu jedem Zeitpunkt maximal einen Hauptversicherten geben"
Expression: ""

Invariant: moped-master-stationszeitraueme-decken-aufenthalt-ab
Severity: #error
Description: "Die kombinierten Stationszeiträume müssen den gesamten Aufenthaltszeitraum abdecken"
Expression: ""

Invariant: moped-master-alle-referenzierten-patienten-identisch
Severity: #error
Description: "Alle referenzierten Patienten müssen identisch sein"
Expression: ""


Invariant: moped-master-alle-referenzierten-lgfs-identisch
Severity: #error
Description: "Alle referenzierten Landesgesundheitsfonds müssen identisch sein"
Expression: ""

Invariant: moped-master-alle-transferencounter-sind-teil-des-hauptencounter
Severity: #error
Description: "Alle Transfer-Encounters müssen dem HauptEncounter untergeordnet sein"
Expression: ""

Invariant: moped-master-erstes-stationsdatum-gleich-aufnahmedatum
Severity: #error
Description: "Das erste Stationsdatum muss dem Aufnahmedatum entsprechen"
Expression: ""

Invariant: moped-master-letztes-stationsdatum-gleich-entlassungsdatum
Severity: #error
Description: "Das letzte Stationsdatum muss dem Entlassungsdatum entsprechen, sofern es bereits ein Entlassungsdatum gibt"
Expression: ""

Invariant: moped-master-nur-ein-aktiver-transferencounter
Severity: #error
Description: "Es darf immer nur ein aktiver Transfer-Encounter gleichzeitig existieren"
Expression: ""
