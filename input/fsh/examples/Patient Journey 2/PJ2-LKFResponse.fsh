Instance: PJ2LKFResponse1
InstanceOf: MopedLKFResponse
Description: "Hackathon Patient Journey 2 Beispiel: LKFResponse 1"
Usage: #example
* meta.profile = "https://elga.moped.at/StructureDefinition/MopedLKFResponse"
* status = #active
* type = http://terminology.hl7.org/CodeSystem/claim-type#institutional
* use = http://hl7.org/fhir/claim-use#claim
* patient = Reference(PJ2Patient)
* created = "2025-02-24"
* request = Reference(PJ2LKFRequest1)

* outcome = #complete
* diagnosisRelatedGroup.coding = LKFHauptdiagnosegruppenCS#HDG15.03
* decision = http://hl7.org/fhir/claim-decision#approved
* extension[DiagnoseKnoten].valueCoding = LKFAbrechnungsKnotenCS#C
