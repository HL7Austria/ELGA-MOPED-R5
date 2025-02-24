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
* subject.reference = "Patient?identifier=urn:oid:1.2.40.0.10.1.4.3.1|2873111374"
* owner.reference = "Organization?identifier=urn:ietf:rfc:3986|urn:oid:1.3.6.1.4.1.36124.5.427"
* coverage.coverage.reference = "Coverage?identifier=FJK5MCDPMRCY"