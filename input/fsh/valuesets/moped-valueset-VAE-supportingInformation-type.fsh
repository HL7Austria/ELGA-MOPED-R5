CodeSystem: ClaimSupportingInformationTypesCS
Title: "MOPED VAESupportingInformationTypes"
Description: "Arten von zusätzlichen Informationen in der VAE"
* ^status = #active
* ^experimental = true
* ^caseSensitive = true
* #KLAS "Allgemeine Gebührenklasse/Sonderklasse"
* #VERDAU "Verdacht auf Arbeits-/Schülerunfall"
* #FREVER "Fremdversschluden"
* #PLAUS "Plausibilitätskennzeichen"

ValueSet: VAESupportingInformationTypesVS
Title: "MOPED VAESupportingInformationTypes"
Description: "Arten von zusätzlichen Informationen in der VAE"
* ^experimental = true
* https://elga.moped.at/CodeSystem/ClaimSupportingInformationTypesCS#KLAS
* https://elga.moped.at/CodeSystem/ClaimSupportingInformationTypesCS#VERDAU
* https://elga.moped.at/CodeSystem/ClaimSupportingInformationTypesCS#FREVER

ValueSet: LKFSupportingInformationTypesVS
Title: "MOPED LKFSupportingInformationTypes"
Description: "Arten von zusätzlichen Informationen im LKFRequest"
* ^experimental = true
* https://elga.moped.at/CodeSystem/ClaimSupportingInformationTypesCS#PLAUS