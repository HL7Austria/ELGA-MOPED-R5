
Extension: VAEStatus
Id: moped-ext-vaestatus
Title: "VAEStatus"
Description: "\"VAEST - Status der Versichertenanspruchserklärung\""
Context: CoverageEligibilityResponse

* value[x] 0..1
* value[x] only Coding
* value[x] from $VAEStatus (required)
* . ^definition =  "\"VAEST - Status der Versichertenanspruchserklärung\""
* . ^short =  "\"VAEST - Status der Versichertenanspruchserklärung\""

