/*
Instance: PJ2AufnahmeBundle
InstanceOf: MopedAufnahmeBundle
Description: "Hackathon Patient Journey 2 Beispiel: AufnahmeBundle"
Usage: #example
* meta.profile = "https://elga.moped.at/StructureDefinition/MopedAufnahmeBundle"
* type = #transaction
* entry[Encounter].resource = PJ2Encounter
* entry[Encounter].request.method = #PUT
* entry[Encounter].request.url = "Encounter?identifier=urn:oid:1.3.6.1.4.1.36124.5.427|324200063"

* entry[Coverage].resource = PJ2Coverage
* entry[Coverage].request.method = #PUT
* entry[Coverage].request.url = "Coverage?identifier=FJK5MCDPMRCY"

* entry[Patient].resource = PJ2Patient
* entry[Patient].request.method = #PUT
* entry[Patient].request.url = "Patient?identifier=urn:oid:1.2.40.0.10.1.4.3.1|2873111374"

*/