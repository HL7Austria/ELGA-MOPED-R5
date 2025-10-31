
Extension:    Altersgruppe
Id:           moped-ext-altersgruppe
Title:        "Altersgruppe" 
Description:  "In Gruppen eingeteilt, wobei vollendete Lebensjahre ausschlaggebend sind."
Context: MopedTransferEncounter.admission, MopedEncounter
* obeys moped-inv-Altersgruppe-1
* extension contains
    beiZugang 0..1 MS and
    beiEntlassung 0..1 MS and
    neugeborenes 0..1 MS
* extension[beiZugang].value[x] 0..1
* extension[beiZugang].value[x] only CodeableConcept
* extension[beiZugang].value[x] from AltersgruppeVS (required)
* extension[neugeborenes].value[x] 0..1
* extension[neugeborenes].value[x] only boolean
* extension[beiEntlassung].value[x] 0..1
* extension[beiEntlassung].value[x] only CodeableConcept
* extension[beiEntlassung].value[x] from AltersgruppeVS (required)

* insert DocumentExtension (
    beiZugang,
    "Altersgruppe bei Zugang/Kontakt",
    "Nach dem Alter in Gruppen eingeteilt\, wobei vollendete Lebensjahre ausschlaggebend sind.")
* insert DocumentExtension (
    beiEntlassung, 
    "Altersgruppe bei Entlassung/Kontakt",
    "Nach dem Alter in Gruppen eingeteilt\, wobei vollendete Lebensjahre ausschlaggebend sind.")
* insert DocumentExtension (
    neugeborenes, 
    "Neugeborenes",
    "Ein Patient wird als Neugeborenes bezeichnet\, wenn das Alter zum Zugangszeitpunkt auf die Abteilung <28 Tage ist.")

Invariant:    moped-inv-Altersgruppe-1
Description:  "If 'neugeborenes' is true then 'beiZugang' must be age group 0."
Expression:   "(extension.where(url = 'neugeborenes').exists() and extension.where(url = 'neugeborenes').value = true) implies (extension.where(url = 'beiZugang').value = '0')"
Severity:     #error