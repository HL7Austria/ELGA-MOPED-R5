Profile: AtMopedClaimVAERequestInitial
Parent: AtMopedClaimVAERequestBasis
Id: at-moped-claim-VAE-request-initial
Title : "AT MOPED Claim VAERequest Initiales Profil"
Description: "MOPED Profile der Claim Ressource für die initiale Anfrage der Versichertenanspruchserklärung (VAE)"
* subType = MopedClaimSubTypeCS#VAEREQI
* insert ShallPopulateObligation(subType, MopedKAActor)
* related.claim 0..
* billablePeriod.start ^short = "KaOrg: VAE Beginndatum"
* insert legacyMapping(billablePeriod.start, KaOrg, [[VAE Beginndatum]])
* insert ShallPopulateObligation(billablePeriod.start, MopedKAActor)

