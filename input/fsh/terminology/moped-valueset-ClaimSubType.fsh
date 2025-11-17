CodeSystem: MopedClaimTypeCS
Title: "Claim Type CodeSystem"
Description: "CodeSystem für die Arten der Claims/ClaimResponses"
* #VAEREQ "VAE Request"
* #VAERESP "VAE Response"
* #LKFREQ "LKF Request"
* #LKFRESP "LKF Response"
* #ARKREQ "ARK Request"
* #ARKRESP "ARK Response"



CodeSystem: MopedClaimSubTypeCS
Title: "Claim Subtype CodeSystem"
Description: "CodeSystem für die Arten der Claims/ClaimResponses"
* ^status = #active
* ^experimental = true
* ^caseSensitive = true
* #A "Ausländerverrechnung"
* #R "Regressangelegenheiten"
* #K "Kosteninformation"
* #VAE "initiale VAE"
* #VAEV "VAE Verlängerung"
* #LKFENDG "LKF Endgültige Meldung"
* #LKFVORL "LKF Vorläufige Meldung"


ValueSet: KostenmeldungARKVS
Title: "Kostenmeldung für (A/R/K)"
Description: "ValueSet für die Art der Kostenmeldung"
* https://elga.moped.at/CodeSystem/MopedClaimSubTypeCS#A
* https://elga.moped.at/CodeSystem/MopedClaimSubTypeCS#R
* https://elga.moped.at/CodeSystem/MopedClaimSubTypeCS#K

ValueSet: MopedVAERequestSubTypeVS
Title: "VAE Claim Subtype ValueSet"
Description: "ValueSet für die Art der Claims"
* ^experimental = true
* https://elga.moped.at/CodeSystem/MopedClaimSubTypeCS#VAE
* https://elga.moped.at/CodeSystem/MopedClaimSubTypeCS#VAEV

ValueSet: MopedLKFRequestSubTypeVS
Title: "LKF ClaimResponse Subtype ValueSet"
Description: "ValueSet für die Art der ClaimResponses"
* ^experimental = true
* https://elga.moped.at/CodeSystem/MopedClaimSubTypeCS#LKFENDG 
* https://elga.moped.at/CodeSystem/MopedClaimSubTypeCS#LKFVORL

