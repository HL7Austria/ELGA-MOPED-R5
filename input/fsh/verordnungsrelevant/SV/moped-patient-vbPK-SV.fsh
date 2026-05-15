Profile: MopedPatientvbPKSV
Parent: MopedBasisPatientvbPK
Title : "MOPED vbPK Patient SV"
Description: "MOPED Profil der Patienten Ressource mit vbPKs - verordnungsrelevant: SV"
* insert MappingHeaderEinfuegen()
* extension[citizenship] 1..1
* birthDate 1..1
* gender 1..1
* identifier 3..3
* identifier[vbPKGH] 1..1
* identifier[vbPKAS] 0..0
* identifier[vbPKSV] 1..1
* address 1..1
* address.extension[municipalityCode] 0..1
* address.country 1..1
* address.postalCode 0..1