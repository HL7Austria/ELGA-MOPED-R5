Profile: MopedHealthcareServiceEinspielenBundle
Parent: Bundle
Title: "MOPED HealthcareService einspielen Bundle"
Description: """Bundle für die Input-Ressourcen beim Einspielen und Aktualisieren von HealthcareServices"""

* type = #transaction
* entry 1..*
* entry.resource only MopedKHOrganisationseinheit
* entry.request.method from HTTPVerbInsertUpdateVS
// TBD method abklären
* entry.request.method ^short = "POST | PUT"