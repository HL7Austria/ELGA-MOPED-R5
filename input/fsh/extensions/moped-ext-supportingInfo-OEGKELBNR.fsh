Extension: MopedSupportingInfoOEGKELBNR
Title: "Supporting Info Extension for ClaimResponse - OEGKELBNR Slice"
Description: "Additional information codes regarding exceptions, special considerations, the condition, situation, prior or concurrent issues"
Context: ClaimResponse
* extension contains
    sequence 1..1 and
    category 1..1 and
    code 0..1 and
    timing 0..1 and
    value 1..1 and
    reason 0..1
* extension[sequence] ^short = "Information instance identifier"
* extension[sequence].value[x] 1..
* extension[sequence].value[x] only positiveInt
* extension[category] ^short = "Classification of the supplied information"
* extension[category].value[x] 1..
* extension[category].value[x] only CodeableConcept
* extension[category].value[x] from ClaimSupportingInformationCategoryVS (required)
* extension[category].valueCodeableConcept.coding = ClaimSupportingInformationCategoryCS#OEGKELBNR
* extension[code] ^short = "Type of information"
* extension[code].value[x] 1..
* extension[code].value[x] only CodeableConcept
* extension[timing] ^short = "When it occurred"
* extension[timing].value[x] 1..
* extension[timing].value[x] only date or Period
* extension[value] ^short = "Data to be provided"
* extension[value].value[x] 1..
* extension[value].value[x] only string
* extension[reason] ^short = "Explanation for the information"
* extension[reason].value[x] 1..
* extension[reason].value[x] only CodeableConcept