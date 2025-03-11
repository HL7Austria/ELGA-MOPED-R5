Instance: PJ2Coverage
InstanceOf: MopedCoverage
Description: "Hackathon Patient Journey 2 Beispiel: Coverage"
Usage: #example
* meta.profile = "https://elga.moped.at/StructureDefinition/MopedCoverage"
* identifier[+].value = "FJK5MCDPMRCY"
* identifier[=].system = "urn:oid:1.2.40.0.10.1.4.3.9.1"
* identifier[=].assigner = Reference(OrganizationKrankenhausRied)
* status = #active
* kind = #insurance
* beneficiary = Reference(PJ2Patient)
* subscriber = Reference(PJ2Patient)
* insurer = Reference(oegk-oberoesterreich)
* class[+].type.coding = http://terminology.hl7.org/CodeSystem/coverage-class#group
* class[=].value.system = "http://svc.co.at/CodeSystem/ecard-versichertenkategorie-cs"
* class[=].value.value = "01"
