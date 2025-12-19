Profile: MopedVAERequestVerlaengerung
Parent: MopedVAERequest
Title : "MOPED VAERequest für die Verlängerung der VAE"
Description: "MOPED Profil für die Verlängerung der Versichertenanspruchserklärung (VAE)"
* subType = MopedClaimSubTypeCS#VAEREQV
* insert ShallPopulateObligation(subType, MopedKHActor)
* related ^slicing.rules = #open
* related ^slicing.discriminator.type = #value
* related ^slicing.discriminator.path = "claim.resolve().subType"
* related ^slicing.ordered = false
* related contains InitialeVAE 1..1 and VerlaengerteVAE 0..
* related[InitialeVAE] ^short = "Initiale Anfrage der VAE"
* related[InitialeVAE].relationship =  http://terminology.hl7.org/CodeSystem/ex-relatedclaimrelationship#prior
* related[InitialeVAE].claim only Reference(MopedVAERequestInitial)
* insert ShallPopulateObligation(related[InitialeVAE], MopedKHActor)
* related[VerlaengerteVAE] ^short = "Vorherige Verlängerungsanfrage der VAE"
* related[VerlaengerteVAE].relationship = http://terminology.hl7.org/CodeSystem/ex-relatedclaimrelationship#prior
* related[VerlaengerteVAE].claim only Reference(MopedVAERequestVerlaengerung)
* insert ShallPopulateObligation(related[VerlaengerteVAE], MopedKHActor)
* billablePeriod.start ^short = "KaOrg: Ereignis-/Unfalldatum (Verlängerungsdatum)"
* insert legacyMapping(billablePeriod.start, KaOrg, [[Ereignis-/Unfalldatum (Verlängerungsdatum)]])
* insert ShallPopulateObligation(billablePeriod.start, MopedKHActor)
* billablePeriod.end 1..1
* billablePeriod.end ^short = "KaOrg: Anzahl der Verlängerungstage"
* insert legacyMapping(billablePeriod.end, KaOrg, [[Anzahl der Verlängerungstage]])
* insert ShallPopulateObligation(billablePeriod.end, MopedKHActor)