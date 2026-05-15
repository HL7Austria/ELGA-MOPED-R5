Profile: MopedPatientKlarnameLGF
Parent: MopedBasisPatientKlarname
Title : "MOPED Patient mit Klarname LGF"
Description: "MOPED Profil der Patient Ressource mit Klarname - verordnungsrelevant: LGF"
* insert MappingHeaderEinfuegen()
* extension[citizenship] 1..1
* birthDate 1..1
* gender 1..1
//name 0..0
* name.family 0..0
* name.given 0..0
* name.extension contains DataAbsentReason named data-absent-reason 1..1
* name.extension[DataAbsentReason].valueCode = $DataAbsentReason#masked (exactly)
* address 1..1
* address.extension[municipalityCode] 0..1
* address.city 0..0
* address.country 1..1
* address.postalCode 0..1
* address.line.extension[street] 0..0
