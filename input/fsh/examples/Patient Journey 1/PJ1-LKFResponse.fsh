Instance: PJ1LKFResponse1
InstanceOf: MopedLKFResponse
Description: "Hackathon Patient Journey 1 Beispiel: LKFResponse 1"
Usage: #example
* meta.profile = "https://elga.moped.at/StructureDefinition/MopedLKFResponse"
* status = #active
* type = http://terminology.hl7.org/CodeSystem/claim-type#institutional
* use = http://hl7.org/fhir/claim-use#claim
* patient = Reference(PJ1Patient)
* created = "2024-10-31"
* request = Reference(PJ1LKFRequest1)

* outcome = #complete
* diagnosisRelatedGroup.coding = LKFHauptdiagnosegruppenCS#HDG01.31
* decision = http://hl7.org/fhir/claim-decision#approved
* extension[DiagnoseKnoten].valueCoding = LKFAbrechnungsKnotenCS#D
