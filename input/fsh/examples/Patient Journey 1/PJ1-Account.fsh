Instance: PJ1Account
InstanceOf: MopedAccount
Description: "Hackathon Patient Journey 1 Beispiel: Account"
Usage: #example
* meta.profile = "https://elga.moped.at/StructureDefinition/MopedAccount"
//Anzahl Verlegungen - Positionsnummer
* extension[+].url = "https://elga.moped.at/StructureDefinition/moped-ext-AnzahlVerlegungen"
* extension[=].valueUnsignedInt = 1
//Anzahl Beurlaubungen - Fallnummer
* extension[+].url = "https://elga.moped.at/StructureDefinition/moped-ext-AnzahlBeurlaubungen"
* extension[=].valueUnsignedInt = 0
//Workflowstatus
* extension[+].url = "https://elga.moped.at/StructureDefinition/moped-ext-workflow-status"
* extension[=].valueCoding = WorkflowStatusCS#Endgueltige-Freigabe
//Tage ohne Kostenbeitrag
* extension[+].url = "https://elga.moped.at/StructureDefinition/moped-ext-TageOhneKostenbeitrag"
* extension[=].valueUnsignedInt = 0
//status
* status = #active
* subject = Reference(PJ1Patient)
* owner = Reference(OrganizationHerzJesuKrankenhaus)
* coverage.coverage = Reference(PJ1Coverage)