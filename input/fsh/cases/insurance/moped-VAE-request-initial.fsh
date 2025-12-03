Profile: MopedVAERequestInitial
Parent: MopedVAERequest
Title : "MOPED VAERequest für die initiale Anfrage der VAE"
Description: "MOPED Profil für die initiale Anfrage der Versichertenanspruchserklärung (VAE)"
* subType = MopedClaimSubTypeCS#VAEREQI
* insert ShallPopulateObligation(subType, MopedKHActor)
* related.claim 0..
* billablePeriod.start ^short = "VAE Beginndatum"
* insert ShallPopulateObligation(billablePeriod.start, MopedKHActor)

