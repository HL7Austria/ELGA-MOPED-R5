Extension: RezeptgebbefreitExtension
Id: ecard-anspruch-rezeptgebbefreit
Title: "Rezeptgebührenbefreit laut Versicherungsanspruch"
Description: """Rezeptgebührenbefreiung für den Patienten, die direkt an den Anspruch  geknüpft ist. Der Patient ist von der 
Entrichtung der Rezeptgebühr befreit. Kostenanteile sind entweder laut Gesetz vorgegeben (z.B. Rezeptgebühr) oder sie sind in der Satzung des jeweiligen KV-Trägers 
verankert und werden meistens errechnet (z.B. für Heilbehelfe und Hilfsmittel)."""
Context: MOPEDCoverage
* ^version = "0.1.0"
* ^status = #draft
* ^date = "2023-09-06T21:44:25+02:00"
* . ^short = "Rezeptgebührenbefreit laut Versicherungsanspruch"
* . ^definition = "Rezeptgebührenbefreiung für den Patienten, die direkt an den Anspruch  geknüpft ist. Der Patient ist von der \r\nEntrichtung der Rezeptgebühr befreit. Kostenanteile sind entweder laut Gesetz vorgegeben (z.B. Rezeptgebühr) oder sie sind in der Satzung des jeweiligen KV-Trägers \r\nverankert und werden meistens errechnet (z.B. für Heilbehelfe und Hilfsmittel)."
* value[x] only boolean