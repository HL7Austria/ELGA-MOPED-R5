Profile: AtMopedClaimVAERequestVerlaengerung
Parent: AtMopedClaimVAERequestBasis
Id: at-moped-claim-vaerequest-verlaengerung
Title : "AT MOPED Claim VAERequest Verlängerungs Profil"
Description: "MOPED Profil der Claim Ressource für die Verlängerung der Versichertenanspruchserklärung (VAE)"
* subType = MopedClaimSubTypeCS#VAEREQV
* insert ShallPopulateObligation(subType, MopedKAActor)
* related ^slicing.rules = #open
* related ^slicing.discriminator.type = #value
* related ^slicing.discriminator.path = "claim.resolve().subType"
* related ^slicing.ordered = false
* related contains InitialeVAE 1..1 and VerlaengerteVAE 0..
* related[InitialeVAE] ^short = "Initiale Anfrage der VAE"
* related[InitialeVAE].relationship =  $RelatedClaimRelationshipType#prior
* related[InitialeVAE].claim only Reference(AtMopedClaimVAERequestInitial)
* insert ShallPopulateObligation(related[InitialeVAE], MopedKAActor)
* related[VerlaengerteVAE] ^short = "Vorherige Verlängerungsanfrage der VAE"
* related[VerlaengerteVAE].relationship = $RelatedClaimRelationshipType#prior
* related[VerlaengerteVAE].claim only Reference(AtMopedClaimVAERequestVerlaengerung)
* insert ShallPopulateObligation(related[VerlaengerteVAE], MopedKAActor)
* billablePeriod.start ^short = "KaOrg: Ereignis-/Unfalldatum (Verlängerungsdatum)"
* insert legacyMapping(billablePeriod.start, KaOrg, [[Ereignis-/Unfalldatum (Verlängerungsdatum)]])
* insert ShallPopulateObligation(billablePeriod.start, MopedKAActor)
* billablePeriod.end 1..1
* billablePeriod.end ^short = "KaOrg: Anzahl der Verlängerungstage"
* insert legacyMapping(billablePeriod.end, KaOrg, [[Anzahl der Verlängerungstage]])
* insert ShallPopulateObligation(billablePeriod.end, MopedKAActor)