Extension:    AddItemCategory
Id:           moped-ext-AddItemCategory
Title:        "AddItemCategory" 
Description:  "Benefit classification"
Context: ClaimResponse

* value[x] 0..1
* value[x] only CodeableConcept
* value[x] from MopedClaimItemCategoryVS (required)