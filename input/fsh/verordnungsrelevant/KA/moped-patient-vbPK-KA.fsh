Profile: MopedPatientvbPKKA
Parent: MopedBasisPatientvbPK
Title : "MOPED vbPK Patient KA"
Description: "MOPED Profil der Patienten Ressource mit vbPKs - verordnungsrelevant: KA"
* insert MappingHeaderEinfuegen()
* extension[citizenship] 1..1
* birthDate 1..1
* gender 1..1
* identifier 3..3
* identifier[vbPKGH] 1..1
* identifier[vbPKAS] 1..1
* identifier[vbPKSV] 1..1
* address 1..1
* address.extension[municipalityCode] 0..1
* address.country 1..1
* address.postalCode 0..1

