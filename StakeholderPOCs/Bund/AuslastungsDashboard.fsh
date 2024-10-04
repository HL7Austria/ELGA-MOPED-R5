Instance: AuslastungsDashboard
InstanceOf: Library
Usage: #example
* extension.url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-softwaresystem"
* extension.valueReference = Reference(Device/cqf-tooling)
* url = "http://cql/Library/AuslastungsDashboard"
* version = "1.0"
* name = "AuslastungsDashboard"
* type.coding.code = #logic-library
* status = #active
* relatedArtifact[0].type = #depends-on
* relatedArtifact[=].display = "FHIR model information"
* relatedArtifact[=].resource = "http://fhir.org/guides/cqf/common/Library/FHIR-ModelInfo|4.0.1"
* relatedArtifact[+].type = #depends-on
* relatedArtifact[=].display = "Library FHIRHelpers"
* relatedArtifact[=].resource = "http://fhir.org/guides/cqf/us/common/Library/FHIRHelpers|4.1.000"
* parameter[0].name = #Patient
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #Patient
* parameter[+].name = #"Initial Population"
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #boolean
* dataRequirement[0].type = #Patient
* dataRequirement[=].profile = "http://hl7.org/fhir/StructureDefinition/Patient"
* dataRequirement[+].type = #Condition
* dataRequirement[=].profile = "http://hl7.org/fhir/StructureDefinition/Condition"
* dataRequirement[=].mustSupport[0] = "code"
* dataRequirement[=].mustSupport[+] = "code.coding"
* content.contentType = #text/cql
* content.data = "bGlicmFyeSBBdXNsYXN0dW5nc0Rhc2hib2FyZCB2ZXJzaW9uICcxLjAnCgp1c2luZyBGSElSIHZlcnNpb24gJzQuMC4xJwoKaW5jbHVkZSBGSElSSGVscGVycyB2ZXJzaW9uICc0LjAuMScgY2FsbGVkIEZISVJIZWxwZXJzCgpwYXJhbWV0ZXIgIk1lYXN1cmVtZW50IFBlcmlvZCIgZGVmYXVsdCBJbnRlcnZhbFtAMTkyMy0wMS0wMVQwMDowMDowMC4wMDAsIEAyMDIzLTA5LTE2VDAwOjAwOjAwLjAwMF0KCmNvbnRleHQgUGF0aWVudAoKZGVmaW5lICJJbml0aWFsIFBvcHVsYXRpb24iOgogICAgZXhpc3RzKFtFbmNvdW50ZXJdIEUKICAgIHdoZXJlIEUuc3RhdHVzID0gJ2luLXByb2dyZXNzJykK"