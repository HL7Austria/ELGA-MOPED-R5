CodeSystem: MopedPaymentTypesCS
Title: "Arten von Moped Payment Types CS"
Description: "Arten von Moped Payment Types CS"
* ^status = #active
* ^experimental = true
* ^caseSensitive = true
* #statusUpdate "Status Update"



ValueSet: MopedPaymentTypesVS
Title: "Arten von Moped Payment Types VS"
Description: "Arten von Moped Payment Types VS"
* ^experimental = true
* include codes from valueset http://hl7.org/fhir/ValueSet/payment-type
* https://elga.moped.at/CodeSystem/MopedPaymentTypesCS#statusUpdate