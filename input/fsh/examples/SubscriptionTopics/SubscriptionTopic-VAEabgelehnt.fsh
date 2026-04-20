Instance: vaeAbgelehnt
InstanceOf: SubscriptionTopic
Title: "Subscription Topic VAE abgelehnt"
Description: "SubscriptionTopic für das KH, um bei abgelehnten VAEs benachrichtigt zu werden."
Usage: #example
* url = "https://elga.moped.at/SubscriptionTopic/vaeAbgelehnt"
* name = "VAEabgelehnt"
* status = #active
* trigger[+].resource = Canonical(MopedVAEResponse)
* trigger[=].description = "Erstellen einer VAEResponse mit Ablehnung"
* trigger[=].supportedInteraction = #create
* trigger[=].queryCriteria.current = "TBD" //decision != 00 and decision != 19
* trigger[=].canFilterBy[+].resource = Canonical(MopedVAEResponse)
* trigger[=].canFilterBy[=].filterParameter = "requestor" //to be able to filter and only receive one's own notifications
* trigger[=].notificationShape[+].resource = Canonical(MopedMasterComposition)
* trigger[=].notificationShape[=].include[+] = "Composition:id"
* trigger[=].notificationShape[+].resource = Canonical(MopedVAEResponse)
* trigger[=].notificationShape[=].include[+] = "ClaimResponse:requestor"


