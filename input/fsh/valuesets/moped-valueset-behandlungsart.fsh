CodeSystem: BehandlungsartCS
Title: "Behandlungsart"
Description: "CodeSystem für die Behandlungsart"
* ^status = #active
* ^experimental = true
* ^caseSensitive = true
* #S "Stationär"
* #I "Spitalsambulant"
* #E "Extramural ambulant"

ValueSet: Behandlungsart
Title: "Behandlungsart"
Description: "ValueSet für die Behandlungsart"
* ^experimental = true
* include codes from system BehandlungsartCS
