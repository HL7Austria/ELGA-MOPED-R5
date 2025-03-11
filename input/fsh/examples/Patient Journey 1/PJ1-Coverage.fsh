Instance: PJ1Coverage
InstanceOf: MopedCoverage
Description: "Hackathon Patient Journey 1 Beispiel: Coverage"
Usage: #example
* meta.profile = "https://elga.moped.at/StructureDefinition/MopedCoverage"
* identifier[+].value = "XB4G37PFN9FJ"
* identifier[=].system = "urn:oid:1.2.40.0.10.1.4.3.9.1"
* identifier[=].assigner = Reference(OrganizationHerzJesuKrankenhaus)
* status = #active
* kind = #insurance
* beneficiary = Reference(PJ1Patient)
* subscriber = Reference(PJ1Patient)
* insurer = Reference(oegk-wien)
* class[+].type.coding = http://terminology.hl7.org/CodeSystem/coverage-class#group
* class[=].value.system = "http://svc.co.at/CodeSystem/ecard-versichertenkategorie-cs"
* class[=].value.value = "01"
