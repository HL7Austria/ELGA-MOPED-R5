library HauptwohnsitzPOC version '1.0'

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1' called FHIRHelpers

parameter "Measurement Period" default Interval[@2023-10-07T00:00:00.000, @2024-10-07T00:00:00.000]

context Patient

define "Initial Population":
    exists(from "All Patient Encounters" E, [Organization] O
    where E.period.start in "Measurement Period" and EndsWith(E.serviceProvider.reference.value, O.id) and 'Wien' in O.address.state
    return E)

define "All Patient Encounters":
    [Encounter] E
    where EndsWith(E.subject.reference.value, Patient.id.value)


define "Denominator":
	"Initial Population"

define "Numerator":
	"Initial Population" and not ('Wien' in Patient.address.state.value)