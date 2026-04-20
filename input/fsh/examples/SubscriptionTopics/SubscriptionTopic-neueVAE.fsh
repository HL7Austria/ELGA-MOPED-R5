Instance: neueVAE
InstanceOf: SubscriptionTopic
Title: "Subscription Topic neue VAE"
Description: "SubscriptionTopic für die SV, um bei neuen VAEs benachrichtigt zu werden."
Usage: #example
* url = "https://elga.moped.at/SubscriptionTopic/neueVAE"
* name = "neueVAE"
* status = #active
* trigger[+].resource = Canonical(MopedVAERequest)
* trigger[=].description = "Erstellen eines neuen VAERequest"
* trigger[=].supportedInteraction = #create
* trigger[=].canFilterBy[+].resource = Canonical(MopedVAERequest)
* trigger[=].canFilterBy[=].filterParameter = "insurer" //to be able to filter and only receive one's own notifications
//* trigger[=].event =  http://terminology.hl7.org/CodeSystem/v2-0003#E20 //available in R6
* trigger[=].notificationShape[+].resource = Canonical(MopedMasterComposition)
* trigger[=].notificationShape[=].include[+] = "Composition:id"
* trigger[=].notificationShape[+].resource = Canonical(MopedVAERequest)
* trigger[=].notificationShape[=].include[+] = "Claim:insurer"


