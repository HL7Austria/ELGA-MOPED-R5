Extension: FehlerWarnung
Id: moped-ext-fehlerWarnung
Title: "Error/Warning"
Description: "MOPED Extension für akzeptierte Errors und Warnings"
Context: MopedLKFRequest, MopedLKFResponse
* extension contains
    ErrorWert 0..1 MS and
    ErrorCode 0..1 MS and
    ErrorKommentar 0..1 MS
* extension[ErrorWert].value[x] 0..1
* extension[ErrorWert].value[x] only string
* extension[ErrorCode].value[x] 0..1
* extension[ErrorCode].value[x] only Coding 
* extension[ErrorCode].value[x] from EWCodes2025VS
* extension[ErrorKommentar].value[x] 0..1
* extension[ErrorKommentar].value[x] only string

* insert DocumentExtension (
    ErrorWert,
    "Error/Warning - Wert",
    "In dieses Datenfeld ist die Ausprägung des unplausiblen/hinweisbezogenen Wertes einzutragen.")
* insert DocumentExtension (
    ErrorCode, 
    "Error/Warning - Code",
    "In dieses Datenfeld ist der entsprechende Error-/Warning-/Hinweis-Code des unplausiblen/hinweisbezogenen Wertes einzutragen.")
* insert DocumentExtension (
    ErrorKommentar,
    "Error/Warning - Kommentar",
    "In diesem Datenfeld sind die akzeptierten Unplausibilitäten/Hinweise zu begründen.")

