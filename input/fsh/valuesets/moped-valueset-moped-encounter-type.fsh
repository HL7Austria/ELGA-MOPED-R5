CodeSystem: MopedEncounterTypesCS
Title: "Arten von Moped Encounter"
Description: "Arten von Moped Encounter"
//for mututally exclusive profiles - important for slice
* ^status = #active
* ^experimental = true
* ^caseSensitive = true
* #ENC "Moped Encounter"
* #TENC "Moped Transfer Encounter"
* #ENC-BUND "Moped Encounter Bund"
* #ENC-LGF "Moped Encounter Bund"
* #ENC-SV "Moped Encounter Bund"

ValueSet: MopedEncounterTypes
Title: "Arten von Moped Encounter"
Description: "Arten von Moped Encounter"
* ^experimental = true
* include codes from system MopedEncounterTypesCS