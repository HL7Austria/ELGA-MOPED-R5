CodeSystem: MopedClaimItemCategoryCS
Title: "Moped Claim Item Category CodeSystem"
Description: "CodeSystem für die Arten von Claim Item Kategorien"
* ^status = #active
* ^experimental = true
* ^caseSensitive = true
* #Punkte "Punkte"
* #Patientenanteil "Patientenanteil"

ValueSet: MopedClaimItemCategoryVS
Title: "Moped Claim Item Category ValueSet"
Description: "ValueSet für die Arten von Claim Item Kategorien"
* ^experimental = true
* include codes from system MopedClaimItemCategoryCS