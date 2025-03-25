
Extension:    Altersgruppe
Id:           moped-ext-altersgruppe
Title:        "Altersgruppe" 
Description:  "In Gruppen eingeteilt, wobei vollendete Lebensjahre ausschlaggebend sind."
Context: MopedTransferEncounter.admission
* obeys moped-inv-Altersgruppe-1
* extension contains
    beiZugang 0..1 MS and
    beiEntlassung 0..1 MS and
    neugeborenes 0..1 MS
* extension[beiZugang].value[x] 0..1
* extension[beiZugang].value[x] only code
* extension[beiZugang].value[x] from Altersgruppe (required)
* extension[neugeborenes].value[x] 0..1
* extension[neugeborenes].value[x] only boolean
* extension[beiEntlassung].value[x] 0..1
* extension[beiEntlassung].value[x] only code
* extension[beiEntlassung].value[x] from Altersgruppe (required)

* insert DocumentExtension (
    beiZugang,
    "Altersgruppe bei Zugang",
    "Nach dem Alter in Gruppen eingeteilt\, wobei vollendete Lebensjahre ausschlaggebend sind.")
* insert DocumentExtension (
    beiEntlassung, 
    "Altersgruppe bei Entlassung",
    "Nach dem Alter in Gruppen eingeteilt\, wobei vollendete Lebensjahre ausschlaggebend sind.")
* insert DocumentExtension (
    neugeborenes, 
    "neugeborenes",
    "Ein Patient wird als Neugeborenes bezeichnet\, wenn das Alter zum Zugangszeitpunkt auf die Abteilung <28 Tage ist.")

Invariant:    moped-inv-Altersgruppe-1
Description:  "If 'neugeborenes' is true then 'beiZugang' must be age group 0."
Expression:   "$this.extension('neugeborenes') = true implies $this.extension('beiZugang') = '0'"
Severity:     #error