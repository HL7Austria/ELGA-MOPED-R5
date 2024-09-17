Extension: KostenanteilbefreitExtension
Id: ecard-anspruch-kostenanteilbefreit
Title: "Kostenanteilbefreit laut Versicherungsanspruch"
Description: """Kostenanteilbefreiung für den Patienten, die direkt an den Anspruch geknüpft ist. Kostenanteile sind 
entweder laut Gesetz vorgegeben (z.B. Rezeptgebühr) oder sie sind in der Satzung des jeweiligen KV-Trägers 
verankert und werden meistens errechnet (z.B. für Heilbehelfe und Hilfsmittel)."""
Context: SVCCoverage
* ^version = "0.1.0"
* ^status = #draft
* ^date = "2023-09-06T21:44:25+02:00"
* . ^short = "Kostenanteilbefreit laut Versicherungsanspruch"
* . ^definition = "Kostenanteilbefreiung für den Patienten, die direkt an den Anspruch geknüpft ist. Kostenanteile sind \r\nentweder laut Gesetz vorgegeben (z.B. Rezeptgebühr) oder sie sind in der Satzung des jeweiligen KV-Trägers \r\nverankert und werden meistens errechnet (z.B. für Heilbehelfe und Hilfsmittel)."
* value[x] only boolean