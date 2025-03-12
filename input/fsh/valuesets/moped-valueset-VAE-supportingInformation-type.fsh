CodeSystem: VAESupportingInformationTypesCS
Title: "MOPED VAESupportingInformationTypes"
Description: "Arten von zusätzlichen Informationen in der VAE"
* ^status = #active
* ^experimental = true
* ^caseSensitive = true
* #KLAS "Allgemeine Gebührenklasse/Sonderklasse"
* #VERDAU "Verdacht auf Arbeits-/Schülerunfall"
* #FREVER "Fremdversschluden"

ValueSet: VAESupportingInformationTypesVS
Title: "MOPED VAESupportingInformationTypes"
Description: "Arten von zusätzlichen Informationen in der VAE"
* ^experimental = true
* include codes from system VAESupportingInformationTypesCS
