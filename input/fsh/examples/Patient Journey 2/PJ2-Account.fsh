Instance: PJ2Account
InstanceOf: MopedAccount
Description: "Hackathon Patient Journey 2 Beispiel: Account"
Usage: #example
* meta.profile = "https://elga.moped.at/StructureDefinition/MopedAccount"
//Anzahl Verlegungen - Positionsnummer
* extension[+].url = "https://elga.moped.at/StructureDefinition/moped-ext-AnzahlVerlegungen"
* extension[=].valueUnsignedInt = 5
//Anzahl Beurlaubungen - Fallnummer
* extension[+].url = "https://elga.moped.at/StructureDefinition/moped-ext-AnzahlBeurlaubungen"
* extension[=].valueUnsignedInt = 1
//Workflowstatus
* extension[+].url = "https://elga.moped.at/StructureDefinition/moped-ext-workflow-status"
* extension[=].valueCoding = WorkflowStatusCS#Endgueltige-Freigabe
//Tage ohne Kostenbeitrag
* extension[+].url = "https://elga.moped.at/StructureDefinition/moped-ext-TageOhneKostenbeitrag"
* extension[=].valueUnsignedInt = 0
//status
* status = #active
* subject = Reference(PJ2Patient)
* owner = Reference(OrganizationKrankenhausRied)
* coverage.coverage = Reference(PJ2Coverage)