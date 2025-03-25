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
* subject.reference = "Patient?identifier=urn:oid:1.2.40.0.10.1.4.3.1|9994210469"
* owner.reference = "Organization?identifier=urn:ietf:rfc:3986|urn:oid:1.3.6.1.4.1.36124.5.914"
* coverage.coverage.reference = "Coverage?beneficiary.identifier=urn:oid:1.2.40.0.10.1.4.3.1|9994210469"