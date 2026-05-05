Profile: MopedPatientvbPKLGF
Parent: MopedBasisPatientvbPK
Title : "MOPED vbPK Patient LGF"
Description: "MOPED Profil der Patienten Ressource mit vbPKs - verordnungsrelevant: LGF"
* insert MappingHeaderEinfuegen()
* extension[citizenship] 1..1
* birthDate 1..1
* gender 1..1
* identifier 3..3
* identifier[vbPKGH] 0..0
* identifier[vbPKAS] 0..0
* identifier[vbPKSV] 0..0
* address 1..1
* address.extension[municipalityCode] 0..1
* address.country 1..1
* address.postalCode 0..1


