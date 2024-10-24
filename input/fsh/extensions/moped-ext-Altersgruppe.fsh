
Extension:    Altersgruppe
Id:           moped-ext-Altersgruppe
Title:        "Altersgruppe" 
Description:  "In Gruppen eingeteilt, wobei vollendete Lebensjahre ausschlaggebend sind."
Context: MOPEDTransferEncounter
* extension contains
    beiZugang 0..1 MS and
    beiEntlassung 0..1 MS
* extension[beiZugang].value[x] 0..1
* extension[beiZugang].value[x] only code
* extension[beiZugang].value[x] from Altersgruppe (required)
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
