/*
Instance: PJ1AufnahmeBundle
InstanceOf: MopedAufnahmeBundle
Description: "Hackathon Patient Journey 1 Beispiel: AufnahmeBundle"
Usage: #example
* meta.profile = "https://elga.moped.at/StructureDefinition/MopedAufnahmeBundle"
* type = #transaction
* entry[Encounter].resource = PJ1Encounter
* entry[Encounter].request.method = #PUT
* entry[Encounter].request.url = "Encounter?identifier=urn:oid:1.3.6.1.4.1.36124.5.914|1024000028"

* entry[Coverage].resource = PJ1Coverage
* entry[Coverage].request.method = #PUT
* entry[Coverage].request.url = "Coverage?identifier=XB4G37PFN9FJ"

* entry[Patient].resource = PJ1Patient
* entry[Patient].request.method = #PUT
* entry[Patient].request.url = "Patient?identifier=urn:oid:1.2.40.0.10.1.4.3.1|9994210469"
*/