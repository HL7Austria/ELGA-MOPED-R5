Instance: vaeAbgelehnt
InstanceOf: SubscriptionTopic
Title: "Subscription Topic VAE abgelehnt"
Description: "SubscriptionTopic für die KA, um bei abgelehnten VAEs benachrichtigt zu werden."
Usage: #example
* url = "https://elga.moped.at/SubscriptionTopic/vaeAbgelehnt"
* name = "VAEabgelehnt"
* status = #active
* resourceTrigger[+].resource = Canonical(AtMopedClaimResponseVAEResponseGenerisch)
* resourceTrigger[=].description = "Erstellen einer VAEResponse mit Ablehnung"
* resourceTrigger[=].supportedInteraction = #create
* resourceTrigger[=].queryCriteria.current = "TBD" //decision != 00 and decision != 19
* canFilterBy[+].resource = Canonical(AtMopedClaimResponseVAEResponseGenerisch)
* canFilterBy[=].filterParameter = "requestor" //to be able to filter and only receive one's own notifications
* notificationShape[+].resource = Canonical(AtMopedCompositionBasis)
* notificationShape[=].include[+] = "Composition:id"
* notificationShape[+].resource = Canonical(AtMopedClaimResponseVAEResponseGenerisch)
* notificationShape[=].include[+] = "ClaimResponse:requestor"


