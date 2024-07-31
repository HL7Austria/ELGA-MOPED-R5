

Extension: Kostenstelle
Id: moped-ext-Kostenstelle
Title: "Kostenstelle"
Description: "MOPED Extension für akzeptierte Errors und Warnings"
* extension contains
    InterneKostenstellennummer 0..1 and
    InterneKostenstellenbezeichnung 0..1 and
    SpezielleOrganisationsform 0..1 and
    KostenstellenJahr 0..1
* extension[InterneKostenstellennummer].value[x] 0..1
* extension[InterneKostenstellennummer].value[x] only unsignedInt
* extension[InterneKostenstellenbezeichnung].value[x] 0..1
* extension[InterneKostenstellenbezeichnung].value[x] only string
* extension[SpezielleOrganisationsform].value[x] 0..1
* extension[SpezielleOrganisationsform].value[x] only code
* extension[KostenstellenJahr].value[x] 0..1
* extension[KostenstellenJahr].value[x] only Period

* insert DocumentExtension (
    InterneKostenstellennummer,
    "Interne Kostenstellennummer",
    "Das Datenfeld enthält die krankenhausinterne Kostenstellennummer\, sofern diese nicht mit dem Funktionscode ident ist.")
* insert DocumentExtension (
    InterneKostenstellenbezeichnung, 
    "Interne Kostenstellenbezeichnung",
    "Das Datenfeld enthält die krankenhausinterne Bezeichnung - den Namen - der Kostenstelle.")
* insert DocumentExtension (
    SpezielleOrganisationsform,
    "Spezielle Organisationsform",
    "Die spezielle Organisationsform der stationären Versorgung ist im Kostenstellenplan zusätzlich zum Funktionscode mit einer entsprechenden Kennzeichnung zu versehen.")
* insert DocumentExtension (
    KostenstellenJahr,
    "Jahr der Kostenstelle",
    "In diesem Datenfeld ist das Jahr der Gültigkeit der Kostenstelle festzuhalten.")

