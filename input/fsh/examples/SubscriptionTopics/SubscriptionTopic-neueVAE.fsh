Instance: neueVAE
InstanceOf: SubscriptionTopic
Title: "Subscription Topic neue VAE"
Description: "SubscriptionTopic für die SV, um bei neuen VAEs benachrichtigt zu werden."
Usage: #example
* url = "https://elga.moped.at/SubscriptionTopic/neueVAE"
* name = "neueVAE"
* status = #active
* resourceTrigger[+].resource = Canonical(MopedVAERequest)
* resourceTrigger[=].description = "Erstellen eines neuen VAERequest"
* resourceTrigger[=].supportedInteraction = #create
* canFilterBy[+].resource = Canonical(MopedVAERequest)
* canFilterBy[=].filterParameter = "insurer" //to be able to filter and only receive one's own notifications
//* trigger[=].event =  http://terminology.hl7.org/CodeSystem/v2-0003#E20 //available in R6
* notificationShape[+].resource = Canonical(MopedMasterComposition)
* notificationShape[=].include[+] = "Composition:id"
* notificationShape[+].resource = Canonical(MopedVAERequest)
* notificationShape[=].include[+] = "Claim:insurer"


