CodeSystem: ClaimSupportingInformationCategoryCS
Title: "MOPED VAESupportingInformationCategory"
Description: "Arten von zusätzlichen Informationen in der VAE"
* ^status = #active
* ^experimental = true
* ^caseSensitive = true
* #KLAS "Allgemeine Gebührenklasse/Sonderklasse"
/* #VERDAU "Verdacht auf Arbeits-/Schülerunfall"*/
* #FREVER "Fremdversschluden"
* #VERLAENG "Verlängerungstage"
* #PLAUS "Plausibilitätskennzeichen"
* #FREMDRE "Rechnungsnummer der zwischenstaatlichen Abrechnung"
* #OEGKELBNR "Forderungsnummer der Österreichischen Gesundheitskasse"
* #VTAGE "Vortageanzahl auf Kostenbeitrag"

ValueSet: ClaimSupportingInformationCategoryVS
Title: "MOPED VAESupportingInformationCategory"
Description: "Arten von zusätzlichen Informationen in der VAE"
* ^experimental = true
* include codes from system ClaimSupportingInformationCategoryCS

ValueSet: VAESupportingInformationCategoryVS
Title: "MOPED VAESupportingInformationCategory"
Description: "Arten von zusätzlichen Informationen in der VAE"
* ^experimental = true
* https://elga.moped.at/CodeSystem/ClaimSupportingInformationCategoryCS#KLAS
* https://elga.moped.at/CodeSystem/ClaimSupportingInformationCategoryCS#FREVER

ValueSet: LKFSupportingInformationCategoryVS
Title: "MOPED LKFSupportingInformationCategory"
Description: "Arten von zusätzlichen Informationen im LKFRequest"
* ^experimental = true
* https://elga.moped.at/CodeSystem/ClaimSupportingInformationCategoryCS#PLAUS