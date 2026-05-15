Profile: MopedPatientKlarnameSV
Parent: MopedBasisPatientKlarname
Title : "MOPED Patient mit Klarname SV"
Description: "MOPED Profil der Patient Ressource mit Klarname - verordnungsrelevant: SV"
* insert MappingHeaderEinfuegen()
* extension[citizenship] 1..1
* birthDate 1..1
* gender 1..1
* name 1..1
* name.family 1..1
* name.given 1..1
* address 1..1
* address.extension[municipalityCode] 0..1
* address.country 1..1
* address.postalCode 0..1
* address.city 0..1
* address.line.extension[street] 0..1
