Profile: MopedCommunication
Parent: Communication
Title: "MOPED Communication"
Description: """Generischer Kommunikationsmechanismus zu einem Fall in Moped"""

* payload 0..
* payload ^slicing.discriminator[+].type = #type
* payload ^slicing.discriminator[=].path = "content"
* payload ^slicing.rules = #open
* payload contains Anhang 0..
* payload[Anhang].content[x] only Attachment 
* payload[Anhang].content[x] ^short = "Platz für einen Anhang (PDF,...)"

* inResponseTo ^short = "Vorherige Nachricht: Falls auf eine andere Nachricht geantwortet wird soll diese hier referenziert werden."
* about 1..1
* about ^short = "Betreff: Falls sich die Nachricht auf eine spezifische Ressource in der Composition bezieht soll diese hier referenziert werden, ansonsten wird hier die Composition referenziert."
* sender 1..1
* sender ^short = "Absender"
* recipient 1..1
* recipient ^short  = "Empfänger: Nur der hier genannte Empfänger kann diese Nachricht sehen"
* recipient only Reference(SVOrganization or KHOrganization or LGFOrganization) //or BundOrganization)
* extension contains MBDSRelevanz named MBDSRelevanz 1..1
* note.text ^short = "Freitextfeld für eine Nachricht"
//* category 1..1
* category ^short = "Art der Kommunikation: z.b Frage, Dokumentenübermittlung,..."
* encounter 1..1
* encounter only Reference(MopedEncounterA or MopedEncounterS)
* subject 1..1
* subject only Reference(HL7ATCorePatient)



Extension:    MBDSRelevanz
Title:        "MBDS Relevanz" 
Description:  "MOPED Extension, die angibt, welche Kommentare für den MBDS relevant sind."
Context: MopedCommunication
* valueBoolean 1..1