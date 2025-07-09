
Extension: VerpflegskostenBeitragsbefreiung
Id: moped-ext-verpflegskostenBeitragsbefreiung
Title: "VerpflegskostenBeitragsbefreiung"
Description: "VKBEFR – Verpflegskosten-Beitragsbefreiung"
Context: MopedVAEResponse

* extension contains
    Befreiung 1..1 MS and
    Zeitraum 1..1 MS
* extension[Befreiung].value[x] 1..1
* extension[Befreiung].value[x] only Coding
* extension[Befreiung].value[x] from VerpflegskostenBeitragsbefreiungVS (required)
* extension[Zeitraum].value[x] 1..1
* extension[Zeitraum].value[x] only Period 

* insert DocumentExtension (
    Befreiung,
    "VKBEFR – Verpflegskosten-Beitragsbefreiung",
    "VKBEFR – Verpflegskosten-Beitragsbefreiung")
* insert DocumentExtension (
    Zeitraum, 
    "Zeitraum in der die Verpflegskostenbeitragsbefreiung gilt",
    "Zeitraum in der die Verpflegskostenbeitragsbefreiung gilt")
