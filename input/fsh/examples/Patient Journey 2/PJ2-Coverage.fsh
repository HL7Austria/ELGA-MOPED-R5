Instance: PJ2Coverage
InstanceOf: MopedCoverage
Description: "Hackathon Patient Journey 2 Beispiel: Coverage"
Usage: #example
* meta.profile = "https://elga.moped.at/StructureDefinition/MopedCoverage"
* identifier[+].value = "FJK5MCDPMRCY"
* identifier[=].system = "urn:oid:1.2.40.0.10.1.4.3.9.1"
* identifier[=].assigner.reference = "Organization?identifier=urn:ietf:rfc:3986|urn:oid:1.3.6.1.4.1.36124.5.427"
* status = #active
* kind = #insurance
* beneficiary.reference = "Patient?identifier=urn:oid:1.2.40.0.10.1.4.3.1|324200063"
* subscriber.reference = "Patient?identifier=urn:oid:1.2.40.0.10.1.4.3.1|324200063"
* insurer.reference = "Organization?identifier=http://svc.co.at/CodeSystem/ecard-svt-cs|14"
* class[Versichertenkategorien].type.coding = http://terminology.hl7.org/CodeSystem/coverage-class#group
* class[Versichertenkategorien].value.system = "http://svc.co.at/CodeSystem/ecard-versichertenkategorie-cs"
* class[Versichertenkategorien].value.value = "01"
* class[Versichertenkategorien].extension[CoverageClassValueCode].valueCodeableConcept.coding = http://svc.co.at/CodeSystem/ecard-versichertenkategorie-cs#01
