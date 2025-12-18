/*Instance: PJ1AufnahmeBundle
InstanceOf: MopedAufnehmenBundleKH
Description: "Patient Journey 1 Beispiel: AufnahmeBundle"
Usage: #example
* type = #transaction
* entry[Aufenthalt].fullUrl = "urn:uuid:430bc790-faf1-4e66-b7c6-e801d084c72b"
* entry[Aufenthalt].resource = PJ1Encounter
* entry[Aufenthalt].request.method = #POST
* entry[Aufenthalt].request.url = "Encounter"
* entry[Coverage].fullUrl = "urn:uuid:3b39dc2d-b5a8-40cc-b3e9-68bcac596680"
* entry[Coverage].resource = PJ1Coverage
* entry[Coverage].request.method = #POST
* entry[Coverage].request.url = "Coverage"
* entry[Patient].fullUrl = "urn:uuid:d55740f8-b295-4366-a12f-7f1f14920022"
* entry[Patient].resource = PJ1Patient
* entry[Patient].request.method = #POST
* entry[Patient].request.url = "Patient"
* entry[Diagnosen].fullUrl = "urn:uuid:e2fe5bef-8530-4512-bb2a-1ae5358dd951"
* entry[Diagnosen].resource = PJ1Condition1
* entry[Diagnosen].request.method = #POST
* entry[Diagnosen].request.url = "Condition"
* entry[Verlegungen].fullUrl = "urn:uuid:93fb2e37-24fe-401f-ba7c-3ef5f999b689"
* entry[Verlegungen].resource = PJ1TransferEncounter1
* entry[Verlegungen].request.method = #POST
* entry[Verlegungen].request.url = "Encounter"*/