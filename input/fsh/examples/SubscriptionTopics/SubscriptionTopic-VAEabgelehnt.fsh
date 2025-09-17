Instance: vaeAbgelehnt
InstanceOf: SubscriptionTopic
Title: "Subscription Topic VAE abgelehnt"
Description: "SubscriptionTopic für das KH, um bei abgelehnten VAEs benachrichtigt zu werden."
Usage: #example
* url = "https://elga.moped.at/SubscriptionTopic/vaeAbgelehnt"
* name = "VAEabgelehnt"
* status = #active
* resourceTrigger[+].resource = Canonical(MopedVAEResponse)
* resourceTrigger[=].description = "Erstellen einer VAEResponse mit Ablehnung"
* resourceTrigger[=].supportedInteraction = #create
* resourceTrigger[=].queryCriteria.current = "TBD" //decision != 00 and decision != 19
* canFilterBy[+].resource = Canonical(MopedVAEResponse)
* canFilterBy[=].filterParameter = "requestor" //to be able to filter and only receive one's own notifications
* notificationShape[+].resource = Canonical(MopedMasterComposition)
* notificationShape[=].include[+] = "Composition:id"
* notificationShape[+].resource = Canonical(MopedVAEResponse)
* notificationShape[=].include[+] = "ClaimResponse:requestor"


