CodeSystem: AbrechnungsRelevanzCS
Title: "Abrechnungsrelevanz der medizinischen Leistung"
Description: "Abrechnungsrelevanz der medizinischen Leistung"
* ^status = #active
* ^experimental = true
* ^caseSensitive = true
* #J "Ja (Die Leistung ist bei der Bepunktung zu berücksichtigen.)"
* #N "Nein (Die Leistung ist bei der Bepunktung nicht zu berücksichtigen.)"
* #K "Nein (Die Leistung ist bei der Bepunktung nicht zu berücksichtigen, wird aber von einem Sozialversicherungsträger vergütet.)"

ValueSet: AbrechnungsRelevanz
Title: "Abrechnungsrelevanz der medizinischen Leistung"
Description: "Abrechnungsrelevanz der medizinischen Leistung"
* ^experimental = true
* include codes from system AbrechnungsRelevanzCS
