library AuslastungsDashboard version '1.0'

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1' called FHIRHelpers

parameter "Measurement Period" default Interval[@1923-01-01T00:00:00.000, @2023-09-16T00:00:00.000]

context Patient

define "Initial Population":
    exists([Encounter] E
    where E.status = 'in-progress')
